package Clike.kernel.lexer.exception;


import lombok.Data;
import lombok.ToString;
import Clike.kernel.lexer.status.exegesis;

/**
 * exegesisException 类
 * 这个异常类用于处理注释不匹配的情况
 */
@Data
@ToString
public class exegesisException extends WordAnalyzerException{

    private int row;
    private int col;
    private String message ;

    public exegesisException(exegesis status){
        super("exegesisException");
        this.row = status.row;
        this.col = status.column ;
        this.message = "exegesisException";

    }

}
