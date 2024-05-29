package Clike.kernel.lexer;


import Clike.kernel.lexer.constant.Constant;
import Clike.kernel.lexer.token.Token;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.*;

/**
 * 词法分析
 */
public class lexerCompiler {
    static LinkedHashMap<String, String> tokensMap = new LinkedHashMap<>();
    static String record = "";
    static int flagsIndex = 0;
    static boolean flag2 = false;
    static String string = "";

    static int flagsIndex3 = 0;
    static boolean flag3 = false;
    static String record3 = "";

    static int flagsIndex4 = 0;
    static boolean flag4 = false;
    static String record4 = "";

    static int flagsIndex5 = 0;
    static boolean flag5 = false;
    static String record5 = "";

//    public static HashMap<String, LinkedHashMap<String, String>> getCiFaText( String path ) throws IOException {

    public static HashMap<String, LinkedHashMap<String, String>> getCiFaText( String[] codeLines ) throws IOException {
        LinkedHashMap<String, String> resultCifaMap = new LinkedHashMap<>();
        LinkedHashMap<String, String> errorCifaMap = new LinkedHashMap<>();
        LinkedHashMap<String, LinkedHashMap<String, String>> textMap = new LinkedHashMap<>();

//        FileReader fileReader = new FileReader(path);
//        BufferedReader br = new BufferedReader( fileReader );
        String line = "";
        List<String> wordList = new ArrayList<>();
        int n = 0;
        boolean flag1 = false;
//        while ( (line = br.readLine()) != null ) {
        for ( int m = 0; m < codeLines.length; m ++ ) {
            line = codeLines[m];
            n ++;
            for ( int i = 0; i < line.length(); i++  ) {
                char c = line.charAt( i );

                // 注释/* */
                if ( c == '/' && i + 1 < line.length() && line.charAt(i + 1) == '*' ) {
                    flag1 = true;
                    i ++;
                    continue;
                } else if ( flag1 ) {
                    if (i + 1 < line.length() && line.charAt(i) == '*' && line.charAt(i + 1) == '/') {
                        i = i + 2;
                        flag1 = false;
                        continue;
                    }
                    continue;
                }

                // 识别字符串
                if ( identifyString(c, i, resultCifaMap, n) ) {
                    continue;
                }


                int t = 0;
                while (true) {
                    t = i;
                    // 字母 / _ （可能关键字 or 标识符）
                    i = isLetter(resultCifaMap,errorCifaMap,"", line, i, n, i);

                    i = isOperator(resultCifaMap,errorCifaMap,"", line, i, n, i);

                    // 非字母
                    // 数字
                    i = isDigit(resultCifaMap,errorCifaMap,"", line, i, n, i, true);

                    // 运算符 ： +、-、*、/、=、>、=、<=、＝＝、!= 、++、--、％、＆＆、｜｜、！
                    // 包含 注释 //
                    i = isOperator(resultCifaMap,errorCifaMap,"", line, i, n, i);

                    if ( i == t ) {
                        break;
                    }
                }

                if ( i >= line.length() ) {
                    break;
                }

                c = line.charAt( i );

                // 识别括号 {} [] ()
//                if ( identifypPrentheses(c, line, i, resultCifaMap, errorCifaMap, n) ) {
//                    continue;
//                }
                // 分隔符 ：" . , ; { } ( )
                if ( c == '"' || c == '.' || c == ',' || c == ';' || c == '{' || c == '}' || c == '[' || c == ']' || c == '(' || c == ')') {
                    resultCifaMap.put(n + "-" + i + "\t\t\t" + Constant.SEPARATOR + "\t\t" + Token.tokenMap.get(c+"") + "\t", c+"");
                    record = c+"";
                    tokensMap.put(c+"", Constant.SEPARATOR);
                }
            }
            if ( flag2 ) {
                errorCifaMap.put(n + "-" + flagsIndex + "\t\t\t\" not match right " + Constant.STRING + "\t\t" +
                        Token.tokenMap.get(Constant.STRING) + "\t", string);
                string = "";
                flag2 = false;
            }
            if ( flag3 ) {
                errorCifaMap.put(n + "-" + flagsIndex3 + "\t\t\t[ not match right " + Constant.SEPARATOR + "\t\t" +
                        Token.tokenMap.get(Constant.SEPARATOR) + "\t", record3);
                record3 = "";
                flag3 = false;
            }
        }

        textMap.put("result", resultCifaMap);
        textMap.put("error", errorCifaMap);
//        fileReader.close();
//        br.close();

        return textMap;
    }

