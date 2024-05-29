package Clike.kernel.analyser;

import java.util.*;


/**
 * 根据语法树进行语义分析
 */
public class Analyser {

	private Map<String, Func> funcsInfoMap; // 函数信息表
	private Map<String, Set<String>> typeMap; // 类型转换表
	private List<Error> errors;
	private Tree root;

	public Analyser() {
		// 初始化类型转换表
		typeMap = new HashMap<>();
		Set<String> set = new HashSet<String>();
		set.add("char");
		set.add("int");
		set.add("float");
		set.add("string");
		typeMap.put("char", new HashSet<>(set));
		typeMap.put("int", new HashSet<>(set));
		typeMap.put("float", new HashSet<>(set));
		typeMap.put("string", new HashSet<>(set));
	}

	public void analyse(Tree root) {
		// 语义分析
		this.root = root;
		funcsInfoMap = new HashMap<>();

//
//		Func printInfo = new Func("void");
//		printInfo.vars.add("arg");
//		printInfo.args.put("arg", new Variable("string"));
//		printInfo.arglist.add("arg");
//		funcsInfoMap.put("print", printInfo);

//		// 内置scan函数
//		Func scanInfo = new Func("void");
//		scanInfo.vars.add("arg");
//		scanInfo.args.put("arg", new Variable("float"));
//		scanInfo.arglist.add("arg");
//		funcsInfoMap.put("scan", scanInfo);

		// 内置 read 函数
		Func readInfo = new Func("int");
		// 无参数
//		readInfo.vars.add("arg");
//		readInfo.args.put("arg", new Variable("int"));
//		readInfo.arglist.add("arg");
		funcsInfoMap.put("read", readInfo);

		// 内置 write 函数, 没有返回值
		Func writeInfo = new Func("void");
		writeInfo.vars.add("arg");
		Variable varInfo = new Variable("string");
		varInfo.setAddress(0);
		writeInfo.args.put("arg", varInfo);
		writeInfo.arglist.add("arg");
		funcsInfoMap.put("write", writeInfo);

		errors = new ArrayList<>();
		setFuncsInfoMap(root); // 设置函数信息
		checkType(); // 检查类型
		checkReturn(); // 检查 return 语句
	}

	private void setFuncsInfoMap(Tree root) {
		if (root.getSons().size() == 1)
			return;
		Tree func = root.getSon(0);
		Tree funcs = root.getSon(1);
		setFuncInfo(func);
		setFuncsInfoMap(funcs);
	}

	/**
	 * 设置函数相关信息
	 * param func
	 */
	private void setFuncInfo(Tree func) {
		// 获取函数类型和ID
		String type = func.getSon(0).getAttribute("type");
		String id = func.getSon(1).getAttribute("val");
		// 获取函数的参数列表和定义列表的树节点
		Tree arglist = func.getSon(3);
		Tree definelist = func.getSon(6);

		// 创建函数信息对象
		Func info = new Func(type);
		info.setPosition(func.getAddress());
		// 检查是否已存在同ID的函数定义，若存在则记录错误信息，否则处理参数列表和定义列表
		if (funcsInfoMap.containsKey(id)) {
			errors.add(new Error("函数 " + id + " 重复定义"));
		} else {
			funcsInfoMap.put(id, info);
			handleArgList(arglist, id, info);
			handleDefinelist(definelist, id, info);
		}
	}

	/**
	 * 处理参数列表    主要是检查参数名是否重复参数类型是否正确
	 * param arglist  参数列表的树节点
	 * param id       函数的唯一标识
	 * param info     包含函数信息的数据结构
	 */
	private void handleArgList(Tree arglist, String id, Func info) {
		if (arglist.getSons().size() == 1)
			return;
		String type = arglist.getSon(0).getAttribute("type");
		String name = arglist.getSon(1).getAttribute("val");
		Tree args = arglist.getSon(2);

		if (info.args.containsKey(name) || info.locals.containsKey(name)) {
			errors.add(new Error("函数 " + id + " 参数名 " + name + " 重复"));
		} else {
			info.arglist.add(name);
			Variable varInfo = new Variable(type);
			varInfo.setAddress(arglist.getAddress());
			info.args.put(name, varInfo);
			info.vars.add(name);
		}

		if (type.equals("void")) {
			errors.add(new Error("函数 " + id + " 参数 " + name + " 类型不能为 void"));
		}

		handleArgs(args, id, info);
	}

