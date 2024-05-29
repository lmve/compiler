package Clike.kernel.lexer.constant;

import java.util.ArrayList;
import java.util.List;

/**
 * Word类用于表示一个单词，包含单词的各种属性信息。
 */
public class Word {
    // 单词名称
    private String name ;
    // 单词的值
    private String value ;
    // 单词的长度
    private int length ;
    // 单词所在位置
    private int rowIndex ;
    private int colIndex ;
    // 单词的第二类型
    private String weakClass ;
    // 单词种码，用于唯一标识一个单词，可以是自定义编码或系统分配的编码
    private Integer token;
    // 单词状态转换列表，记录单词在不同上下文或条件下的状态变化
    private List<WordStatus> wordStatusList = new ArrayList<>() ;

    public Word() {
    }
    /**
     * 带名称和值的构造函数，自动计算单词长度。
     *
     * param name 单词的名称
     * param value 单词的值
     */
    public Word(String name, String value) {
        this.name = name;
        this.value = value;
        this.length = name.length();
    }

    public Word(String name, String value, String token) {
        this(name,value);
        this.token = Integer.parseInt((String) WordMappingPool.properties.get(token));
        this.weakClass = token ;
    }


    public Word(String name, String value, Integer token) {
        this(name,value);
        this.token = token;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getRowIndex() {
        return rowIndex;
    }

    public void setRowIndex(int rowIndex) {
        this.rowIndex = rowIndex;
    }

    public int getColIndex() {
        return colIndex;
    }

    public void setColIndex(int colIndex) {
        this.colIndex = colIndex;
    }

    public String getWeakClass() {
        return weakClass;
    }

    public void setWeakClass(String weakClass) {
        this.weakClass = weakClass;
    }

    public Integer getToken() {
        return token;
    }

    public void setToken(Integer token) {
        this.token = token;
    }

    public List<WordStatus> getWordStatusList() {
        return wordStatusList;
    }

    public void setWordStatusList(List<WordStatus> wordStatusList) {
        this.wordStatusList = wordStatusList;
    }
    /**
     * 生成Word对象的字符串表示形式。
     * 该方法重写了Object类中的toString方法，以便于在日志输出或调试时，可以直接打印Word对象的主要属性信息。
     * return 返回Word对象的字符串表示，包含name、value、weakClass和token属性。
     */
    @Override
    public String toString() {
        return "Word{" +
                "name='" + name + '\'' +
                ", value='" + value + '\'' +
                ", weakClass='" + weakClass + '\'' +
                ", token=" + token +
                '}';
    }
}
