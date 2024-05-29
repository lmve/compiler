package Clike.kernel.lexer.strategy;

import Clike.kernel.lexer.constant.InitialStatus;
import Clike.kernel.lexer.constant.Word;
import Clike.kernel.lexer.constant.WordDefinition;
import Clike.kernel.lexer.exception.WordAnalyzerException;
import Clike.kernel.lexer.lexicalnalyzer.LexicalAnalyzer;

/**
 * 字符串处理策略
 */
public class StringResolveStrategy extends ResolveStrategy{


    @Override
    public Object resolveWord(int status, LexicalAnalyzer analyzer) {

        if(status == InitialStatus.DoubleQuotes_Status.statusCode){
            // 双引号：字符串状态
            int preIndex = analyzer.getCurrentCursor();
            int index = preIndex ;
            // 源文件
            String source = analyzer.getSource();


            ++index ;
            char currentChar = source.charAt(index) ;
            while(currentChar != '"' && index < source.length() - 1){
                ++index;
                currentChar = source.charAt(index);
            }

            // 获取单词
            String strWord = source.substring(preIndex, index+1);
            // 首先判断是否存在异常
            if((index == source.length() - 1 && source.charAt(index) != '"') || !strWord.endsWith("\"")){
                // 如果 index 已经到了最后一个位置，但是这个 char 不为 " 双引号
                analyzer.getWordAnalyzerExceptionList().add(new WordAnalyzerException(preIndex , "Double quotes do not match in pairs"));
                // 没有匹配的双引号
            }
            // 存储
            analyzer.getWordPool().getWordDefinitionList()
                    .add(new WordDefinition(
                            new Word(strWord, strWord, "_String_")));


            // 同步 : 因为我们的 index = " 的时候才推出，所以需要向下移动一位
            ++index;
            analyzer.setCurrentCursor(index);

            return ""+strWord ;
        }
        return null ;
    }
}
