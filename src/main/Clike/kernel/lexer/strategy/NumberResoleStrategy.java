package Clike.kernel.lexer.strategy;


import Clike.kernel.lexer.constant.InitialStatus;
import Clike.kernel.lexer.constant.Word;
import Clike.kernel.lexer.constant.WordDefinition;
import Clike.kernel.lexer.constant.WordMappingPool;
import Clike.kernel.lexer.exception.WordAnalyzerException;
import Clike.kernel.lexer.handle.StringStreamResolver;
import Clike.kernel.lexer.lexicalnalyzer.LexicalAnalyzer;

/**
 * 用于解析数字
 * 判断状态是否为数字状态。
 * 获取当前光标位置，初始化前缀索引和数字类型。
 * 根据光标位置获取当前字符。
 * 判断字符下标是否超过源程序长度。
 * 如果是数字，进行如下判断：
 * 如果数字是0，判断后续字符情况，可能是小数、八进制或十六进制。
 * 如果数字是1-9，判断后续字符情况，可能是小数或实数。
 * 根据数字类型设置词性标记。
 * 截取数字字符串，并创建一个Word对象表示数字。
 * 将Word对象添加到单词池中。
 * 更新光标位置。
 * 返回数字的Word对象。
 */
public class NumberResoleStrategy extends ResolveStrategy{

    @Override
    public Object resolveWord(int status, LexicalAnalyzer analyzer) {

        if(status == InitialStatus.Number_Status.statusCode){
            // 数字情况
            int index = analyzer.getCurrentCursor();
            int preIndex = index ;
            // 数字类型
            String kind = "_Real_Number_" ;
            String source = analyzer.getSource();
            char currentChar = source.charAt(index);


            // 判断字符下标是否超过源程序长度
            if(StringStreamResolver.hashNextElement(source,index)){

                // 必须是数字
                while(Character.isDigit(currentChar) && index < source.length() -1){

                    // 如果这个数字是 0
                    if(currentChar == '0'){
                        ++index;
                        currentChar = source.charAt(index);

                        // 第一种情况：后面是小数点
                        if(currentChar == '.'){
                            ++index;
                            currentChar = source.charAt(index);
                            while(Character.isDigit(currentChar)){
                                ++index;
                                currentChar = source.charAt(index);
                                if(Character.isDigit(currentChar)){
                                    // 是数字不影响
                                }
                                else if(currentChar == 'e' || currentChar == 'E'){
                                    ++index;
                                    currentChar = source.charAt(index);
                                    if(currentChar=='-' || currentChar =='+'){
                                        ++index;
                                        currentChar = source.charAt(index);
                                        while(Character.isDigit(currentChar)){
                                            ++index;
                                            currentChar = source.charAt(index);
                                        }

                                    }else if(Character.isDigit(currentChar)){
                                        // 数字
                                        while(Character.isDigit(currentChar)){
                                            ++index;
                                            currentChar = source.charAt(index);
                                        }
                                    }


                                }else if(WordMappingPool.properties.containsKey(currentChar) || Character.isSpaceChar(currentChar)){
                                    // 小数浮点数

                                }else {
                                    // 其他字符，错误
                                    analyzer.getWordAnalyzerExceptionList()
                                            .add(
                                                    new WordAnalyzerException(index,
                                                            "NumberMatchException:error character->" + currentChar));

                                }

                            }
                        }else if(currentChar >= '0' && currentChar <= '7'){
                            // 第三种情况：后面 0-7 的数字
                            ++index;
                            currentChar = source.charAt(index);
                            while(currentChar >= '0' && currentChar <= '7'){
                                ++index;
                                currentChar = source.charAt(index);
                            }
                            // 八进制的数

                        }else if(currentChar == 'x' || currentChar == 'X'){
                            // 第二种情况：x|X
                            ++index ;
                            currentChar = source.charAt(index);
                            while(Character.isDigit(currentChar) ||
                                    (currentChar >= 'a' && currentChar <= 'f') || (currentChar >= 'A' && currentChar <= 'Z')){
                                ++index ;
                                currentChar = source.charAt(index);
                            }
                            // 十六进制的数
                        }

                    }else {
                        // 这个数字为 1-9
                        ++index ;
                        currentChar = source.charAt(index);

                        while(Character.isDigit(currentChar)){
                            ++index ;
                            currentChar = source.charAt(index);
                        }

                        if(currentChar == '.'){
                            // 小数
                            ++index ;
                            currentChar = source.charAt(index);

                            while(Character.isDigit(currentChar)){
                                ++index ;
                                currentChar = source.charAt(index);
                            }

                            // 实数
                            if(currentChar == 'e' || currentChar == 'E'){
                                ++index ;
                                currentChar = source.charAt(index);

                                if(Character.isDigit(currentChar)){
                                    ++index ;
                                    currentChar = source.charAt(index);
                                    while(Character.isDigit(currentChar)){
                                        ++index ;
                                        currentChar = source.charAt(index);
                                    }
                                }else if(currentChar == '-' || currentChar == '+'){
                                    ++index ;
                                    currentChar = source.charAt(index);
                                    while(Character.isDigit(currentChar)){
                                        ++index ;
                                        currentChar = source.charAt(index);
                                    }
                                }else{
                                    // 错误
                                    // 其他字符，错误
                                    analyzer.getWordAnalyzerExceptionList()
                                            .add(
                                                    new WordAnalyzerException(index,
                                                            "NumberMatchException:error character->" + currentChar));
                                }

                            }else if(WordMappingPool.properties.containsKey(currentChar)){

                            }else {
                                // 其他字符，错误
                                analyzer.getWordAnalyzerExceptionList()
                                        .add(
                                                new WordAnalyzerException(index,
                                                        "NumberMatchException:error character->" + currentChar));
                            }


                        }else if(currentChar == 'e' || currentChar == 'E'){

                        }else if(WordMappingPool.properties.containsKey(currentChar)
                                || Character.isSpaceChar(currentChar)){
                            // 空白界符，运算符 ——> 整数
                            kind = "_Integer_";

                        }else {
                            // 其他字符，错误
                            analyzer.getWordAnalyzerExceptionList()
                                    .add(
                                            new WordAnalyzerException(index,
                                                    "NumberMatchException:error character->" + currentChar));

                        }
                    }
                }
            }

            // 截取数字
            String number = source.substring(preIndex, index);
            Word word = new Word("number",number);
            word.setToken(WordMappingPool.getTokenValue(kind));

            // 添加单词
            analyzer.getWordPool().getWordDefinitionList().add(new WordDefinition(word));

            // 同步下标
            analyzer.setCurrentCursor(index);

            return ""+word ;

        }

        return null;
    }
}
