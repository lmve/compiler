package Clike.kernel.analyser;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 生成四元式
 */
public class intermediate {
	// 四元式列表
	private List<FourItem> fourItemList;
	// 函数声明表
	private Map<String, Func> funcsInfoMap;
	// 函数信息
	private Func funcInfo;
	// 临时变量计数
	private int temperCount = 0;


	public void generate(Map<String, Func> funcsInfoMap, Tree root) {
		this.funcsInfoMap = funcsInfoMap;
		fourItemList = new ArrayList<>();
		handleS(root);
	}

	/* 新建一个临时变量 */
	public String newTemper(){
		return "T" + (++this.temperCount);
	}

	private void handleS(Tree s) {


		// 开始产生式: S -> func funcs
		handle_Func(s.getSon(0));
		handleFuncs(s.getSon(1));

		/* 处理完成后，加入系统退出四元式 */
		FourItem sysExit = new FourItem("sys", "", "", "");
		this.fourItemList.add(sysExit);

	}

	private void handle_Func(Tree func) {
		String id = func.getSon(1).getAttribute("val");
		funcsInfoMap.get(id).position = fourItemList.size() + 1;


		/* fund 函数四元式定义 */
		FourItem fund = new FourItem("func", id, "", "");
		// 添加函数定义四元式
		if ("main".equals(id)){
			/* 添加 main 函数定义四元式 */
			this.fourItemList.add(new FourItem("main", "", "", ""));
		}else{
			this.fourItemList.add(fund);
		}

		funcInfo = funcsInfoMap.get(func.getSon(1).getAttribute("val"));
		handle_define(func.getSon(6));
		handle_Statements(func.getSon(7));
	}

	private void handle_define(Tree definelist) {
		if (definelist.getSons().size() == 1) {
			return;
		}
		handle_define_statement(definelist.getSon(0));
		handle_define(definelist.getSon(1));
	}

	private void handle_define_statement(Tree definestatement) {
		Tree init = definestatement.getSon(2);
		if (init.getSons().size() > 1) {
			Tree expression = init.getSon(1);
			handleExpression(expression);
			String val = expression.getAttribute("val");
			FourItem fourItem = new FourItem("=", val, "", definestatement.getSon(1).getAttribute("val"));

			if (expression.getAttribute("flag").equals("true")) {
				fourItem.arg1 = fourItemList.get(Integer.parseInt(val) - 1).result;
			}
			fourItemList.add(fourItem);
		}

		handle_Other(definestatement.getSon(3));
	}

	private void handle_Other(Tree other) {
		if (other.getSons().size() == 1)
			return;
		Tree init = other.getSon(2);
		if (init.getSons().size() > 1) {
			Tree expression = init.getSon(1);
			handleExpression(expression);
			String val = expression.getAttribute("val");
			FourItem fourItem = new FourItem("=", val, "", other.getSon(1).getAttribute("val"));

			if (expression.getAttribute("flag").equals("true")) {
				fourItem.arg1 = fourItemList.get(Integer.parseInt(val) - 1).result;
			}
			fourItemList.add(fourItem);
		}
		handle_Other(other.getSon(3));
	}

	private void handleFuncs(Tree funcs) {
		String name = funcs.getSon(0).getName();
		if (name.equals("EMPTY")) {
			return;
		} else if (name.equals("func")) {
			handle_Func(funcs.getSon(0));
			handleFuncs(funcs.getSon(1));
		}
	}

	private void handle_Statements(Tree statements) {
		String name = statements.getSon(0).getName();
		if (name.equals("EMPTY")) {
			return;
		} else if (name.equals("statement")) {
			handleStatement(statements.getSon(0));
			handle_Statements(statements.getSon(1));
		}
	}

	private void handleStatement(Tree statement) {
		Tree son = statement.getSon(0);
		String name = son.getName();
		if (name.equals("expression")) {
			handleExpression(son);
		} else if (name.equals("ifstatement")) {
			handle_If(son);
		} else if (name.equals("whilestatement")) {
			handle_While(son);
		} else if (name.equals("forstatement")) {
			handle_For(son);
		} else if (name.equals("dowhilestatement")) {
			handle_Dowhile(son);
		} else if (name.equals("returnstatement")) {
			handle_Return(son);
		}
	}

