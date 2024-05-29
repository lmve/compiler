package Clike.kernel.tokenizer;

/**
 * 记录分词的结果
 */
public class Token {

	private Type type;	// 类型
	private String value;	// 值
	
	public Token(Type type, String value) {
		super();
		this.type = type;
		this.value = value;
	}

	public Type getType() {
		return type;
	}
	
	public String getValue() {
		return value;
	}

	@Override
	public String toString() {
		return String.format("%s:%s", value, type);
	}
}
