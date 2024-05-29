package Clike;


import Clike.FILE.FileUtil;
import Clike.kernel.analyser.Analyser;
import Clike.kernel.analyser.FourItem;
import Clike.kernel.analyser.Func;
import Clike.kernel.analyser.intermediate;
import Clike.kernel.lexer.lexerCompiler;
import Clike.kernel.parser.Parser;
import Clike.kernel.target.Asm_Code;
import Clike.kernel.tokenizer.Token;
import Clike.kernel.tokenizer.Tokenizer;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ContextMenu;
import javafx.scene.control.MenuItem;
import javafx.scene.control.TextArea;
import javafx.scene.layout.BorderPane;
import javafx.stage.FileChooser;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.*;


/**
 *  总控制类
 *  业务逻辑与界面交互部分
 */
public class Compiler implements Initializable {

    @FXML
    private BorderPane borderPane ;


    @FXML
    private TextArea sourceEditArea ;

    @FXML
    private TextArea resultArea;

    @FXML
    private TextArea codeArea;

    @FXML
    private MenuItem OpenFileButton ;

    private File sourceFile ;

    LinkedHashMap<String, String> resultMap = new LinkedHashMap<>();
    LinkedHashMap<String, String> errortMap = new LinkedHashMap<>();

    private control compileClient = new control();


    /**
     * methodName : 全局UI控件 事件注册
     */
    public void allEventRegister(){

        // 打开源文件
        this.OpenFileButton.setOnAction((event)->{
            // 选择源文件
            FileChooser fileChooser = new FileChooser();

            fileChooser.setInitialDirectory(new File("src/resource"));
            fileChooser.setTitle("Open Source File");

            // 过滤器
            fileChooser.getExtensionFilters().addAll(
                    new FileChooser.ExtensionFilter("文本文件","*.txt"),
                    new FileChooser.ExtensionFilter("C++源程序", "*.cpp"),
                    new FileChooser.ExtensionFilter("C源程序", "*.c"),
                    new FileChooser.ExtensionFilter("Java源程序", "*.java")

            );

            // 打开的文件file
            this.sourceFile = fileChooser.showOpenDialog(new ContextMenu());

            if (this.sourceFile != null) {
                // 交给本地 代码编辑区域
                this.sourceEditAreaFill(this.sourceFile);
            }

        });
    }

    /**
     * 代码编辑区域内容填充
     */
    private void sourceEditAreaFill(File sourceFile) {
        // 获取文件内容
        String sourceFileContent = FileUtil.getFileContent(sourceFile);
        // 填充
        this.sourceEditArea.setText(sourceFileContent);
    }

    /** 词法分析 */
    public void ciFaAnalyze(){

        // 获取源代码
        String text = this.sourceEditArea.getText();
        String[] lines = text.split("\\r?\\n");
        System.out.println( Arrays.toString( lines ) );

        //CompilerClient.doLexicalAnalysis(lines);
//        System.out.println(this.sourceEditArea.getText());

        exeCiFaCompiler(lines);
        compileClient.getTokenizer().analysis(this.sourceEditArea.getText());
        List<Token> tokens = compileClient.getTokenizer().getTokens();
        // 遍历输出结果
        for (int i = 0; i < tokens.size() - 1; i++) {
            Token token = tokens.get(i);
//            this.resultArea.appendText(token.getValue()+"\t\t"+token.getType().print()+"\n");
        }
    }

    private void exeCiFaCompiler(String[] lines) {
        resultMap = new LinkedHashMap<>();
        errortMap = new LinkedHashMap<>();
        HashMap<String, LinkedHashMap<String, String>> map = null;
        try {
            // lexerCompiler 是词法分析工具，获取结果集合
            map = lexerCompiler.getCiFaText( lines );

        } catch (IOException ex) {
            ex.printStackTrace();
        }
        if ( map != null ) {
            resultMap = map.get("result");
            errortMap = map.get("error");
            Set<String> resultSet = resultMap.keySet();
            Set<String> errorSet = errortMap.keySet();
            StringBuilder rightText = new StringBuilder();
            rightText.append("行号-下标\t\t种类\t\t\ttoken\t\t字符\n");
            this.codeArea.setText("");
            for (String key : resultSet) {
                this.codeArea.appendText(key + "\t" + resultMap.get(key) + "\n");
            }
            StringBuilder lowText = new StringBuilder();
            this.resultArea.setText("");
            for (String key : errorSet) {
                this.resultArea.appendText(key + "\t" + errortMap.get(key) + "\n");
            }
        }
    }

