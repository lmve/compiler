package Clike.kernel.lexer.strategy;


import Clike.kernel.lexer.lexicalnalyzer.LexicalAnalyzer;

/**
 * 不同状态单词的解析策略
 */
public abstract class ResolveStrategy {

    // 解析方法
    public abstract Object resolveWord(int status, LexicalAnalyzer analyzer);

}
