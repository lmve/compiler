package Clike.kernel.target;


import Clike.kernel.analyser.FourItem;
import Clike.kernel.analyser.Func;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Asm_Code {
    /* 四元式列表 */
    private List<FourItem> fourItemList = new ArrayList<>();
    /* 函数表 */
    private Map<String, Func> funcsInfoMap;
    /* 扩展段的偏移 */
    private static int extendOffset = 0;

    /* 其他函数与主函数做以区别 0: 主函数 1: 其他函数 */
    private static int flag = 0;
    /* get set */
    public List<FourItem> getFourItemList() {
        return fourItemList;
    }

    public void setFourItemList(List<FourItem> fourItemList) {
        this.fourItemList = fourItemList;
    }

    public Map<String, Func> getFuncsInfoMap() {
        return funcsInfoMap;
    }

    public void setFuncsInfoMap(Map<String, Func> funcsInfoMap) {
        this.funcsInfoMap = funcsInfoMap;
    }
    /* 生成各段的声明 及 扩展段、代码段的定义 */
    public String define_section(){
        return "; cs, ds, ss, es 分别为代码段，数据段，堆栈段，扩展段\n" +
                "assume cs:code,ds:data,ss:stack,es:extended\n" +
                "\n" +
                "; 扩展段定义\n" +
                "extended segment\n" +
                "\tdb 1024 dup (0)\n" +
                "extended ends\n" +
                "\n" +
                "; 堆栈段定义\n" +
                "stack segment\n" +
                "\tdb 1024 dup (0)\n" +
                "stack ends\n";
    }
    /**
     * 生成数据段
     * 主要是变量的定义
     */
    public String data_section(){
        String str = "; 数据段定义\n" +
                "data segment\n" +
                "; 数据段长度与起始位置\n" +
                "\t_buff_p db 256 dup (24h)\n" +
                "\t_buff_s db 256 dup (0)\n" +
                "; 分别对应输入输出函数\n" +
                "\t_msg_p db 0ah,'Output:',0\n" +
                "\t_msg_s db 0ah,'Input:',0\n" +
                "; 变量定义\n";
//        List<String> vars = this.funcsInfoMap.get("main").vars;
//        for (int i = 0; i < vars.size(); i++) {
//            String var = vars.get(i);
//            if(var.charAt(0) != 'T')
//            str += String.format("\t_%s dw 0\n", var);
//        }
        /* 获取所有的函数表 */
        for (String key : funcsInfoMap.keySet()) {
            /* 获取函数内的变量 */
            List<String> vars = this.funcsInfoMap.get(key).vars;
            for (int i = 0; i < vars.size(); i++) {
                String var = vars.get(i);
                if(var.charAt(0) != 'T')
                str += String.format("\t_%s dw 0\n", var);
            }
        }

        str += "data ends\n";
        return str;
    }

    /**
     * 生成代码段
     * 将四元式列表转换为对应的汇编代码
     */
    public String code_section(){
        String str_func = "";
        String str = "; 代码段定义\n" +

                "code segment\n" +
                "; 初始化各段\n" +
                "start:\tmov ax,extended\n" +
                "\tmov es,ax\n" +
                "\tmov ax,stack\n" +
                "\tmov ss,ax\n" +
                "\tmov sp,1024\n" +
                "\tmov bp,sp\n" +
                "\tmov ax,data\n" +
                "\tmov ds,ax\n" +
                "\n" +
                "; 四元式翻译\n";
        for(int i=0; i<this.fourItemList.size(); i++){
            FourItem item = this.fourItemList.get(i);
            switch(item.op){
                /* 赋值语句 */
                case "=": {
                    if (flag == 1){
                        str_func += this.assign(item,i );
                    } else {
                        str += this.assign(item,i );
                    }
                    break;
                }
                case "+":{
                    if (flag == 1){
                        str_func += this.add(item,i );
                    } else {
                        str += this.add(item,i );
                    }
                    break;
                }
                case "-":{
                    if (flag == 1){
                        str_func += this.sub(item,i );
                    } else {
                        str += this.sub(item, i);
                    }
                    break;
                }
                case "*":{
                    if (flag == 1){
                        str_func += this.mul(item,i );
                    } else {
                        str += this.mul(item,i );
                    }
                    break;
                }
                case "/":{
                    if (flag == 1){
                        str_func += this.div(item,i );
                    } else {
                        str += this.div(item, i);
                    }
                    break;
                }
                case "%":{
                    if (flag == 1){
                        str_func += this.mod(item,i );
                    } else {
                        str += this.mod(item, i);
                    }
                    break;
                }
                case ">":{
                    TODO(">" + i);
                    break;
                }
                case "<":{
                    if (flag == 1){
                        str_func += this.less(item,i);
                    } else {
                        str += this.less(item, i);
                    }
                    break;
                }
                case "==":{
                    if (flag == 1){
                    } else {
                        str += this.equal(item, i);
                    }
                    break;
                }
                case "!=":{
                    TODO("!=" + i);
                    break;
                }
                case ">=":{
                    if(flag == 1){
                        str_func += this.bigger(item,i);
                    } else {
                        str += this.bigger(item, i);
                    }
                    break;
                }
                case "<=":{
                    if(flag == 1){
                        str_func += this.smaller(item,i);
                    } else {
                        str += this.smaller(item,i);
                    }
                    break;
                }
                case "para":{
                    if(flag == 1){
                        str_func += this.para(item,i);
                    } else {
                        str += this.para(item,i);
                    }
                    break;
                }
                case "call":{
                    if(flag == 1){
                        str_func += this.call(item,i);
                    } else {
                        str += this.call(item, i);
                    }
                    break;
                }
                case "jnz":{
                    if(flag == 1){
                        str_func += this.jnz(item,i );
                    } else {
                        str += this.jnz(item, i);
                    }
                    break;
                }
                case "j":{
                    if(flag == 1){
                        str_func += this.j(item,i);
                    } else {
                        str += this.j(item, i);
                    }
                    break;
                }
                case "jz":{
                    if(flag == 1){
                        str_func += this.jz(item,i);
                    } else {
                        str += this.jz(item, i);
                    }
                    break;
                }
                case "sys":{
                    str += this.quit();
                    break;
                }
                case "main":{
                    continue;
                }
                case "func":{  /* so ugly, any way I'm tired. So just ignore it. Haha */
                    flag = 1;
                    str_func += this.call_func(item);
                    break;
                }
                case "ret":{
                    str_func += this.ret(i);
                    flag = 0;
                    break;
                }
                default:
                    panic("op error" + item + i);

            }
        }
        str += str_func;
        str += "; 四元式翻译结束\n" +
                "\n;系统内置函数\n";
        str += this.system();
        return str;
    }

    /**
     * debug 工具
     */
    private void TODO(String todo){
        System.out.println("TODO: " + todo);
    }
    private void panic(String msg){
        System.out.println(msg);
    }

    /**
     * 四元式翻译部分
     */
    /* 赋值语句 */
    public String assign_main(FourItem item,int index) {
        String str = "_" + String.format("%-2d:", index);
        char type = item.getArg1().charAt(0);
        if (type == 'T') {
            str += String.format("mov ax,es:[%d]\n", extendOffset);
            /* have a bug */
//            extendOffset += 2;
            str += String.format("\tmov ds:[_%s],ax\n", item.getResult());
        } else if (type - 48 >= 0 && type - 48 < 10){
            str += String.format("mov ax,%s\n", item.getArg1());
            str += String.format("\tmov ds:[_%s],ax\n",item.getResult());
        }else {
            str += String.format("mov ax,ds:[_%s]\n",item.getArg1());
            str += String.format("\tmov ds:[_%s],ax\n",item.getResult());
        }
        return str;
    }
    public String assign_func(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        str += String.format("mov ax,es:[%d]\n", extendOffset);
        str += String.format("\tmov ss:[bp-2],ax\n");
        return str;
    }
    public String assign(FourItem item,int index){
        if (flag == 0){
            return assign_main(item,index);
        } else {
            return assign_func(item,index);
        }
    }
    /* 加法操作 */
    public String add_main(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        if (arg1_type -48 >= 0 && arg1_type - 48 < 10){ /* arg1 为常数 */
            if (arg2_type -48 >= 0 && arg2_type - 48 < 10){ /* arg2 为常数 */
                str += String.format("mov ax,%s\n", item.getArg1());
                str += String.format("\tadd ax,%s\n",item.getArg2());
                extendOffset += 2;
                str += String.format("\tmov es:[%d],ax\n",extendOffset);
            } else {/* arg2 为变量 */
                str += String.format("mov ax,ds:[_%s]\n", item.getArg2());
                str += String.format("\tadd ax,%s\n",item.getArg1());
                extendOffset += 2;
                str += String.format("\tmov es:[%d],ax\n",extendOffset);
            }
        } else { /* arg1 为变量 */
            if (arg2_type - 48 >= 0 && arg2_type - 48 < 10) { /* arg2 为常数 */
                str += String.format("mov ax,ds:[_%s]\n", item.getArg1());
                str += String.format("\tadd ax,%s\n", item.getArg2());
                extendOffset += 2;
                str += String.format("\tmov es:[%d],ax\n", extendOffset);
            } else { /* arg2 为变量 */
                str += String.format("mov ax,ds:[_%s]\n", item.getArg1());
                str += String.format("\tadd ax,ds:[_%s]\n", item.getArg2());
                extendOffset += 2;
                str += String.format("\tmov es:[%d],ax\n", extendOffset);
            }
        }
        return str;
    }
    public String add_func(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        str += String.format("mov ax,ss:[bp+6]\n" +
                "\tadd ax,ss:[bp+4]\n");
        extendOffset += 2;
        str += String.format("\tmov es:[%d],ax\n", extendOffset);
        return str;
    }
    public String add(FourItem item,int index){
        if (flag == 0){
            return add_main(item,index);
        } else {
            return add_func(item,index);
        }
    }
    /* 减法操作 */
    public String sub(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        if (arg1_type -48 >= 0 && arg1_type - 48 < 10){ /* arg1 为常数 */
            if (arg2_type -48 >= 0 && arg2_type - 48 < 10){ /* arg2 为常数 */
                str += String.format("mov ax,%s\n", item.getArg1());
                str += String.format("\tsub ax,%s\n",item.getArg2());
                extendOffset += 2;
                str += String.format("\tmov es:[%d],ax\n",extendOffset);
            } else {/* arg2 为变量 */
                str += String.format("mov ax,ds:[_%s]\n", item.getArg2());
                str += String.format("\tsub ax,%s\n",item.getArg1());
                extendOffset += 2;
                str += String.format("\tmov es:[%d],ax\n",extendOffset);
            }
        } else { /* arg1 为变量 */
            if(arg2_type -48 >= 0 && arg2_type - 48 < 10){ /* arg2 为常数 */
                str += String.format("mov ax,ds:[_%s]\n", item.getArg1());
                str += String.format("\tsub ax,%s\n",item.getArg2());
                extendOffset += 2;
                str += String.format("\tmov es:[%d],ax\n",extendOffset);
            } else { /* arg2 为变量 */
                str += String.format("mov ax,ds:[_%s]\n", item.getArg1());
                str += String.format("\tsub ax,ds:[_%s]\n",item.getArg2());
                extendOffset += 2;
                str += String.format("\tmov es:[%d],ax\n",extendOffset);
            }

        }
        return str;
    }
    /* 乘法操作 */
    public String mul(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        if (arg1_type -48 >= 0 && arg1_type - 48 < 10){ /* arg1 为常数 */
            str += String.format("mov ax,%s\n", item.getArg1());
        } else { /* arg1 为变量 */
            str += String.format("mov ax,ds:[_%s]\n", item.getArg1());
        }

        if (arg2_type -48 >= 0 && arg2_type - 48 < 10){ /* arg2 为常数 */
            str += String.format("\tmov ax,%s\n",item.getArg2());
        } else { /* arg2 为变量 */
            str += String.format("\tmov ax,ds:[_%s]\n",item.getArg2());
        }

        str += String.format("\tmul bx\n");
        extendOffset += 2;
        str += String.format("\tmov es:[%d],ax\n",extendOffset);
        return str;
    }
    /* 除法操作 */
    public String div(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        if (arg1_type -48 >= 0 && arg1_type - 48 < 10){ /* arg1 为常数 */
            str += String.format("mov ax,%s\n", item.getArg1());
        } else { /* arg1 为变量 */
            str += String.format("mov ax,ds:[_%s]\n", item.getArg1());
        }

        str += String.format("\tmov dx,0\n");

        if (arg2_type -48 >= 0 && arg2_type - 48 < 10){ /* arg2 为常数 */
            str += String.format("\tmov bx,%s\n",item.getArg2());
        } else { /* arg2 为变量 */
            str += String.format("\tmov bx,ds:[_%s]\n",item.getArg2());
        }

        str += String.format("\tdiv bx\n");
        extendOffset += 2;
        str += String.format("\tmov es:[%d],ax\n",extendOffset);
        return str;
    }
    /* 取余 */
    public String mod(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        if (arg1_type -48 >= 0 && arg1_type - 48 < 10){ /* arg1 为常数 */
            str += String.format("mov ax,%s\n", item.getArg1());
        } else if (arg1_type == 'T'){
            str += String.format("mov ax,es:[%d]\n",extendOffset);
        } else { /* arg1 为变量 */
            str += String.format("mov ax,ds:[_%s]\n", item.getArg1());
        }

        str += String.format("\tmov dx,0\n");

        if (arg2_type -48 >= 0 && arg2_type - 48 < 10){ /* arg2 为常数 */
            str += String.format("\tmov bx,%s\n",item.getArg2());
        } else if (arg2_type == 'T'){
            str += String.format("\tmov bx,es:[%d]\n",extendOffset);
        } else {/* arg2 为变量 */
            str += String.format("\tmov bx,ds:[_%s]\n",item.getArg2());
        }

        str += String.format("\tdiv bx\n");
        extendOffset += 2;
        str += String.format("\tmov es:[%d],dx\n",extendOffset);
        return str;
    }
    /* < 操作 */
    public String less(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        str += String.format("mov dx,1\n");

        if (arg1_type -48 >= 0 && arg1_type - 48 < 10){
            str += String.format("\tmov ax,%s\n", item.getArg1());
        } else {
            str +=String.format("\tmov ax,ds:[_%s]\n", item.getArg1());
        }

        if (arg2_type -48 >= 0 && arg2_type - 48 < 10){
            str += String.format("\tcmp ax,%s\n", item.getArg2());
        } else {
            str += String.format("\tcmp ax,ds:[_%s]\n", item.getArg2());
        }
        str += String.format("\tjb _%d_lt\n",index);
        str += String.format("\tmov dx,0\n");
        extendOffset += 2;
        str += String.format("_%d_lt:mov es:[%d],dx\n",index,extendOffset);
        return str;
    }
    /* == 操作 */
    public String equal(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        str += String.format("mov dx,1\n");

        if (arg1_type -48 >= 0 && arg1_type - 48 < 10){
            str += String.format("\tmov ax,%s\n", item.getArg1());
        } else {
            str +=String.format("\tmov ax,ds:[_%s]\n", item.getArg1());
        }

        if (arg2_type -48 >= 0 && arg2_type - 48 < 10){
            str += String.format("\tcmp ax,%s\n", item.getArg2());
        } else {
            str += String.format("\tcmp ax,ds:[_%s]\n", item.getArg2());
        }
        str += String.format("\tje _%d_eq\n",index);
        str += String.format("\tmov dx,0\n");
        extendOffset += 2;
        str += String.format("_%d_eq:mov es:[%d],dx\n",index,extendOffset);
        return str;

    }
    /* >= 操作 */
    public String bigger(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        str += String.format("mov dx,1\n");

        if (arg1_type -48 >= 0 && arg1_type - 48 < 10){
            str += String.format("\tmov ax,%s\n", item.getArg1());
        } else {
            str +=String.format("\tmov ax,ds:[_%s]\n", item.getArg1());
        }

        if (arg2_type -48 >= 0 && arg2_type - 48 < 10){
            str += String.format("\tcmp ax,%s\n", item.getArg2());
        } else {
            str += String.format("\tcmp ax,ds:[_%s]\n", item.getArg2());
        }
        str += String.format("\tjnb _ge\n");
        str += String.format("\tmov dx,0\n");
        extendOffset += 2;
        str += String.format("_ge:mov es:[%d],dx\n",extendOffset);
        return str;
    }
    /* <= 操作 */
    public String smaller(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char arg1_type = item.getArg1().charAt(0);
        char arg2_type = item.getArg2().charAt(0);
        str += String.format("mov dx,1\n");

        if (arg1_type -48 >= 0 && arg1_type - 48 < 10){
            str += String.format("\tmov ax,%s\n", item.getArg1());
        } else {
            str +=String.format("\tmov ax,ds:[_%s]\n", item.getArg1());
        }

        if (arg2_type -48 >= 0 && arg2_type - 48 < 10){
            str += String.format("\tcmp ax,%s\n", item.getArg2());
        } else {
            str += String.format("\tcmp ax,ds:[_%s]\n", item.getArg2());
        }
        str += String.format("\tjna _le\n");
        str += String.format("\tmov dx,0\n");
        extendOffset += 2;
        str += String.format("_le:mov es:[%d],dx\n",extendOffset);
        return str;
    }
    /* 函数调用 */
    public String call(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        str += String.format("call _%s\n", item.getArg1());
        extendOffset += 2;
        str += String.format("\tmov es:[%d],ax\n", extendOffset);
        return str;
    }
    /* 不为 0 跳转 */
    public String jnz(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        str += String.format("mov ax,es:[%d]\n", extendOffset);
        str += String.format("\tcmp ax,0\n");
        str += String.format("\tje _%d_ez\n", index);
        int num = Integer.parseInt(item.result);
        str += String.format("\tjmp far ptr _%d\n", num - 1);
        str += String.format("_%d_ez:nop\n",index);
        return str;
    }
    /* 无条件跳转 */
    public String j(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        int num = Integer.parseInt(item.result);
        str += String.format("jmp far ptr _%d\n",num - 1);
        return str;
    }
    /* 为 0 跳转 */
    public String jz(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        str += String.format("mov ax,es:[%d]\n", extendOffset);
        str += String.format("\tcmp ax,0\n");
        str += String.format("\tjne _%d_ne\n", index);
        int num = Integer.parseInt(item.result);
        str += String.format("\tjmp far ptr _%d\n", num - 1);
        str += String.format("_%d_ne:nop\n",index);
        return str;
    }
    /* 压栈操作 */
    public String para(FourItem item,int index){
        String str = "_" + String.format("%-2d:", index);
        char type = item.getArg1().charAt(0);
        if (type -48 >= 0 && type - 48 < 10){
            str += String.format("mov ax,%s\n", item.getArg1());
        } else if (type == 'T'){
            str += String.format("mov ax,es:[%d]\n",extendOffset);
        } else {
            str += String.format("mov ax,ds:[_%s]\n", item.getArg1());
        }
        str += String.format("\tpush ax\n");
        return str;
    }
    /* 函数调用 */
    public String call_func(FourItem item){
        String str = "_" + String.format("%s:", item.getArg1());
        str += String.format("push bp\n" +
                "\tmov bp,sp\n" +
                "\tsub sp,2\n");
        return str;
    }
    /* 函数返回 */
    public String ret(int index){
        String str = "_" + String.format("%-2d:", index);
        str += "mov ax,ss:[bp-2]\n" +
                "\tmov sp,bp\n" +
                "\tpop bp\n" +
                "\tret 4\n" +
                "\tmov sp,bp\n" +
                "\tpop bp\n" +
                "\tret 4\n";
        return str;
    }
    /* 结束 */
    public String quit(){
        String str = "quit:mov ah,4ch\n" +
                "\tint 21h\n"  +
                "\tret\n";
        return str;
    }
    /* 系统函数 */
    public String system(){
        String str = "_read:\tpush bp\n" +
                "\tmov bp,sp\n" +
                "\tmov bx,offset _msg_s\n" +
                "\tcall _print\n" +
                "\tmov bx,offset _buff_s\n" +
                "\tmov di,0\n" +
                "_r_lp_1:\tmov ah,1\n" +
                "\tint 21h\n" +
                "\tcmp al,0dh\n" +
                "\tje _r_brk_1\n" +
                "\tmov ds:[bx+di],al\n" +
                "\tinc di\n" +
                "\tjmp short _r_lp_1\n" +
                "_r_brk_1:\tmov ah,2\n" +
                "\tmov dl,0ah\n" +
                "\tint 21h\n" +
                "\tmov ax,0\n" +
                "\tmov si,0\n" +
                "\tmov cx,10\n" +
                "_r_lp_2:\tmov dl,ds:[bx+si]\n" +
                "\tcmp dl,30h\n" +
                "\tjb _r_brk_2\n" +
                "\tcmp dl,39h\n" +
                "\tja _r_brk_2\n" +
                "\tsub dl,30h\n" +
                "\tmov ds:[bx+si],dl\n" +
                "\tmul cx\n" +
                "\tmov dl,ds:[bx+si]\n" +
                "\tmov dh,0\n" +
                "\tadd ax,dx\n" +
                "\tinc si\n" +
                "\tjmp short _r_lp_2\n" +
                "_r_brk_2:\tmov cx,di\n" +
                "\tmov si,0\n" +
                "_r_lp_3:\tmov byte ptr ds:[bx+si],0\n" +
                "\tloop _r_lp_3\n" +
                "\tmov sp,bp\n" +
                "\tpop bp\n" +
                "\tret\n" +
                "\n" +
                "_write:\tpush bp\n" +
                "\tmov bp,sp\n" +
                "\tmov bx,offset _msg_p\n" +
                "\tcall _print\n" +
                "\tmov ax,ss:[bp+4]\n" +
                "\tmov bx,10\n" +
                "\tmov cx,0\n" +
                "_w_lp_1:\tmov dx,0\n" +
                "\tdiv bx\n" +
                "\tpush dx\n" +
                "\tinc cx\n" +
                "\tcmp ax,0\n" +
                "\tjne _w_lp_1\n" +
                "\tmov di ,offset _buff_p\n" +
                "_w_lp_2:\tpop ax\n" +
                "\tadd ax,30h\n" +
                "\tmov ds:[di],al\n" +
                "\tinc di\n" +
                "\tloop _w_lp_2\n" +
                "\tmov dx,offset _buff_p\n" +
                "\tmov ah,09h\n" +
                "\tint 21h\n" +
                "\tmov cx,di\n" +
                "\tsub cx,offset _buff_p\n" +
                "\tmov di,offset _buff_p\n" +
                "_w_lp_3:\tmov al,24h\n" +
                "\tmov ds:[di],al\n" +
                "\tinc di\n" +
                "\tloop _w_lp_3\n" +
                "\tmov ax,di\n" +
                "\tsub ax,offset _buff_p\n" +
                "\tmov sp,bp\n" +
                "\tpop bp\n" +
                "\tret 2\n" +
                "_print:\tmov si,0\n" +
                "\tmov di,offset _buff_p\n" +
                "_p_lp_1:\tmov al,ds:[bx+si]\n" +
                "\tcmp al,0\n" +
                "\tje _p_brk_1\n" +
                "\tmov ds:[di],al\n" +
                "\tinc si\n" +
                "\tinc di\n" +
                "\tjmp short _p_lp_1\n" +
                "_p_brk_1:\tmov dx,offset _buff_p\n" +
                "\tmov ah,09h\n" +
                "\tint 21h\n" +
                "\tmov cx,si\n" +
                "\tmov di,offset _buff_p\n" +
                "_p_lp_2:\tmov al,24h\n" +
                "\tmov ds:[di],al\n" +
                "\tinc di\n" +
                "\tloop _p_lp_2\n" +
                "\tret\n" +
                "code ends\n" +
                "\n" +
                "end start";
        return str;
    }
    /* for test */
    public void print(){
        System.out.println("四元式列表");
        for (int i = 0; i < this.fourItemList.size(); i++) {
            FourItem item = this.fourItemList.get(i);
            System.out.println(String.format("%-4d:", i + 1) + item);
        }

        System.out.println("_____________________________________");
        String str = this.define_section();
        str += this.data_section();
        str += this.code_section();
        System.out.println(str);
    }
    /**
     * 最终界面展示
     */
    public String show(){
        String str = this.define_section();
        str += this.data_section();
        str += this.code_section();
        return str;
    }
}