    // 识别括号 [] () {}
    private static boolean identifypPrentheses(char c, String line, int i, LinkedHashMap<String, String> resultCifaMap, LinkedHashMap<String, String> errorCifaMap, int n) {
        if ( c == '[' ) {
            int j = i + 1;
            boolean f1 = false;
            for ( ; j < line.length(); j ++ ) {
                if ( line.charAt( j ) == '[' ) {
                    break;
                }
                if ( line.charAt( j ) == ']' ) {
                    f1 = true;
                    break;
                }
            }
            if ( f1 == false ) {
                errorCifaMap.put(n + "-" + i + "\t\t\t[ not match right " + Constant.SEPARATOR + "\t" +
                        Token.tokenMap.get(c+"") + "\t", c+"");
                record = c+"";
                tokensMap.put(c+"", Constant.SEPARATOR);
            } else {
                resultCifaMap.put(n + "-" + i + "\t\t\t" + Constant.SEPARATOR + "\t\t" + Token.tokenMap.get(c+"") + "\t", c+"");
                record = c+"";
                tokensMap.put(c+"", Constant.SEPARATOR);
            }
            return true;
        }
        else if ( c == ']' ) {
            int j = i - 1;
            boolean f1 = false;
            for ( ; j >= 0; j -- ) {
                if ( line.charAt( j ) == ']' ) {
                    break;
                }
                if ( line.charAt( j ) == '[' ) {
                    f1 = true;
                    break;
                }
            }
            if ( f1 == false ) {
                errorCifaMap.put(n + "-" + i + "\t\t\t] not match left " + Constant.SEPARATOR + "\t" +
                        Token.tokenMap.get(c+"") + "\t", c+"");
                record = c+"";
                tokensMap.put(c+"", Constant.SEPARATOR);
            } else {
                resultCifaMap.put(n + "-" + i + "\t\t\t" + Constant.SEPARATOR + "\t\t" + Token.tokenMap.get(c+"") + "\t", c+"");
                record = c+"";
                tokensMap.put(c+"", Constant.SEPARATOR);
            }
            return true;
        }
//        else if ( c == '(' ) {
//            int j = i + 1;
//            boolean f1 = false;
//            for ( ; j < line.length(); j ++ ) {
//                if ( line.charAt( j ) == '(' ) {
//                    break;
//                }
//                if ( line.charAt( j ) == ')' ) {
//                    f1 = true;
//                    break;
//                }
//            }
//            if ( f1 == false ) {
//                errorCifaMap.put(n + "-" + i + "\t\t\t( not match right " + Constant.SEPARATOR + "\t" +
//                        Token.tokenMap.get(c+"") + "\t", c+"");
//                record = c+"";
//                tokensMap.put(c+"", Constant.SEPARATOR);
//            } else {
//                resultCifaMap.put(n + "-" + i + "\t\t\t" + Constant.SEPARATOR + "\t\t" + Token.tokenMap.get(c+"") + "\t", c+"");
//                record = c+"";
//                tokensMap.put(c+"", Constant.SEPARATOR);
//            }
//            return true;
//        }
//        else if ( c == ')' ) {
//            int j = i - 1;
//            boolean f1 = false;
//            for ( ; j >= 0; j -- ) {
//                if ( line.charAt( j ) == ')' ) {
//                    break;
//                }
//                if ( line.charAt( j ) == '(' ) {
//                    f1 = true;
//                    break;
//                }
//            }
//            if ( f1 == false ) {
//                errorCifaMap.put(n + "-" + i + "\t\t\t) not match left " + Constant.SEPARATOR + "\t" +
//                        Token.tokenMap.get(c+"") + "\t", c+"");
//                record = c+"";
//                tokensMap.put(c+"", Constant.SEPARATOR);
//            } else {
//                resultCifaMap.put(n + "-" + i + "\t\t\t" + Constant.SEPARATOR + "\t\t" + Token.tokenMap.get(c+"") + "\t", c+"");
//                record = c+"";
//                tokensMap.put(c+"", Constant.SEPARATOR);
//            }
//            return true;
//        }
        return false;
    }