	/**
	 * 检查参数是否重复
	 */
	private void handleArgs(Tree args, String id, Func info) {
		if (args.getSons().size() == 1)
			return;
		String type = args.getSon(1).getAttribute("type");
		String name = args.getSon(2).getAttribute("val");
		Tree args2 = args.getSon(3);

		if (info.args.containsKey(name) || info.locals.containsKey(name)) {
			errors.add(new Error("函数 " + id + " 参数名 " + name + " 重复"));
		} else {
			info.arglist.add(name);
			Variable varInfo = new Variable(type);
			varInfo.setAddress(args.getAddress());
			info.args.put(name, varInfo);
			info.vars.add(name);
		}

		if (type.equals("void")) {
			errors.add(new Error("函数 " + id + " 参数 " + name + " 类型不能为 void"));
		}

		handleArgs(args2, id, info);
	}

	/**
	 * 处理定义列表
	 * param definelist  定义列表的树节点
	 * param id          函数的唯一标识
	 * param info        包含函数信息的数据结构
	 */
	private void handleDefinelist(Tree definelist, String id, Func info) {
		if (definelist.getSons().size() == 1)
			return;
		Tree definestatement = definelist.getSon(0);
		Tree definelist2 = definelist.getSon(1);

		handleDefinestatement(definestatement, id, info);
		handleDefinelist(definelist2, id, info);
	}

	/**
	 * 处理定义语句  检查是否重复定义
	 */
	private void handleDefinestatement(Tree definestatement, String id, Func info) {
		String type = definestatement.getSon(0).getAttribute("type");
		String name = definestatement.getSon(1).getAttribute("val");
		Tree other = definestatement.getSon(3);

		if (info.args.containsKey(name) || info.locals.containsKey(name)) {
			errors.add(new Error("函数 " + id + " 本地变量名 " + name + " 重复"));
		} else {
			Variable varInfo = new Variable(type);
			varInfo.setAddress(definestatement.getAddress());
			info.locals.put(name, varInfo);
			info.vars.add(name);
		}

		if (type.equals("void")) {
			errors.add(new Error("函数 " + id + " 本地变量 " + name + " 类型不能为 void"));
		}

		handleOther(other, id, info, type);
	}

	private void handleOther(Tree other, String id, Func info, String type) {
		if (other.getSons().size() == 1)
			return;
		String name = other.getSon(1).getAttribute("val");
		Tree other2 = other.getSon(3);
        // 检查该名称是否已经存在于参数或局部变量中，如果存在，则添加错误信息，否则添加该变量到局部变量表和变量列表
		if (info.args.containsKey(name) || info.locals.containsKey(name)) {
			errors.add(new Error("函数 " + id + " 本地变量名 " + name + " 重复"));
		} else {
			Variable varInfo = new Variable(type);
			varInfo.setAddress(info.position + info.vars.size());
			info.locals.put(name, varInfo);
			info.vars.add(name);
		}

		other.getSon(1).setAttribute("type", type);
		handleOther(other2, id, info, type);
	}

