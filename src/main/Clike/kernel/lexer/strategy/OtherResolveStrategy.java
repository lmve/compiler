package Clike.kernel.lexer.strategy;


import Clike.kernel.lexer.constant.InitialStatus;
import Clike.kernel.lexer.exception.WordAnalyzerException;
import Clike.kernel.lexer.lexicalnalyzer.LexicalAnalyzer;

/**
 * 其他
 */
public class OtherResolveStrategy extends ResolveStrategy{
    @Override
    public Object resolveWord(int status, LexicalAnalyzer analyzer) {

        if(status == InitialStatus.Other_Status.statusCode){

            // 其他字符，直接异常
            analyzer.getWordAnalyzerExceptionList().add(
                    new WordAnalyzerException(analyzer.getCurrentCursor(),"Symbol invalid error: An invalid symbol occurs instead of a defined symbol!"));
        }

        return null;
    }
}
