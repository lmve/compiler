package Clike;

import Clike.kernel.analyser.Analyser;
import Clike.kernel.analyser.intermediate;
import Clike.kernel.parser.Parser;
import Clike.kernel.target.Asm_Code;
import Clike.kernel.tokenizer.Tokenizer;

import java.io.File;

/**
 * 控制程序
 */
public class control {

    // 编译
    private Tokenizer tokenizer;
    private Parser parser;
    private Analyser analyser;
    private intermediate generator;
    private Asm_Code asm_code = new Asm_Code();

    public control(Tokenizer tokenizer, Parser parser, Analyser analyser, intermediate generator) {
        this.tokenizer = tokenizer;
        this.parser = parser;
        this.analyser = analyser;
        this.generator = generator;
    }

    public control() {

        tokenizer = new Tokenizer();
        // 加载语法文件
        parser = new Parser(new File("src/resource/grammar.txt"));
        analyser = new Analyser();
        generator = new intermediate();
    }

    public Tokenizer getTokenizer() {
        return tokenizer;
    }

    public void setTokenizer(Tokenizer tokenizer) {
        this.tokenizer = tokenizer;
    }

    public Parser getParser() {
        return parser;
    }

    public void setParser(Parser parser) {
        this.parser = parser;
    }

    public Analyser getAnalyser() {
        return analyser;
    }

    public void setAnalyser(Analyser analyser) {
        this.analyser = analyser;
    }

    public intermediate getGenerator() {
        return generator;
    }

    public void setGenerator(intermediate generator) {
        this.generator = generator;
    }


//    public asmCode getasmCodeGenerator() {
//        return asm_code;
//    }
////
//    public void setAsm_code(asmCode targetCodeGenerator) {
//        this.asm_code = targetCodeGenerator;
//    }

    public Asm_Code getasmCodeGenerator() {
        return asm_code;
    }
    public void setAsm_code(Asm_Code targetCodeGenerator) {
        this.asm_code = targetCodeGenerator;
    }
}
