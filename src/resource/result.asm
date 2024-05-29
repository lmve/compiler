assume cs:code,ds:data,ss:stack,es:extended      ;程序开始，初始化4个段地址
extended segment                           ;初始化扩展段中的信息
    db 1024 dup (0)
extended ends
stack segment                              ;初始化堆栈段中的信息
    db 1024 dup (0)
stack ends
data segment                               ;初始化数据段中的信息
    t_buff_p db 256 dup (24h)
    t_buff_s db 256 dup (0)
data ends
code segment                              ;代码段开始
start: mov ax,extended:                   ;定义程序入口
    mov es,ax                             ;接下来的mov指令为各个段寄存器赋值
    mov ax,stack
    mov ss,ax
    mov sp,1024
    mov bp,sp
    mov ax,data
    mov ds,ax

	call  read
	call  read
	mov  dx, 1
	mov  ax, M
	cmp  ax, N
	jnb  1:GE
	mov  dx, 0
1:GE	mov  T3, dx
	mov  ax, T3
	cmp  ax, 0
	je  2:EZ
	jmp  far ptr 11
2:EZ	nop
	jmp  far ptr 12
	mov  ax, result
	add  ax, 100
	mov  T6, ax
	mov  ax, a
	push  ax
	call  write

quit: mov ah,4ch
    INT 21H                               ; 程序返回操作系统控制，恢复寄存器等
code ends                                 ;代码段结束
end start                                 ;程序执行结束，对应于程序入口start
