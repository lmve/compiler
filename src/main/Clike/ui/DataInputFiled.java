package Clike.ui;

import javafx.scene.control.TextInputDialog;

import java.util.Optional;

/**
 * 用于创建和管理一个文本输入对话框，以获取用户输入的数据。
 */
public class DataInputFiled {

    private TextInputDialog dialog = new TextInputDialog("input DATA");

    public DataInputFiled() {
        this.initialize();
    }

    public void initialize(){
        dialog.setTitle("Data Input Dialog");
        dialog.setHeaderText("数据输入面板");
        dialog.setContentText("Please enter your data:");
    }

    public String getInputData(){
        // 清除缓存数据
        Optional<String> res = dialog.showAndWait();
        if (res.isPresent()){
            return res.get();
        }else {
            return null ;
        }
    }
}
