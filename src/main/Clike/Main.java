package Clike;


import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
/**
 * 编译系统入口
 */
public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        Parent root = FXMLLoader.load(getClass().getResource("compiler.fxml"));
        primaryStage.setTitle("LM Compiler");
        primaryStage.setScene(new Scene(root, 1400 , 830));
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}

