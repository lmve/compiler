package Clike.kernel.analyser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 函数信息表
 *
 * TODO
 * 增加作用域
 * address
 */
public class Func {

	public int position; // 起始位置
	public String returnType; // 返回类型
	public List<String> vars; // 变量列表
	public List<String> arglist; // 参数列表
	public Map<String, Variable> args; // 参数表
	public Map<String, Variable> locals; // 本地变量表
	public Map<String, Variable> tmps; // 临时变量表

	public Func(String returnType) {
		this.returnType = returnType;
		vars = new ArrayList<String>();
		arglist = new ArrayList<String>();
		args = new HashMap<>();
		locals = new HashMap<>();
		tmps = new HashMap<>();
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		for (String var : vars)
			sb.append("\t name: "+var + "  :" + getVarInfo(var) + "\n");
		return "position= " + position +"\n"+ "\t" + "total vars= " + this.vars.size() + "\n"+ sb
				+ "\treturn Type: " + returnType;

	}

	/**
	 * 填写函数起始地址
	 */

	public void setPosition(int position) {
		this.position = position;
	}

	/**
	 * 获取变量信息
	 *
	 * param id
	 * return if find ?  varInfo : null
	 */
	public Variable getVarInfo(String id) {
		if (args.containsKey(id))
			return args.get(id);
		if (locals.containsKey(id))
			return locals.get(id);
		if (tmps.containsKey(id))
			return tmps.get(id);
		return null;
	}
}