	private void handleExpression(Tree expression) {
		Tree item = expression.getSon(0);
		Tree expr = expression.getSon(1);
		handle_Item(item);
		handle_Expr(expr);
		if (expr.getAttribute("op2") == null) {
			expression.setAttribute("val", item.getAttribute("val"));
			expression.setAttribute("flag", item.getAttribute("flag"));
		} else {
			String op2 = expr.getAttribute("op2");
			//String id = "$" + (fourItemList.size() + 1);

			String id = this.newTemper();

			FourItem fourItem = new FourItem(op2, "", "", id);
			String itemVal = item.getAttribute("val");
			String exprVal = expr.getAttribute("val");
			String arg1 = item.getAttribute("flag").equals("true")
					? fourItemList.get(Integer.parseInt(itemVal) - 1).result
					: itemVal;
			String arg2 = expr.getAttribute("flag").equals("true")
					? fourItemList.get(Integer.parseInt(exprVal) - 1).result
					: exprVal;
			fourItem.arg1 = arg1;
			fourItem.arg2 = arg2;

			String type = expression.getAttribute("type");
			funcInfo.vars.add(id);
			funcInfo.tmps.put(id, new Variable(type));

			if (op2.equals("=")) {
				funcInfo.vars.remove(id);
				funcInfo.tmps.remove(id);
				fourItem.result = fourItem.arg1;
				fourItem.arg1 = fourItem.arg2;
				fourItem.arg2 = "";
			}
			fourItemList.add(fourItem);
			expression.setAttribute("val", fourItemList.size() + "");
			expression.setAttribute("flag", "true");
		}
	}

	/**
	 * 根据给定的TreeNode对象item进行处理，
	 * 具体处理方式依赖于item的子节点的类型。
	 * 该函数主要用来处理程序中的表达式和语句，
	 * 将其转换为四元式列表fourItemList中的一个或多个FourItem对象。
	 * param item
	 */
	private void handle_Item(Tree item) {
		/* 获取语法树的首节点 */
		Tree node = item.getSon(0);
		item.setAttribute("flag", "false");
		/* 如果首节点是标识符，则进一步判断是否是函数调用 */
		if (node.getName().equals("IDENTIFIER")) {

			String id = node.getAttribute("val");
			/* 如果是函数调用，则进一步判断是否是内置函数 */
			if (item.getSon(1).getSons().size() == 1) {
				item.setAttribute("val", id);
			} else if (id.equals("write")) {
				/* write 语句 是否带参数 */
				Tree expression = item.getSon(1).getSon(1).getSon(0);
				handleExpression(expression);
				String val = expression.getAttribute("val");
				if (expression.getAttribute("flag").equals("true"))
					val = fourItemList.get(Integer.parseInt(val) - 1).result;
				/* 获取 write 参数 */
				if (val != null){
					FourItem fourItem = new FourItem("para", val, "", "");
					fourItemList.add(fourItem); /* 压栈 */
				}
				/* 无参数 */
				FourItem fourItem = new FourItem("call", "write", "", newTemper());
				fourItemList.add(fourItem);

			} else {

				/* 获取参数 */
				List<String> list = new ArrayList<>();
				Tree parameters = item.getSon(1).getSon(1);
				if (parameters.getSons().size() > 1) {
					Tree expression = parameters.getSon(0);
					handleExpression(expression);
					String val = expression.getAttribute("val");
					if (expression.getAttribute("flag").equals("true"))
						val = fourItemList.get(Integer.parseInt(val) - 1).result;
					list.add(val);
					handle_Param(list, parameters.getSon(1));
//					fourItem.arg2 = list.toString();
				}
				/* 参数压栈 */
				for (String val: list) {
					FourItem fourItem = new FourItem("para", val, "", "");
					fourItemList.add(fourItem); /* 压栈 */
				}

				/* 生成一条函数调用四元式 */
				FourItem fourItem = new FourItem("call", id, "", "");
				fourItem.result = this.newTemper();

				String type = item.getAttribute("type");
				funcInfo.vars.add(fourItem.result);
				funcInfo.tmps.put(fourItem.result, new Variable(type));

				fourItemList.add(fourItem);
				item.setAttribute("val", fourItemList.size() + "");
				item.setAttribute("flag", "true");
			}
		} else if (node.getName().equals("INTEGER")) {
			item.setAttribute("val", node.getAttribute("val"));
		} else if (node.getName().equals("FLOAT")) {
			item.setAttribute("val", node.getAttribute("val"));
		} else if (node.getName().equals("'")) {
			item.setAttribute("val", "'" + item.getSon(1).getAttribute("val") + "'");
		} else if (node.getName().equals("\"")) {
			item.setAttribute("val", "\"" + item.getSon(1).getAttribute("val") + "\"");
		} else if (node.getName().equals("(")) {
			Tree expression = item.getSon(1);
			handleExpression(expression);
			item.setAttribute("val", expression.getAttribute("val"));
			item.setAttribute("flag", expression.getAttribute("flag"));
		} else if (node.getName().equals("op1")) {
			Tree item2 = item.getSon(1);
			handle_Item(item2);
			String op1 = node.getAttribute("val");
			//String id = "$" + (fourItemList.size() + 1);
			String id = this.newTemper();
			FourItem fourItem = new FourItem(op1, item2.getAttribute("val"), "", id);


			if (item2.getAttribute("flag").equals("true")) {
				fourItem.arg1 = fourItemList.get(Integer.parseInt(fourItem.arg1) - 1).result;
			}

			String type = item.getAttribute("type");
			funcInfo.vars.add(id);
			funcInfo.tmps.put(id, new Variable(type));

			if (op1.equals("++") || op1.equals("--")) {
				funcInfo.vars.remove(id);
				funcInfo.tmps.remove(id);
				fourItem.op = fourItem.op.substring(0, 1);
				fourItem.result = fourItem.arg1;
				fourItem.arg2 = "1";
			} else if (op1.equals("+") || op1.equals("-")) {
				fourItem.arg2 = fourItem.arg1;
				fourItem.arg1 = "0";
			}

			fourItemList.add(fourItem);
			item.setAttribute("val", fourItemList.size() + "");
			item.setAttribute("flag", "true");
		}
	}

