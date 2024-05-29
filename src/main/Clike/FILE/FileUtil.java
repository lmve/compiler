package Clike.FILE;

import java.io.File;

/**
 * 文件工具类，提供静态方法来获取文件内容。
 */
public class FileUtil {

    /**
     * 获取指定文件的内容。
     *
     * param file 指定的文件对象。
     * return 文件的内容，如果发生异常则返回空字符串。
     */
    public static String getFileContent(File file){
        // 获取文件内容
        String content = "";
        try {
            content = FileUtil.readFile(file);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return content;
    }
    /**
     * 读取文件并返回其内容。
     *
     * param file 指定的文件对象。
     * return 文件的内容，如果发生异常则返回空字符串。
     */
    private static String readFile(File file) {
        StringBuilder sb = new StringBuilder();
        try {
            java.io.FileReader fr = new java.io.FileReader(file);
            java.io.BufferedReader br = new java.io.BufferedReader(fr);
            String line = null;
            while ((line = br.readLine()) != null) {
                sb.append(line).append('\n');
            }
            br.close();
            fr.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb.toString();
    }

}
