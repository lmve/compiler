package Clike.kernel.lexer.token;


import Clike.kernel.lexer.constant.Constant;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/**

 2、Java程序语言的单词符号的种别.

 识别java的关键字:

 boolean,byte,char,double,false,float,int,long,new,null,short,true,void,instanceof,break,case,catch,
 continue,default,do,else,for,if,return,switch,try,while,finally,throw,this,super,abstract,final,
 namtive,private,protected,public ,static,synchronized,transient,volatile,class,extends,implements,
 interface,package,import,throws;                                                                       单词识别码为１；

 标识符：标识符必须是以字母，下划线，美元符号开始,                                                                单词识别码为２；

 常量：常数为无符号整形数；                                                                                   单词种别码为3；

 运算符：+、-、*、/、=、>、=、<=、＝＝、!= 、++、--、％、＆＆、｜｜、！                                            单词识别码为４；

 分隔符：, ; { } ( ) [ ]                   1                                                              单词种别码为5

 */

public class Token {

    public static LinkedHashMap<String, Integer> tokenMap = new LinkedHashMap<>();
    public static String[] keywords;
    public static String keyword;
    public static List<String> keyList = new ArrayList<>();
    public static String runSign;
    public static String[] runSigns;
    public static String splitSign;
    public static String[] splitSigns;
    public static String flag;
    public static String sixteen;
    public static String sixteen2;

    public static String numKind;

    static {
        keyword = "boolean,Boolean,byte,Byte,char,Character,double,Double,false,float,Float,int,Integer,long,Long,new,null," +
                "short,Short,String,Map,HashMap,Set,HashSet,List,ArrayList,true,void,instanceof," +
                "break,case,catch,continue,default,do,else,for,if,return,switch,try,while,finally,throw," +
                "this,super,abstract,final,native,private,protected,public,static,synchronized,transient," +
                "volatile,class,extends,implements,interface,package,import,throws";
        flag = "boolean,Boolean,byte,Byte,char,Character,double,Double,float,Float,int,Integer,long,Long," +
                "short,Short,String,Map,HashMap,Set,HashSet,List,ArrayList,void,return";
        runSign = "+,-,*,/,%,&,|,<,>,=,!,==,|=,&=,+=,-=,/=,*=,%=,<=,>=,>==,>>=,<<=,<==,!=,<<,>>,++,--,||,&&";
        splitSign = ". , ; { } ( ) [ ] \" ";
        runSigns = runSign.split(",");
        keywords = keyword.split(",");
        splitSigns = splitSign.split(" ");

        

        // 可以出现在十六进制表示法前面的第一个符号
        sixteen = " ( = + - / % ";
        sixteen2 = " double Double int Integer Float float long ";
        // 标识符
        for ( int i = 0; i < keywords.length; i ++ ) {
            tokenMap.put(keywords[i], i + 101);
            keyList.add(keywords[i]);
        }
        // 运算符
        for(int i = 0; i < runSigns.length; i ++) {
            tokenMap.put(runSigns[ i ], i + 201);
        }
        // 分隔符
        for(int i = 0; i < splitSigns.length; i ++) {
            tokenMap.put(splitSigns[ i ], i + 301);
        }
        // 整数
        tokenMap.put(Constant.INT, 101);
        // 浮点数
        tokenMap.put(Constant.FLOAT, 102);
        // 字符串
        tokenMap.put("String", 401);
        // 标识符
        tokenMap.put(Constant.IDENTIFIER, 501);

        numKind = "int long Long double float Double Float";
    }

    public static String printTokens() {
        Set<String> set = tokenMap.keySet();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("token    词\n");
        for ( String s : set ) {
            stringBuilder.append(tokenMap.get(s) + " : " + s + "\n");
        }
        return stringBuilder.toString();
    }




}