    private static boolean identifyString( char c, int i, LinkedHashMap<String, String> resultCifaMap, int n  ) {
        if ( c == '"' ) {
            if ( flag2 ) {
                resultCifaMap.put(n + "-" + i + "\t\t\t" + Constant.STRING + "\t\t\t" + Token.tokenMap.get(Constant.STRING) + "\t", string);
                record = string;
                tokensMap.put(string, Constant.SEPARATOR);
                string = "";
                flag2 = false;
                resultCifaMap.put(n + "-" + i + "\t\t\t" + Constant.SEPARATOR + "\t\t" + Token.tokenMap.get(c+"") + "\t", c+"");
                record = c+"";
                tokensMap.put(c+"", Constant.SEPARATOR);
                return true;
            }
            flagsIndex = i;
            resultCifaMap.put(n + "-" + i + "\t\t\t" + Constant.SEPARATOR + "\t\t" + Token.tokenMap.get(c+"") + "\t", c+"");
            record = c+"";
            tokensMap.put(c+"", Constant.SEPARATOR);
            flag2 = true;
            return true;
        } else if ( flag2 ) {
            string += c;
            return true;
        }
        return false;
    }

    /**
     * 注释//
     */
    private int isAnnotation(String s, BufferedReader br, String line, int i, int n, int beginIndex) throws IOException {
        if ( i >= line.length() ) {
            return i;
        }
        char c = line.charAt( i );
        for ( ; i < line.length(); i ++ ) {
            if ( i + 1 < line.length() && line.charAt( i ) == '*' && line.charAt( i + 1 ) == '/' ) {
                return i + 2;
            }
        }
        while ( (line = br.readLine()) != null ) {
            for ( int j = 0; j < line.length(); j ++ ) {
                if ( j + 1 < line.length() && line.charAt( j ) == '*' && line.charAt( j + 1 ) == '/' ) {
                    return i + 2;
                }
            }
        }
        return i;
    }

