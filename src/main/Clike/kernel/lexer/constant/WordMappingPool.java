package Clike.kernel.lexer.constant;

import Clike.FILE.FileReaderUtil;

import java.io.IOException;
import java.util.*;

/**
 * WordMappingPool的类
 * 主要用于映射单词到特定的类别码
 * 或者判断一个单词是否属于特定的类别
 */
public class WordMappingPool {

    // 保留字符池：包括关键字，运算符，界符，单词类别：从配置文件加载
    public static Map reservedCharactersPool = new HashMap<String,String>();
    // 资源加载器
    public static Properties properties = new Properties();

    // 运算符种码表
    public static List<Integer> operatorsList = new ArrayList<Integer>();
    // 关键字种码表
    public static List<Integer> keywordsList = new ArrayList<>();
    // 界符
    public static List<Integer> delimitersList = new ArrayList<>();
    // 特殊字符: 主要为中文字符
    public static String specialList = "`～·。！@@#$…×（）『』“”：；，《》？、￥（）——【】‘；：’。，、？]|\n|\r|\t";


    // 手动添加特殊字符，无法使用配置文件方式配置的
    static {
        // 分别装载
        FileReaderUtil<Integer> fileReaderUtil = new FileReaderUtil<>();
        try {

            // 获取资源目录
            fileReaderUtil.readLineToListPool( WordMappingPool.class.getClassLoader().getResourceAsStream("keyword.txt"),keywordsList);
            fileReaderUtil.readLineToListPool( WordMappingPool.class.getClassLoader().getResourceAsStream("operator.txt"),operatorsList);
            fileReaderUtil.readLineToListPool( WordMappingPool.class.getClassLoader().getResourceAsStream("delimiter.txt"),delimitersList);  // 界符

        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            properties.load(WordMappingPool.class.getClassLoader().getResourceAsStream("wordTokenMap.properties"));
            properties.put("*","2102");
            properties.put("/","2103");
            properties.put("==","2200");
            properties.put("!=","2201");
            properties.put(">","2202");
            properties.put("<","2203");
            properties.put(">=","2204");
            properties.put("<=","2205");
            properties.put("+=","2501");
            properties.put("-=","2502");
            properties.put("%=","2505");
            properties.put("!","2402");
            properties.put("=","2500");
            properties.put("/=","2504");
            properties.put("*=","2503");
            properties.put("?:","2600");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    // 判断是否是关键字
    public static boolean isKeyWord(String keyword){

        // 首先判断大池子是否包含
        if(properties.containsKey(keyword)){
            // 获取 key 关键字的 value 查看是否在 keywordList 中
            Integer value = Integer.parseInt((String) properties.get(keyword));
            return keywordsList.contains(value);
        }

        return false ;
    }

    // 判断是否是运算符
    public static boolean isOperator(String keyword){

        // 首先判断是否存在于映射池中，如果不存在则一定不是运算符
        if (properties.containsKey(keyword)) {
            // 获取 value 值，判断是否存在于运算符表中
            int value = Integer.parseInt((String) properties.get(keyword));

            return operatorsList.contains(value);

        }else{
            // 不是运算符
            return false;
        }

    }

    // 判断是否是界符
    public static boolean isDelimiter(String key){

        // 首先判断是否存在于映射池中，如果不存在则一定不是界符
        if (properties.containsKey(key)) {
            // 获取 value 值，判断是否存在于运算符表中
            int value = Integer.parseInt((String) properties.get(key));

            return delimitersList.contains(value);

        }else{
            // 不是运算符
            return false;
        }

    }

    // 获取一个单词的种别码
    public static Integer getTokenValue(String key){

        if(properties.containsKey(key)){
            return Integer.parseInt((String) properties.get(key));
        }
        return -1 ;
    }


    // 通过单词的种别码获取到单词的类别
    public static String getWordClassByTokenValue(Integer tokenValue){

        if(properties.containsValue(tokenValue)){
            // 获取 token 对应的 key
            Set<Object> keySet = properties.keySet();

            for (Object str : keySet) {
                String key = (String) str ;
                if(properties.getProperty(key).equals(""+tokenValue)){
                    // 找到了 key
                    return key ;
                }
            }
        }
        // 不包含这个 token
        return null;
    }



    public WordMappingPool() throws IOException {

    }
}
