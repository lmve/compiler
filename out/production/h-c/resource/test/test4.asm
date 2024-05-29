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
	jnb  1:M_N_GE
	mov  dx, 0
1:M_N_GE	mov  T3, dx
	mov  ax, T3
	cmp  ax, 0
	je  2:T3__EZ
	jmp  far ptr 14
2:T3__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  3:__NE
	jmp  far ptr 12
3:__NE	nop
	jmp  far ptr 15
	mov  ax, result
	add  ax, 100
	mov  T6, ax
	mov  ax, a
	push  ax
	call  write
	mov  dx, 1
	mov  ax, n
	cmp  ax, 1
	jb  4:n_1_LT
	mov  dx, 0
4:n_1_LT	mov  T9, dx
	mov  ax, T9
	cmp  ax, 0
	je  5:T9__EZ
	jmp  far ptr 7
5:T9__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  6:__NE
	jmp  far ptr 5
6:__NE	nop
	jmp  far ptr 8
	mov  dx, 1
	mov  ax, i
	cmp  ax, n
	jb  7:i_n_LT
	mov  dx, 0
7:i_n_LT	mov  T12, dx
	mov  ax, T12
	cmp  ax, 0
	jne  8:T12__NE
	jmp  far ptr 15
8:T12__NE	nop
	mov  ax, i
	add  ax, 1
	mov  T13, ax
	mov  ax, factor
	mov  bx, i
	mul  bx
	mov  T15, ax
	jmp  far ptr 8
	mov  ax, factor
	push  ax
	call  write
	call  read
	mov  dx, 1
	mov  ax, i
	cmp  ax, N
	jna  9:i_N_LE
	mov  dx, 0
9:i_N_LE	mov  T21, dx
	mov  ax, T21
	cmp  ax, 0
	jne  10:T21__NE
	jmp  far ptr 12
10:T21__NE	nop
	mov  ax, sum
	add  ax, i
	mov  T22, ax
	mov  ax, i
	add  ax, 1
	mov  T24, ax
	jmp  far ptr 5
	mov  ax, sum
	push  ax
	call  write
	call  read
	mov  dx, 1
	mov  ax, i
	cmp  ax, N
	jna  11:i_N_LE
	mov  dx, 0
11:i_N_LE	mov  T30, dx
	mov  ax, T30
	cmp  ax, 0
	jne  12:T30__NE
	jmp  far ptr 17
12:T30__NE	nop
	mov  dx, 1
	mov  ax, 2
	cmp  ax, 1
	je  13:2_1_EQ
	mov  dx, 0
13:2_1_EQ	mov  T31, dx
	mov  ax, i
	mov  dx, 0
	mov  bx, T31
	div  bx
	mov  T32, dx
	mov  ax, T32
	cmp  ax, 0
	je  14:T32__EZ
	jmp  far ptr 12
14:T32__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  15:__NE
	jmp  far ptr 11
15:__NE	nop
	jmp  far ptr 14
	mov  ax, sum
	add  ax, i
	mov  T33, ax
	mov  ax, i
	add  ax, 1
	mov  T35, ax
	jmp  far ptr 5
	mov  ax, sum
	push  ax
	call  write

quit: mov ah,4ch
    INT 21H                               ; 程序返回操作系统控制，恢复寄存器等
code ends                                 ;代码段结束
end start                                 ;程序执行结束，对应于程序入口start
