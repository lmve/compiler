package Clike.kernel.tokenizer;

import java.util.*;

/**
 * 词法分析类，用于分析给定的文本并识别出其中的tokens，设置每个token的类型于值。
 */
public class Tokenizer {
	// 定义支持的类型关键字
	private static final String[] TYPE = { "int", "char", "float", "void" };
	private static Set<String> typeset;
	private static final String[] KEYWORD = { "if", "while", "for", "do", "else", "return" };
	private static Set<String> keywordset;
	private static final String[] SYMBOL = { "{", "}", "(", ")", ",", ";", "+", "-", "*", "/", "%", "\"", "'", "&", "|",
			"^", "<", ">", "=", "<=", ">=", "!=", "==", "&&", "||", "~", "!", "++", "--" };
	private static Set<String> symbolset;
	// 输入的文本
	private String text;
	// 分析结果，存储识别出的tokens
	private List<Token> tokens;
	// 记录行号
	private List<Integer> lineNumber;
	// 记录错误信息
	private List<Error> errors;

	public Tokenizer() {
		// 初始化各个集合
		typeset = new HashSet<>(Arrays.asList(TYPE));
		keywordset = new HashSet<>(Arrays.asList(KEYWORD));
		symbolset = new HashSet<>(Arrays.asList(SYMBOL));
	}

    /* 对给定的文本进行词法分析。
	* param text 需要进行词法分析的文本。
	*/
	public void analysis(String text) {
		// 初始化结果集合
		tokens = new ArrayList<>();
		lineNumber = new ArrayList<>();
		errors = new ArrayList<>();
		// 去注释
		text = text.replaceAll("//[\\s\\S]*?\\n", "");
		text = text.replaceAll("/\\*(.|\\n)*\\*/", "");

		this.text = text + " ";
		int num = text.length();
		// 记录当前下标
		int index = 0;

		while (index < num) {
			char c = text.charAt(index);
			if (c == '\n') {
				// 记录行号
				lineNumber.add(tokens.size());
			}

			if (Character.isWhitespace(c)) { // 跳过空白符
				index++;
			}
			else if (Character.isUpperCase(c) || Character.isLowerCase(c) || c=='_') { // 开头为字母
				index = handleAlpha(index);
			}
			else if (Character.isDigit(c)) {  // 开头为数字
				index = handleDigit(index);
			}
			// 首先判断其他的符号是否在已定义的符号表中
			else if (symbolset.contains(c + "")) {  // 其他符号
				if (c == '\"') {                    //处理双引号包裹的内容
					int i = index + 1;
					while (i < num && text.charAt(i) != '\"') {
						i++;
					}
					// 如果存在双引号内的字符串，则添加为token
					tokens.add(new Token(Type.SYMBOL, "\""));
					if (index + 1 <= i) {
						tokens.add(new Token(Type.STRING, text.substring(index + 1, i)));
					}
					// 检查是否结束双引号
					if (i < num && text.charAt(i) == '\"') {
						tokens.add(new Token(Type.SYMBOL, "\""));
					} else { 	// 如果未找到结束双引号，添加错误信息
						errors.add(new Error("line " + getLineNumber(index) + " : " + " 缺少 \" "));
					}
					index = i + 1;
				} else if (c == '\'') { // 处理单引号包裹的内容
					index++;
					tokens.add(new Token(Type.SYMBOL, "\'"));
					if (index < num && text.charAt(index) == '\\') {
						tokens.add(new Token(Type.CHAR, text.substring(index, index + 2)));
						index += 2;
					} else if (index < num) {
						tokens.add(new Token(Type.CHAR, text.charAt(index) + ""));
						index += 1;
					}
					// 检查是否结束单引号
					if (index < num && text.charAt(index) == '\'') {
						tokens.add(new Token(Type.SYMBOL, "\'"));
						index++;
					} else {
						// 如果未找到结束单引号，添加错误信息
						errors.add(new Error("line " + getLineNumber(index) + " : " + " 缺少 ' "));
					}
				} else if (index + 1 < num && symbolset.contains(text.substring(index, index + 2))) {
					tokens.add(new Token(Type.SYMBOL, text.substring(index, index + 2)));
					index += 2;
				} else {
					// 处理单个字符符号
					tokens.add(new Token(Type.SYMBOL, c + ""));
					index++;
				}
			} else {
				// 对无法识别的字符，添加错误信息
				errors.add(new Error("line " + getLineNumber(index) + " : " + "无法识别 " + c));
				index++;
			}
		}

		// 添加终止符
		tokens.add(new Token(Type.END, "END"));
	}

	// 开头为字母
	private int handleAlpha(int index) {
		int i = index;
		char c;
		do {
			i++;
			c = text.charAt(i);
		} while (Character.isUpperCase(c) || Character.isLowerCase(c) || Character.isDigit(c) || c=='_');

		String s = text.substring(index, i);

		// 判断 类型名 关键字 标识符
		if (typeset.contains(s)) {
			tokens.add(new Token(Type.TYPE, s));
		} else if (keywordset.contains(s)) {
			tokens.add(new Token(Type.KEYWORD, s));
		} else {
			tokens.add(new Token(Type.IDENTIFIER, s));
		}

		return i;
	}

	// 开头为数字
	private int handleDigit(int index) {
		int i = index;
		char c;
		do {
			i++;
			c = text.charAt(i);
		} while (Character.isDigit(c));

		// 判断 小数 整数
		if (c == '.') {
			do {
				i++;
				c = text.charAt(i);
			} while (Character.isDigit(c));
			String s = text.substring(index, i);
			if (s.charAt(s.length()-1) == '.') {
				errors.add(new Error("line " + getLineNumber(i) + " : " + "数字格式错误"));
			} else {
				tokens.add(new Token(Type.FLOAT, s));
			}
		} else {
			String s = text.substring(index, i);
			tokens.add(new Token(Type.INTEGER, s));
		}

		return i;
	}

	// 返回行号
	public int getLineNumber(int index) {
		for (int i = 0; i < lineNumber.size(); i++) {
			if (lineNumber.get(i) > index) {
				return i + 1;
			}
		}
		return lineNumber.size() + 1;
	}

	public List<Token> getTokens() {
		return tokens;
	}

	public List<Error> getErrors() {
		return errors;
	}
}