    /**
     * splitSign ： ", ; { } ( ) [ ]";
     */
    private int isSeparator(LinkedHashMap<String,String> resultCifaMap , String s, String line, int i, int n, int beginIndex) {

        if ( i >= line.length() ) {
            return i;
        }
        char c = line.charAt( i );
        if ( c == ',' || c == ';' ) {
            resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.SEPARATOR + "\t", c+"");
            record = s;
            tokensMap.put(s, Constant.SEPARATOR);
        }
        return i;
    }

    /**
     * 运算符 ： +、-、*、/、=、>、=、<=、＝＝、!= 、++、--、%、＆＆、｜｜、！
     * "+ - * / % & | < > = ! += -= /= *= %= <= >= != << >> ++ -- || &&"
     */
    private static int isOperator(LinkedHashMap<String, String> resultCifaMap, LinkedHashMap<String, String> errorCifaMap, String s, String line, int i, int n, int beginIndex) {
        if ( i >= line.length() ) {
            return i;
        }
        char c = line.charAt( i );
        if ( c == '+' || c == '-' || c == '*' || c == '%' || c == '<' || c == '>' || c == '=' || c == '&' || c == '!' || c == '|') {
            return isOperator(resultCifaMap, errorCifaMap, s + c, line, i + 1, n, beginIndex );
        } else if ( c == '/' ) {
            // 表示是注释//,该行后面的都不用管了
            if ( s.length() == 1 && s.charAt( 0 ) == '/' ) {
                return line.length();
            }
            return isOperator(resultCifaMap, errorCifaMap, s + c, line, i + 1, n, beginIndex );
        }else if (Token.runSign.contains( s ) && !s.equals("") ){
            resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.OPERATOR + "\t\t" +
                    Token.tokenMap.get(s) + "\t", s);
            tokensMap.put(s, Constant.OPERATOR);
            record = s;
            return i;
        }
        return i;

    }

    /**
     * 数字开头，可能是整数、浮点数、字符串值、非法标识符、非法浮点数
     */
    private static int isDigit(LinkedHashMap<String, String> resultCifaMap, LinkedHashMap<String, String> errorCifaMap, String s, String line, int i, int n, int beginIndex, boolean f) {

        if ( i >= line.length() ) {
            System.out.println( "====================================>" + s );
            return i;
        }
        char c = line.charAt( i );
        if (Character.isDigit( c ) || ( c == '.' && s.length() >= 1 ) ) {
            if ( i < line.length() - 1 ) {
                return isDigit(resultCifaMap, errorCifaMap, s + c, line, i + 1, n, beginIndex, true);
            }
        }
        // 如果是空格或是分隔符，则停止，进入识别逻辑
        if ( s.length() >= 1 && ( line.length() - 1 == i || c == ' ' || Token.splitSign.contains(c+"") ) ){
            System.out.println( "---------------->" + s );
            // 全是数字 --> 整数， 非法整数  （8进制，10进制）
            if ( allIsDigit( s ) ) {
                // 非法8进制
                if ( s.charAt( 0 ) == '0' && ( s.contains("8") || s.contains("9") ) ) {
                    System.out.println( "非法8进制 ： " + s );
                    errorCifaMap.put(n + "-" + beginIndex + "\t\t\tillegal " + Constant.INT + "\t\t\t\t" +
                            Token.tokenMap.get(Constant.INT) + "\t", s);
                } else {
                    resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.INT + "\t\t\t" +
                            Token.tokenMap.get(Constant.INT) + "\t", s);
                    tokensMap.put(s, Constant.INT);
                }
            }

            // 不全是数字，而且其中没有小数点，则可能是 ----> （非法）16进制、非法的标识符、字符串值
            else if ( !allIsDigit(s) && points( s ) == 0  ) {
                // 16进制
                // 获取倒数第n个已经识别过的符号
                String token1 = getTokenByCountdownId(resultCifaMap, 1);
                if ( Token.sixteen.contains( token1 ) ) {
                    if ( countX(s) > 1 || countX(s) == -1  ) {
                        errorCifaMap.put(n + "-" + beginIndex + "\t\t\tillegal " + Constant.INT + "\t\t\t\t" +
                                Token.tokenMap.get(Constant.INT) + "\t", s);
                    }

                    // 是16进制
                    else if ( s.charAt(0) == '0' && ( s.charAt(1) == 'X' || s.charAt(1) == 'x' ) ) {
                        resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.INT + "\t\t\t" +
                                Token.tokenMap.get(Constant.INT) + "\t", s);
                    }
                }

                // 非法 标识符
                else if( Token.flag.contains( record ) ) {
                    // 以数字开头的 非法的标识符
                    System.out.println( "error : " + record );
                    errorCifaMap.put(n + "-" + beginIndex + "\t\t\tillegal " + Constant.IDENTIFIER + "\t\t\t" +
                            Token.tokenMap.get(Constant.IDENTIFIER) + "\t", s);
                }
                // 字符串
                else if ( record.equals('"' + "") ){
                    System.out.println("----->" + s);
                    resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.STRING + "\t\t\t" +
                            Token.tokenMap.get(Constant.STRING) + "\t", s);
                    tokensMap.put(s, Constant.STRING);
                    record = s;
                } else {
                    // 以数字开头的 非法的标识符
                    System.out.println( "error : " + record );
                    errorCifaMap.put(n + "-" + beginIndex + "\t\t\tillegal " + Constant.IDENTIFIER + "\t\t\t" +
                            Token.tokenMap.get(Constant.IDENTIFIER) + "\t", s);
                }
            }

            // 不全是数字且有小数点.  如果还包含 e E 则可能是 （非法）（科学计数法的） 浮点数
            else if( points( s ) == 1  ) {
                if ( countE(s) > 1 || countE(s) == -1 ) {
                    errorCifaMap.put(n + "-" + beginIndex + "\t\t\tillegal " + Constant.FLOAT + "\t\t\t\t" +
                            Token.tokenMap.get(Constant.FLOAT) + "\t", s);
                } else {
                    System.out.println( " . : " + s );
                    resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.FLOAT + "\t\t\t" +
                            Token.tokenMap.get(Constant.FLOAT) + "\t", s);
                    tokensMap.put(s, Constant.FLOAT);
                    record = s;
                }


            }
            // 包含了多个 . 则是非法的浮点数
            else if ( points(s) >= 1 ) {
                System.out.println( " error : " + s );
                errorCifaMap.put(n + "-" + beginIndex + "\t\t\tillegal " + Constant.FLOAT + "\t\t\t\t" +
                        Token.tokenMap.get(Constant.FLOAT) + "\t", s);
                record = s;
            }
            // 如果不包含. 则是整数类型
            else if ( !s.contains(".") ) {
                resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.INT + "\t\t\t" +
                        Token.tokenMap.get(Constant.INT) + "\t", s);
                tokensMap.put(s, Constant.INT);
                record = s;
            }

            return i;
        }
        // 以数字开头，但后面带有非数字和非.的 也就是可能是 不合法的标识符 或是 字符串
        else if ( s.length() >= 1 ) {
            return isDigit(resultCifaMap, errorCifaMap, s + c, line, i + 1, n, beginIndex, true );
        }
        return i;

    }

    /**
     * 计算 s 中的 x X + 的 总数
     */
    private static int countE(String s) {
        int n = 0;
        int m = 0;
        int count = 0;
        boolean f = false;
        for ( int i = 0; i < s.length(); i ++ ) {

            if ( s.charAt(i) == '.' ) {
                f = true;
            }
            if ( !f && s.charAt( 0 ) == '0' ) {
                count ++;
            }

            if ( s.charAt( i ) == 'e' || s.charAt( i ) == 'E' ) {
                n ++;
            } else if( s.charAt( i ) == '+'  ) {
                m ++;
            }
            // 表示存在非xX的其它字母，则不可能是十六进制，返回-1
            else if (Character.isLetter(s.charAt(i)) ) {
                return -1;
            }
        }
        if ( count > 1 || n > 1 || m > 1 || s.charAt( s.length() - 1 ) == '+' ) {
            return 2;
        }
        return n;
    }

    /**
     * 计算s中X和x的个数
     */
    private static int countX(String s) {
        int n = 0;
        for ( int i = 0; i < s.length(); i ++ ) {
            if ( s.charAt( i ) == 'x' || s.charAt( i ) == 'X' ) {
                n ++;
            }
            // 表示存在非xX的其它字母，则不可能是十六进制，返回-1
            else if (Character.isLetter(s.charAt(i)) ) {
                return -1;
            }
        }
        return n;
    }

    /**
     * 获取倒数第n个token
     */
    private static String getTokenByCountdownId(LinkedHashMap<String, String> resultCifaMap, int n) {
        Set<String> key = resultCifaMap.keySet();
        int l = resultCifaMap.size() - n;
        int i = 0;
        for ( String k : key ) {
            String token = resultCifaMap.get( k );
            if ( i == l ) {
//                System.out.println("----token-->" + token);
                return token;
            }
            i++;
        }

        return "";
    }

    /**
     * 统计s中的小数点.的个数
     */
    private static int points(String s) {
        int n = 0;
        for( int i = 0; i < s.length(); i ++ ) {
            if ( s.charAt( i ) == '.' ){
                n ++;
            }
        }
        return n;
    }


    /**
     * 字母开头的，可能是 关键字 or 标识符
     */
    private static int isLetter(LinkedHashMap<String, String> resultCifaMap, LinkedHashMap<String, String> errorCifaMap, String s, String line, int i, int n, int beginIndex) {
        if ( i >= line.length() ) {
            return i;
        }
        char c = line.charAt( i );
        if (c == '_' || Character.isLetter( c ) || ( s.length() > 0 && Character.isDigit( c ) )) {
            return isLetter(resultCifaMap, errorCifaMap, s + c, line, i + 1, n, beginIndex );
        } else {
            // 表示是关键字
            if (Token.tokenMap.containsKey( s )) {
                if ( s.equals(Constant.INT) ) {
                    resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.KEYWORD + "\t\t" +
                            Token.tokenMap.get(Constant.INT) + "\t", s);
                    tokensMap.put(s, Constant.KEYWORD);
                    record = s;
                } else {
                    resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.KEYWORD + "\t\t" +
                            Token.tokenMap.get(s) + "\t", s);
                    tokensMap.put(s, Constant.KEYWORD);
                    record = s;
                }
                return i;
            }
            // 否则是标识符
            if ( !s.equals("") ) {
                if ( Character.isLetter(s.charAt( 0 )) || s.charAt(0) == '_' ) {
                    resultCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.IDENTIFIER + "\t\t" +
                            Token.tokenMap.get(Constant.IDENTIFIER) + "\t", s);
                    tokensMap.put(s, Constant.IDENTIFIER);
                    record = s;
                } else {
                    System.out.println( "error " + s );
                    errorCifaMap.put(n + "-" + beginIndex + "\t\t\t" + Constant.ERROR + "\t\t" +
                            Token.tokenMap.get(Constant.IDENTIFIER) + "\t", s);
//                   record = s;
                }

            }
            return i;
        }

    }

    /**
     * 判断这个word是否是纯数字
     */
    private static boolean allIsDigit(String s) {
        for ( int i = 0; i < s.length(); i ++ ) {
            if (!Character.isDigit( s.charAt(i) )) {
                return false;
            }
        }
        return true;
    }

}