	private void handle_Expr(Tree expr) {
		Tree node = expr.getSon(0);
		if (node.getName().equals("EMPTY")) {
			return;
		} else if (node.getName().equals("op2")) {
			expr.setAttribute("op2", node.getAttribute("val"));
			Tree expression = expr.getSon(1);
			handleExpression(expression);
			expr.setAttribute("val", expression.getAttribute("val"));
			expr.setAttribute("flag", expression.getAttribute("flag"));
		}
	}

	private void handle_Param(List<String> list, Tree param) {
		if (param.getSons().size() == 1) {
			return;
		}
		Tree expression = param.getSon(1);
		handleExpression(expression);
		String val = expression.getAttribute("val");
		if (expression.getAttribute("flag").equals("true")) {
			val = fourItemList.get(Integer.parseInt(val) - 1).result;
		}
		list.add(val);
		handle_Param(list, param.getSon(2));
	}

	/**
	 * 处理if语句的逻辑。
	 * param ifstatement if语句的树节点，包含了if语句的各个组成部分。
	 */
	private void handle_If(Tree ifstatement) {
		/* 获取if语句中的表达式、语句块和else语句块的树节点 */
		Tree expression = ifstatement.getSon(2);
		Tree statements = ifstatement.getSon(5);
		Tree elsestate = ifstatement.getSon(7);
		/* 处理if语句中的表达式 */
		handleExpression(expression);
		/* 获取表达式的值，并创建一个条件跳转指令（如果不等于零则跳转）*/
		String val = expression.getAttribute("val");
		FourItem jnzItem = new FourItem("jnz", val, "", "");
		/* 如果表达式结果为真，则设置跳转的目标指令位置 */
		if (expression.getAttribute("flag").equals("true")) {
			jnzItem.arg1 = fourItemList.get(Integer.parseInt(val) - 1).result;
		}
		fourItemList.add(jnzItem);

        /* 处理else语句部分，先添加一个假跳转指令，用于跳过else语句块 */
//		FourItem jzItem = new FourItem("j", "", "", ""+(this.fourItemList.size()+2));
//		this.fourItemList.add(jzItem);
        /* 处理 else语句块 */
		handle_Else(elsestate);

		// 非0 跳转地址
		jnzItem.result = (fourItemList.size() + 2) + "";
		// 强制跳转地址
		FourItem jItem = new FourItem("j", "", "", "");
		fourItemList.add(jItem);
        /* 处理if语句块中的语句 */
		handle_Statements(statements);
		/* 强制跳转指令的目标位置，即跳转到if/else语句块处理后的下一个指 */
		jItem.result = (fourItemList.size() + 1) + "";
	}
	/**
	 * 处理else语句块
	 * param elsestate else语句对应的树节点，包含else语句的具体内容
	 */
	private void handle_Else(Tree elsestate) {
		/* 获取else语句后的第一个子节点的名称 */
		String name = elsestate.getSon(0).getName();
		if (name.equals("else")) {
			/* 处理else语句块 */
			handle_Statements(elsestate.getSon(2));
		} else if (name.equals("EMPTY")) {
			// 没有 else 语句
			return;
		}
	}
	/**
	 * 处理while语句
	 * param whilestatement while语句的树节点，包含了整个while语句的信息。
	 */
	private void handle_While(Tree whilestatement) {
		/* 获取while语句中的条件表达式和循环体 */
		Tree expression = whilestatement.getSon(2);
		Tree statements = whilestatement.getSon(5);

		int label = fourItemList.size() + 1;
		handleExpression(expression);
		String val = expression.getAttribute("val");
		FourItem jzItem = new FourItem("jz", val, "", "");
		/* 如果表达式结果为真，则设置跳转目标为四元组列表中对应的位置 */
		if (expression.getAttribute("flag").equals("true")) {
			jzItem.arg1 = fourItemList.get(Integer.parseInt(val) - 1).result;
		}
		fourItemList.add(jzItem);
        /* 处理循环体 */
		handle_Statements(statements);
		/* 更新跳转四元组的结果为循环结束后的地址 */
		jzItem.result = (fourItemList.size() + 2) + "";

		FourItem jItem = new FourItem("j", "", "", label + "");
		fourItemList.add(jItem);
	}

