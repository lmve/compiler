package Clike.kernel.lexer.handle;


import Clike.kernel.lexer.lexicalnalyzer.LexicalAnalyzer;
import Clike.kernel.lexer.strategy.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 分析器处理器类，提供多种词法分析策略的处理能力。
 */
public class AnalyzerHandler {

    public static List<ResolveStrategy> handleStrategies = new ArrayList<>();

    static {
        // 初始化解析策略列表
        handleStrategies.add(new IdentifierResolveStrategy());
        handleStrategies.add(new NumberResoleStrategy());
        handleStrategies.add(new CharacterResolveStrategy());
        handleStrategies.add(new StringResolveStrategy());
        handleStrategies.add(new SymbolResolveStrategy());
        handleStrategies.add(new OtherResolveStrategy());

    }
    /**
     * 使用责任链模式执行解析策略。
     *
     * param statusCode 用于指示解析状态的代码。
     * param analyzer 用于执行词法分析的分析器对象。
     * return 返回解析结果，如果无结果则返回null。
     */
    public static Object runHandleStrategy(int statusCode, LexicalAnalyzer analyzer){

        Object res = null;
        for (ResolveStrategy handleStrategy : handleStrategies) {
            Object o = handleStrategy.resolveWord(statusCode, analyzer);
            if (o != null){
                res = o ;
                break;
            }
        }
        return res ;
    }

    // 启动词法处理器：
    public static void run(String filePath ,LexicalAnalyzer lexicalAnalyzer) throws IOException {

        String source = StringStreamResolver.preResolve(filePath, lexicalAnalyzer);
        assert source != null;
        run(new StringBuilder(source),lexicalAnalyzer);
        lexicalAnalyzer.postHandler();
    }

    public static void run(StringBuilder source , LexicalAnalyzer analyzer){

        analyzer.setSource(source.toString());

        StringStreamResolver.sourceCodeResolver(source.toString(),analyzer) ;

    }


}
