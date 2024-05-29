package Clike.kernel.lexer.constant;

/**
 * 初始状态枚举类，用于定义不同类型的初始状态。
 * 每种状态都与一个整数代码相关联，以便于在程序中进行状态识别和转换。
 */
public enum InitialStatus {
    Space_Status(0),
    Char_Status(1),
    Number_Status(2),
    Operator_Status(3),
    Delimiter_Status(4),
    SingleQuotes_Status(5),
    DoubleQuotes_Status(6),
    Other_Status(7),
    ;

    public int statusCode;

    InitialStatus(int statusCode) {
        this.statusCode = statusCode;
    }

    public int getStatusCode() {
        return statusCode;
    }
}
