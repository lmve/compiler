package Clike.kernel.lexer.constant;

import java.util.ArrayList;
import java.util.List;

/**
 * WordPool类
 * 用于管理单词及其定义的集合。
 */
public class WordPool {
    // 单词定义列表
    private List<WordDefinition> wordDefinitionList = new ArrayList<>() ;

    public List<WordDefinition> getWordDefinitionList() {
        return wordDefinitionList;
    }
    /**
     * 获取单词定义列表。
     *
     * return 返回存储所有单词定义的列表。
     */
    public void setWordDefinitionList(List<WordDefinition> wordDefinitionList) {
        this.wordDefinitionList = wordDefinitionList;
    }

    @Override
    public String toString() {
        return "WordPool{" +
                "wordDefinitionList=" + wordDefinitionList +
                '}';
    }
}