	/**
	 * 处理for语句
	 * param forstatement
	 */
	private void handle_For(Tree forstatement) {
		/* 获取循环体及条件表达式对应的子节点 */
		Tree expression1 = forstatement.getSon(2);
		Tree expression2 = forstatement.getSon(4);
		Tree expression3 = forstatement.getSon(6);
		Tree statements = forstatement.getSon(9);

		/* 处理循环初始化表达式 */
		handleExpression(expression1);
        /* 为跳转标签分配编号 */
		int label = fourItemList.size() + 1;
		/* 处理循环条件表达式 */
		handleExpression(expression2);
		String val = expression2.getAttribute("val");
		FourItem jzItem = new FourItem("jz", val, "", "");
		/* 如果条件表达式为真，则跳转到循环体，否则跳转到循环结束标签 */
		if (expression2.getAttribute("flag").equals("true")) {
			jzItem.arg1 = fourItemList.get(Integer.parseInt(val) - 1).result;
		}
		/* 添加到指令列表 */
		fourItemList.add(jzItem);
		/* 处理循环体中的语句 */
		handle_Statements(statements);
		/* 处理循环条件表达式 */
		handleExpression(expression3);
		/* 更新跳转指令的结果为目标标签编号 */
		jzItem.result = (fourItemList.size() + 2) + "";
        /* 创建并添加循环结束后的跳转指令 */
		FourItem jItem = new FourItem("j", "", "", label + "");
		fourItemList.add(jItem);
	}

	/**
	 * 获取循环体及条件表达式对应的子节点，然后为循环体生成一个唯一标签
	 * 处理循环体，条件表达式。根据条件表达式的值，生成一个条件跳转指令添加到指令列表中
	 * param dowhilestatement
	 */
	private void handle_Dowhile(Tree dowhilestatement) {
		/* 获取循环体及条件表达式对应的子节点，然后为循环体生成一个唯一标签 */
		Tree statements = dowhilestatement.getSon(2);
		Tree expression = dowhilestatement.getSon(6);
		int label = fourItemList.size() + 1;
		/* 处理循环体，条件表达式 */
		handle_Statements(statements);
		handleExpression(expression);
		/* 根据条件表达式的值，生成一个条件跳转指令添加到指令列表中 */
		String val = expression.getAttribute("val");
		FourItem jnzItem = new FourItem("jnz", val, "", label + "");
		/* 如果条件表达式的值为真，则跳转到循环体的起始位置，否则跳转到循环体的结束位置*/
		if (expression.getAttribute("flag").equals("true")) {
			jnzItem.arg1 = fourItemList.get(Integer.parseInt(val) - 1).result;
		}
		fourItemList.add(jnzItem);
	}


	/* 返回语句的处理 */
	/**
	 * 处理返回语句。
	 * 对于返回语句，根据是否存在表达式进行不同的处理：
	 * 如果不存在表达式，则生成一个表示返回的FourItem对象并添加到fourItemList中；
	 * 如果存在表达式，则先处理表达式，然后根据表达式的值生成一个FourItem对象，可能涉及到获取之前的计算结果。
	 * param returnstatement 返回语句的树节点，包含了返回语句的详细结构。
	 */
	private void handle_Return(Tree returnstatement) {
		/* 获取返回语句中的返回值部分的节点 */
		Tree node = returnstatement.getSon(1).getSon(0);
		String name = node.getName();
		if (name.equals("EMPTY")) {
			/* 如果不存在表达式，则生成一个表示返回的FourItem对象并添加到fourItemList中 */
			FourItem fourItem = new FourItem("ret", "", "", "");
			fourItemList.add(fourItem);
		} else if (name.equals("expression")) {
			/* 如果存在返回值，先处理表达式，然后根据表达式的值设置FourItem */
			handleExpression(node);
			String val = node.getAttribute("val");
			FourItem fourItem = new FourItem("ret", "", "", val);
			if (node.getAttribute("flag").equals("true")) {
				/* 如果表达式的值是一个临时变量，则需要获取之前的计算结果 */
				fourItem.result = fourItemList.get(Integer.parseInt(val) - 1).result;
			}
			fourItemList.add(fourItem);
		}
	}

	public List<FourItem> getFourItemList() {
		return fourItemList;
	}
}
