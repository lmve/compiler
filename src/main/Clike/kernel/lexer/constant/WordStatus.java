package Clike.kernel.lexer.constant;

/**
 * WordStatus类用于定义和存储单词的状态信息。
 * 包括状态的键值、顺序、以及所处条件。
 */
public class WordStatus {

    public static String KEY = "Key" ;
    public static String NUM = "Number";
    // 标识符
    public static String ID = "ID" ;

    // 存储单词的具体状态
    public String status ;

    // 状态的顺序，用于排序或比较。
    public int order ;

    // 描述单词状态所处的条件或情境。
    public String conditions ;

}
