package Clike.kernel.analyser;

/* 变量信息 */
/**
 * TODO
 * param scope
 */
public class Variable {
	public String type;  //类型
	public String val;   //变量名
//    public String scope; //作用域
	public int address;  //地址

	public Variable(String type) {
		this.type = type;
	}

	public void setAddress(int address){
		this.address = address;
	}

	public int getAddress(){
		return address;
	}



	@Override
	public String toString() {
		return "[position= " + address +", type=" + type + ", val=" + val + "]";
	}
}
