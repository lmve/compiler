package Clike.kernel.lexer.exception;


/**
 * WordAnalyzerException类，用于在单词分析过程中捕获异常。
 * 继承自RuntimeException，添加了行、列、光标位置和错误单词等信息。
 */
public class WordAnalyzerException extends RuntimeException{

    // 错误出现的行列
    private int row ;
    private int column ;
    private int cursor ;
    // 出现错误的单词
    private String errorWords ;

    // 异常信息
    private String message ;

    public WordAnalyzerException() {
    }

    public WordAnalyzerException(String message){

        this.message = message ;
    }

    public WordAnalyzerException(int row, int column, int cursor, String message) {

        this.row = row;
        this.column = column;
        this.cursor = cursor;
        this.message = message;
    }

    public WordAnalyzerException(int row, int column, String message) {

        this.row = row;
        this.column = column;
        this.message = message;
    }
    public WordAnalyzerException(int cursor, String message) {

        this.cursor = cursor;
        this.message = message;
    }


    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public int getColumn() {
        return column;
    }

    public void setColumn(int column) {
        this.column = column;
    }

    public int getCursor() {
        return cursor;
    }

    public void setCursor(int cursor) {
        this.cursor = cursor;
    }

    public String getErrorWords() {
        return errorWords;
    }

    public void setErrorWords(String errorWords) {
        this.errorWords = errorWords;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }


    @Override
    public String toString() {
        return "WordAnalyzerException{" +
                "row=" + row +
                ", column=" + column +
                ", cursor=" + cursor +
                ", errorWords='" + errorWords + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}