	/**
	 * 检查类型
	 * 通过广度优先搜索遍历语法树，找到所有未进行过类型检查的"expression"节点，并为其设置类型。
	 * 接着，它再次遍历语法树，找到所有"definestatement"节点，并检查其类型是否正确。
	 * 如果类型无法确定或者无法进行类型转换，则将错误信息添加到错误列表中。
	 */
	private void checkType() {
		Queue<Tree> queue = new LinkedList<>();
		queue.add(root);
		// 第一次遍历：为所有"expression"节点设置类型（如果未被设置）
		while (!queue.isEmpty()) {
			Tree node = queue.poll();
			if (node.getName().equals("expression")) {
				if (node.getAttribute("checked") == null)
					setType(node);
			}
			List<Tree> nodes = node.getSons();
			for (Tree n : nodes)
				queue.add(n);
		}

		queue = new LinkedList<>();
		queue.add(root);
		// 第二次遍历：检查所有"definestatement"节点的类型匹配性
		while (!queue.isEmpty()) {
			Tree node = queue.poll();
			if (node.getName().equals("definestatement")) {
				String typel = node.getSon(0).getAttribute("type");
				String id = node.getSon(1).getAttribute("val");
				Tree init = node.getSon(2);
				if (init.getSons().size() == 1)
					break;
				String typer = init.getSon(1).getAttribute("type");
				if (typeMap.get(typel) == null) {
					errors.add(new Error(id + " 无法确定类型"));
				} else if (!typeMap.get(typel).contains(typer)) {
					errors.add(new Error(id + "无法进行类型转换"));
				}
			}
			List<Tree> nodes = node.getSons();
			for (Tree n : nodes)
				queue.add(n);
		}

	}

	private void setType(Tree root) {
		String name = root.getName();
		if (name.equals("expression")) {
			Tree item = root.getSon(0);
			Tree expr = root.getSon(1);
			setType(item);
			setType(expr);
			if (expr.getAttribute("type") == null) {
				root.setAttribute("type", item.getAttribute("type"));
			} else {
				String typel = item.getAttribute("type");
				String typer = expr.getAttribute("type");
				String op2 = expr.getSon(0).getAttribute("val");
				if (op2.equals("=")) {
					if (typeMap.get(typel) == null) {
						errors.add(new Error("无法确定类型"));
					} else if (!typeMap.get(typel).contains(typer)) {
						errors.add(new Error("无法进行类型转换"));
					} else {
						root.setAttribute("type", typel);
					}
				} else {
					if (typeMap.get(typel).contains(typer)) {
						root.setAttribute("type", typel);
					} else if (typeMap.get(typer).contains(typel)) {
						root.setAttribute("type", typer);
					}
				}
			}
			root.setAttribute("checked", "");
		} else if (name.equals("expr")) {
			Tree node = root.getSon(0);
			if (node.getName().equals("EMPTY")) {
				return;
			} else if (node.getName().equals("op2")) {
				Tree expression = root.getSon(1);
				setType(expression);
				root.setAttribute("type", expression.getAttribute("type"));
			}
		} else if (name.equals("item")) {
			Tree node = root.getSon(0);
			if (node.getName().equals("IDENTIFIER")) {
				if (root.getSon(1).getSons().size() == 1) {
					Tree t = node.getFather();
					while (!t.getName().equals("func")) {
						t = t.getFather();
					}
					String funcName = t.getSon(1).getAttribute("val");
					Func info = funcsInfoMap.get(funcName);
					String type = null;
					String id = node.getAttribute("val");
					if (info.args.containsKey(id)) {
						type = info.args.get(id).type;
					} else if (info.locals.containsKey(id)) {
						type = info.locals.get(id).type;
					} else {
						errors.add(new Error("函数 " + funcName + " 中 " + id + " 未定义"));
						return;
					}
					root.setAttribute("type", type);
				} else {
					String id = node.getAttribute("val");
					Func info = funcsInfoMap.get(id);
					if (info == null) {
						errors.add(new Error("函数 " + id + " 未定义"));
						return;
					} else {
						root.setAttribute("type", funcsInfoMap.get(id).returnType);
					}

					Tree parameters = root.getSon(1).getSon(1);
					List<String> typeList = new ArrayList<>();
					List<String> arglist = info.arglist;
					if (parameters.getSons().size() > 1) {
						Tree expression = parameters.getSon(0);
						setType(expression);
						String type = expression.getAttribute("type");
						typeList.add(type);
						setParamType(typeList, parameters.getSon(1));
						if (arglist.size() != typeList.size()) {
							errors.add(new Error("函数 " + id + " 参数个数不匹配"));
						} else {
							for (int i = 0; i < arglist.size(); i++) {
								Set<String> types = typeMap.get(info.getVarInfo(arglist.get(i)).type);
								if (!types.contains(typeList.get(i))) {
									errors.add(new Error("函数 " + id + " 参数类型不匹配"));
								}
							}
						}
					} else {
						if (arglist.size() > 0)
							errors.add(new Error("函数 " + id + " 参数个数不匹配"));
					}
				}
			} else if (node.getName().equals("INTEGER")) {
				root.setAttribute("type", "int");
			} else if (node.getName().equals("FLOAT")) {
				root.setAttribute("type", "float");
			} else if (node.getName().equals("'")) {
				root.setAttribute("type", "char");
			} else if (node.getName().equals("\"")) {
				root.setAttribute("type", "string");
			} else if (node.getName().equals("(")) {
				Tree expression = root.getSon(1);
				setType(expression);
				root.setAttribute("type", expression.getAttribute("type"));
			} else if (node.getName().equals("op1")) {
				String op1 = root.getSon(0).getAttribute("val");
				Tree item = root.getSon(1);
				setType(item);

				if (op1.equals("++") || op1.equals("--")) {
					if (!item.getAttribute("type").equals("int") && !item.getAttribute("type").equals("char")) {
						errors.add(new Error(item.getAttribute("type") + " 不能进行自增或自减运算"));
					}
				}
				root.setAttribute("type", item.getAttribute("type"));
			}
		}
	}

