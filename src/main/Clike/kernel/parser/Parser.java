package Clike.kernel.parser;



import javafx.scene.control.TextArea;
import Clike.kernel.analyser.Tree;
import Clike.kernel.tokenizer.Token;
import Clike.kernel.tokenizer.Type;
import Clike.kernel.tokenizer.Tokenizer;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *  LL(1) 语法分析 生成语法树
 */
public class Parser {

	// 存储生产者规则的映射，键为非终结符，值为对应的生产者集合
	private Map<String, Set<Producer>> producerMap;
	// 终结符集合
	private Set<String> terminals;
	// 非终结符集合
	private Set<String> nonterminals;
	// 令牌列表
	private List<Token> tokens;
	// 词法分析器
	private Tokenizer tokenizer;
	// 当前解析的令牌索引
	private int index;
	// 当前解析使用的生产者集合
	private List<Producer> producers;
	// 解析过程中遇到的错误列表
	private List<Error> errors;
	// 解析树的根节点
	private Tree root;
	// 当前处理的节点
	private Tree curNode;

	/**
	 * 构造函数，从指定文件加载语法并初始化解析器状态。
	 *
	 * param file 要加载语法的文件
	 */
	public Parser(File file) {
		// 初始化语法组件
		Grammar grammar = new Grammar(file);
		producerMap = grammar.getProducerMap();
		terminals = grammar.getTerminals();
		nonterminals = grammar.getNonterminals();
	}

	/**
	 * 进行语法分析的函数。
	 * param tokenizer 词法分析器，提供分词后的序列。
	 */
	public void parse(Tokenizer tokenizer) {
		// 初始化词法分析器和token列表
		this.tokenizer = tokenizer;
		this.tokens = tokenizer.getTokens();

		// 初始化产生式列表、索引、根节点和当前节点
		producers = new ArrayList<>();
		index = 0;
		root = new Tree("S", null);
		// 添加根节点地址信息
		root.setAddress(tokenizer.getLineNumber(index));
		curNode = root;

		// 初始化错误列表
		errors = new ArrayList<>();

		// 开始解析过程
		parse("S");
	}


	/**
	 * 解析给定状态的字符串。
	 *
	 * param state 当前解析所处的状态。
	 * return 如果解析成功返回true，否则返回false。
	 */
	private boolean parse(String state) {
		// 获取当前解析的Token
		Token token = tokens.get(index);
		Type tokenType = token.getType();
		String str = token.getValue();
		// 如果Token类型不是关键字或符号，则将其转换为TokenType的字符串表示
		if (!tokenType.equals(Type.KEYWORD) && !tokenType.equals(Type.SYMBOL)) {
			str = tokenType.toString();
		}

		// 根据当前状态获取对应的产生式集合
		Set<Producer> set = producerMap.get(state);
		Producer producer = null;
		// 在产生式集合中查找选择项匹配的产生式
		for (Producer p : set) {
			if (p.getSelect().contains(str)) {
				producer = p;
				break;
			}
		}

		// 如果没有找到匹配的产生式，
		if (producer == null) {
			errors.add(new Error("line " + tokenizer.getLineNumber(index) + " : " + token.getValue() + " 不符合语法规范"));
			return false;
		}

		// 将找到的产生式添加到解析器的产生式列表中
		producers.add(producer);

		// 处理产生式的右部
		List<String> right = producer.getRight();
		for (int i = 0; i < right.size(); i++) {
			Token t = tokens.get(index);
			Type type = t.getType();
			String s = t.getValue();
			// 类似于上面的处理，将Token类型不是关键字或符号的转换为TokenType的字符串表示
			if (!type.equals(Type.KEYWORD) && !type.equals(Type.SYMBOL)) {
				s = type.toString();
			}

			String cur = right.get(i);

			// 为当前的解析节点创建子节点
			Tree son = new Tree(cur, curNode);
			son.setAddress(tokenizer.getLineNumber(index));
			curNode.setSon(son);

			// 终极符判断与处理
			if (terminals.contains(cur)) {
				if (cur.equals("EMPTY")) {
					continue;
				} else if (s.equals(cur)) {
					son.setAttribute("val", t.getValue());
					// 根据Token类型设置节点属性
					if (type.equals(Type.TYPE)) {
						son.setAttribute("type", t.getValue());
					} else if (type.equals(Type.INTEGER)) {
						son.setAttribute("type", "int");
					} else if (type.equals(Type.FLOAT)) {
						son.setAttribute("type", "float");
					} else if (type.equals(Type.CHAR)) {
						son.setAttribute("type", "char");
					} else if (type.equals(Type.STRING)) {
						son.setAttribute("type", "string");
					}
					index++; // 移动到下一个Token
					continue;
				} else {
					errors.add(
							new Error("line " + tokenizer.getLineNumber(index) + " : " + t.getValue() + " 应改为 " + cur));
					return false;
				}
			} else if (nonterminals.contains(cur)) {
				// 对非终极符进行递归解析
				curNode = son;
				boolean flag = parse(cur);
				if (flag) {
					// 对特定的非终极符进行特殊处理
					if (cur.equals("op2") || cur.equals("op1")) {
						curNode.setAttribute("val", curNode.getSon(0).getAttribute("val"));
					}
					curNode = curNode.getFather();
					continue;
				} else {
					return false;
				}
			} else if (cur.equals("END")) {
				// 如果遇到结束标志，则返回true表示解析成功
				return true;
			}
		}

		// 如果处理完所有右部项，则返回true表示解析成功
		return true;
	}


	public Tree getRoot() {
		return root;
	}

	public List<Producer> getProducers() {
		return producers;
	}

	public List<Error> getErrors() {
		return errors;
	}

	public void dump(int indent, TextArea resultTextArea) {

		this.root.dump(indent, resultTextArea);
	}
}
