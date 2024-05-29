package Clike.kernel.lexer.constant;

import Clike.kernel.lexer.exception.WordAnalyzerException;

/**
 * WordDefinition类
 * 用于存储单词及其定义，记录分析单词时遇到的异常信息。
 */
public class WordDefinition {

    // 单词
    private Word word ;
    // 单词异常信息
    private WordAnalyzerException exception ;
    public WordDefinition(Word word) {
        this.word = word;
    }
    public WordDefinition() {
    }

    public WordDefinition(Word word, WordAnalyzerException exception) {
        this.word = word;
        this.exception = exception;
    }

    public Word getWord() {
        return word;
    }

    public void setWord(Word word) {
        this.word = word;
    }

    public WordAnalyzerException getException() {
        return exception;
    }

    public void setException(WordAnalyzerException exception) {
        this.exception = exception;
    }


    @Override
    public String toString() {
        return "WordDefinition{" +
                "word=" + word +
                ", exception=" + exception +
                '}';
    }
}
