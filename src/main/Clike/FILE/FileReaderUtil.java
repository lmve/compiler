package Clike.FILE;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
/**
 * 一个通用的文件读取工具类，支持将文件内容按行读取并处理。
 */
public class FileReaderUtil<T> {
    /**
     * 将输入流中的文本内容逐行读取并转换为整数添加到给定的列表中。
     *
     * param is 输入流，代表要读取的文件或数据源。
     * param list 用于存储转换后的整数的列表。
     * return 返回传入的列表，其中已添加了读取并转换为整数的文件内容。
     * throws IOException 如果读取输入流时发生错误。
     */
    public List readLineToListPool(InputStream is, List<Integer> list) throws IOException {

        StringBuilder sb = new StringBuilder();
        //转成字符流
        InputStreamReader isReader = new InputStreamReader(is, StandardCharsets.UTF_8);
        BufferedReader br = new BufferedReader(isReader);
        //循环逐行读取
        while (br.ready()) {
            //sb.append(br.readLine()).append('\n');
            list.add(Integer.parseInt(br.readLine()));
        }
        //关闭流
        br.close();

        return list;

    }

    /**
     * 读取输入流代表的文件内容，按行返回。
     *
     * param is 输入流，代表要读取的文件或数据源。
     * return 包含文件所有行内容的列表。
     * throws IOException 如果读取输入流时发生错误。
     */
    public static List<String> readFileContentByLine(InputStream is) throws IOException {
        List<String> content = new ArrayList<String>();

        //转成字符流
        InputStreamReader isReader = new InputStreamReader(is, StandardCharsets.UTF_8);
        BufferedReader br = new BufferedReader(isReader);
        //循环逐行读取
        while (br.ready()) {
            String line = br.readLine();
            content.add(line);
        }
        //关闭流
        br.close();
        isReader.close();
        return content;
    }

}
