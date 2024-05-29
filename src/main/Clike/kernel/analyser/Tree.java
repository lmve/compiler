package Clike.kernel.analyser;

import javafx.scene.control.TextArea;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *语法树的节点
 *
 * TODO
 * 1. address
 * 2. scope
 * 3. value
 */
public class Tree {

	/** 名字 */
	private String name;
	/**父节点*/
	private Tree father;
	/**子节点*/
	private List<Tree> sons;
	/**属性表*/
	private Map<String, String> attributeMap;
	/**地址*/
	private int address;

	public Tree(String name, Tree father) {
		super();
		this.name = name;
		this.father = father;
		sons = new ArrayList<>();
		attributeMap = new HashMap<String, String>();
	}

	public void setSon(Tree son) {
		sons.add(son);
	}

	public Tree getSon(int i) {
		return sons.get(i);
	}

	public void removeSon(Tree son) {
		sons.remove(son);
	}

	public Tree getFather() {
		return father;
	}

	public List<Tree> getSons() {
		return sons;
	}

	public String getName() {
		return name;
	}

	public void setAttribute(String key, String value) {
		attributeMap.put(key, value);
	}

	public String getAttribute(String key) {
		return attributeMap.get(key);
	}

	public void setAddress(int address) {
		this.address = address;
	}
	public int getAddress() {
		return this.address;
	}
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(name + ":");
		for (String key : attributeMap.keySet()) {
			sb.append(key + "=" + attributeMap.get(key) + " ");
		}

		return sb.toString();
	}

	public void dump(int indent, TextArea resultTextArea){
		for (int i = 0; i < indent; i++) {
			System.out.print("\t");
			resultTextArea.appendText("\t");
		}
		System.out.println(this.toString());
		resultTextArea.appendText("| " + this.toString()+"\n");
		this.sons.forEach((node) ->{
			node.dump(indent+1, resultTextArea);
		});

	}

}