	private void setParamType(List<String> typeList, Tree param) {
		if (param.getSons().size() == 1)
			return;
		Tree expression = param.getSon(1);
		setType(expression);
		String type = expression.getAttribute("type");
		typeList.add(type);
		setParamType(typeList, param.getSon(2));
	}

	/**
	 * 检查返回语句
	 * 广度优先搜索遍历树结构，从根节点开始，对每个未被标记为已检查的"func"
	 * 检查是否与定义时的返回值类型匹配
	 */
	private void checkReturn() {
		Queue<Tree> queue = new LinkedList<>();
		queue.add(root);
		while (!queue.isEmpty()) {
			Tree node = queue.poll();
			if (node.getName().equals("func")) {
				if (node.getAttribute("checked") == null)
					checkReturn(node);
			}
			List<Tree> nodes = node.getSons();
			for (Tree n : nodes)
				queue.add(n);
		}
	}

	private void checkReturn(Tree func) {
		String name = func.getSon(1).getAttribute("val");
		String type = func.getSon(0).getAttribute("type");
		Tree statements = func.getSon(7);
		Set<Tree> set = new HashSet<Tree>();

		Queue<Tree> queue = new LinkedList<Tree>();
		queue.add(statements);
		while (!queue.isEmpty()) {
			Tree node = queue.poll();
			if (node.getName().equals("returnstatement"))
				set.add(node);
			for (Tree n : node.getSons())
				queue.add(n);
		}

		for (Tree node : set) {
			Tree ret = node.getSon(1);
			Tree son = ret.getSon(0);
			if (son.getName().equals("EMPTY")) {
				if (!type.equals("void"))
					errors.add(new Error("函数 " + name + " 返回类型不匹配"));
			} else {
				String t = son.getAttribute("type");
				Set<String> s = typeMap.get(type);
				if ((s == null) || (s != null && !s.contains(t))) {   /* s.contains(t) 用于检查 s 与 t 是否相同 */
					errors.add(new Error("函数 " + name + " 返回类型不匹配"));
				}
			}
		}

		if (set.size() == 0 && !type.equals("void")) {
			errors.add(new Error("函数 " + name + " 返回类型不匹配"));
		}
	}

	public List<Error> getErrors() {
		return errors;
	}

	public Tree getRoot() {
		return root;
	}

	public Map<String, Func> getFuncsInfoMap() {
		return funcsInfoMap;
	}
}