    /** 语法分析 */
    public void yuFaAnalyze(){
        // 词法分析阶段检查
        Tokenizer tokenizer = this.compileClient.getTokenizer();

        if ( errortMap.size() != 0 ) {

            resultArea.setText("ERROR: 词法分析阶段检查出错误\n");
            return;
        }

        // 进行语法分析
        this.compileClient.getParser().parse(tokenizer);
        List<Error> errors = this.compileClient.getParser().getErrors();
        for (Error error : errors) {
            resultArea.appendText(error + "\n");
        }
        if (errors.size() == 0) {
            resultArea.appendText("语法检查完成 无语法错误\n");
            Parser parser = this.compileClient.getParser();
            parser.dump(0,this.codeArea);
        }
    }

    /** 语义分析 */
    public void sematicAnalyze(){
        // 环境准备
        this.codeArea.setText("");
        Parser parser = this.compileClient.getParser();

        // 错误检查
        if (parser.getRoot() == null) {
            resultArea.setText("未进行语法分析\n");
            return;
        }
        String text = resultArea.getText();
        if (text.isEmpty() || !text.contains("无语法错误")) {
            resultArea.setText("存在错误 无法进行语义分析\n");
            return;
        }

        // 开始语义分析
        Analyser analyser = this.compileClient.getAnalyser();
        analyser.analyse(parser.getRoot());

        // 错误处理
        List<Error> errors = analyser.getErrors();
        for (Error error : errors) {
            codeArea.appendText(error + "\n");
        }
        if (errors.size() == 0) {
            System.out.println("语法分析没有错误，开始进行语义分析");
            intermediate generator = this.compileClient.getGenerator();

            // 设置 开始函数
            System.out.println("函数表");
            Map<String, Func> funcsInfoMap = analyser.getFuncsInfoMap();
            for (String s : funcsInfoMap.keySet()) {
                Func funcInfo = funcsInfoMap.get(s);

                String data = s + "\t" + "\n" + "\t" + funcInfo.toString();
                System.out.println(data);
                this.codeArea.appendText(data + "\n");
            }
        }
    }

    /** 中间代码生成 */
    public void itermidiateCode(){
        // 环境准备
        this.codeArea.setText("");
        Parser parser = this.compileClient.getParser();

        // 错误检查
        if (parser.getRoot() == null) {
            resultArea.setText("未进行语法分析\n");
            return;
        }
        String text = resultArea.getText();
        if (text.isEmpty() || !text.contains("无语法错误")) {
            resultArea.setText("存在错误 无法进行语义分析\n");
            return;
        }

        // 开始语义分析
        Analyser analyser = this.compileClient.getAnalyser();
        analyser.analyse(parser.getRoot());

        // 错误处理
        List<Error> errors = analyser.getErrors();
        for (Error error : errors) {
            codeArea.appendText(error + "\n");
        }
        if (errors.size() == 0) {
            System.out.println("语法分析没有错误，开始进行语义分析");
            intermediate generator = this.compileClient.getGenerator();

            // 设置 开始函数
            System.out.println("函数表");
            Map<String, Func> funcsInfoMap = analyser.getFuncsInfoMap();
            for (String s : funcsInfoMap.keySet()) {
                Func funcInfo = funcsInfoMap.get(s);

                String data = s + "\t" + "\n"+ "\t"+funcInfo.toString();
                System.out.println(data);
                this.codeArea.appendText(data+"\n");
            }

            // 根据函数表和语法分析树生成四元式
            generator.generate(analyser.getFuncsInfoMap(), analyser.getRoot());
            List<FourItem> fourItems = generator.getFourItemList();
            for (int i = 0; i < fourItems.size(); i++) {
                FourItem item = fourItems.get(i);
                this.codeArea.appendText(String.format("%-3d:", i + 1));
                this.codeArea.appendText(item + "\n");
            }
        }
    }


    /**
     * TODO
     * 编译运行
     */
    public void compilerRun() throws IOException {

        this.codeArea.clear();
        Asm_Code generator = this.compileClient.getasmCodeGenerator();
        generator.setFourItemList(this.compileClient.getGenerator().getFourItemList());
        generator.setFuncsInfoMap(this.compileClient.getAnalyser().getFuncsInfoMap());
        generator.print();

        String targetCode = generator.show();
        this.codeArea.setText(targetCode);
    }

    /**
     * UI 程序初始化
      */
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        // 注册全局事件
        this.allEventRegister();
    }
}
