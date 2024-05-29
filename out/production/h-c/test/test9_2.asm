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
	call  read
	mov  dx, 1
	mov  ax, i
	cmp  ax, N
	jna  16:i_N_LE
	mov  dx, 0
16:i_N_LE	mov  T40, dx
	mov  ax, T40
	cmp  ax, 0
	jne  17:T40__NE
	jmp  far ptr 32
17:T40__NE	nop
	mov  dx, 1
	mov  ax, j
	cmp  ax, i
	jb  18:j_i_LT
	mov  dx, 0
18:j_i_LT	mov  T43, dx
	mov  ax, T43
	cmp  ax, 0
	jne  19:T43__NE
	jmp  far ptr 22
19:T43__NE	nop
	mov  dx, 1
	mov  ax, j
	cmp  ax, 0
	je  20:j_0_EQ
	mov  dx, 0
20:j_0_EQ	mov  T44, dx
	mov  ax, i
	mov  dx, 0
	mov  bx, T44
	div  bx
	mov  T45, dx
	mov  ax, T45
	cmp  ax, 0
	je  21:T45__EZ
	jmp  far ptr 17
21:T45__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  22:__NE
	jmp  far ptr 16
22:__NE	nop
	jmp  far ptr 19
	mov  ax, nprime
	add  ax, 1
	mov  T46, ax
	mov  ax, j
	add  ax, 1
	mov  T48, ax
	jmp  far ptr 10
	mov  dx, 1
	mov  ax, nprime
	cmp  ax, 0
	je  23:nprime_0_EQ
	mov  dx, 0
23:nprime_0_EQ	mov  T50, dx
	mov  ax, T50
	cmp  ax, 0
	je  24:T50__EZ
	jmp  far ptr 26
24:T50__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  25:__NE
	jmp  far ptr 25
25:__NE	nop
	jmp  far ptr 29
	mov  ax, i
	push  ax
	call  write
	mov  ax, count
	add  ax, 1
	mov  T52, ax
	mov  ax, i
	add  ax, 1
	mov  T54, ax
	jmp  far ptr 6
	call  read
	mov  dx, 1
	mov  ax, i
	cmp  ax, N
	jb  26:i_N_LT
	mov  dx, 0
26:i_N_LT	mov  T68, dx
	mov  ax, T68
	cmp  ax, 0
	jne  27:T68__NE
	jmp  far ptr 18
27:T68__NE	nop
	mov  dx, 1
	mov  ax, 2
	cmp  ax, 0
	je  28:2_0_EQ
	mov  dx, 0
28:2_0_EQ	mov  T69, dx
	mov  ax, i
	mov  dx, 0
	mov  bx, T69
	div  bx
	mov  T70, dx
	mov  ax, T70
	cmp  ax, 0
	je  29:T70__EZ
	jmp  far ptr 13
29:T70__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  30:__NE
	jmp  far ptr 12
30:__NE	nop
	jmp  far ptr 15
	mov  ax, sum
	add  ax, i
	mov  T71, ax
	mov  ax, i
	add  ax, 1
	mov  T73, ax
	jmp  far ptr 6
	mov  ax, sum
	push  ax
	call  write
	call  read
	call  read
	mov  dx, 1
	mov  ax, choice
	cmp  ax, 1
	je  31:choice_1_EQ
	mov  dx, 0
31:choice_1_EQ	mov  T80, dx
	mov  ax, T80
	cmp  ax, 0
	je  32:T80__EZ
	jmp  far ptr 11
32:T80__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  33:__NE
	jmp  far ptr 10
33:__NE	nop
	jmp  far ptr 24
	mov  dx, 1
	mov  ax, i
	cmp  ax, N
	jna  34:i_N_LE
	mov  dx, 0
34:i_N_LE	mov  T82, dx
	mov  ax, T82
	cmp  ax, 0
	jne  35:T82__NE
	jmp  far ptr 24
35:T82__NE	nop
	mov  dx, 1
	mov  ax, 2
	cmp  ax, 1
	je  36:2_1_EQ
	mov  dx, 0
36:2_1_EQ	mov  T83, dx
	mov  ax, i
	mov  dx, 0
	mov  bx, T83
	div  bx
	mov  T84, dx
	mov  ax, T84
	cmp  ax, 0
	je  37:T84__EZ
	jmp  far ptr 19
37:T84__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  38:__NE
	jmp  far ptr 18
38:__NE	nop
	jmp  far ptr 21
	mov  ax, sum
	add  ax, i
	mov  T85, ax
	mov  ax, i
	add  ax, 1
	mov  T87, ax
	jmp  far ptr 12
	mov  dx, 1
	mov  ax, choice
	cmp  ax, 2
	je  39:choice_2_EQ
	mov  dx, 0
39:choice_2_EQ	mov  T89, dx
	mov  ax, T89
	cmp  ax, 0
	je  40:T89__EZ
	jmp  far ptr 28
40:T89__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  41:__NE
	jmp  far ptr 27
41:__NE	nop
	jmp  far ptr 36
	mov  dx, 1
	mov  ax, i
	cmp  ax, N
	jb  42:i_N_LT
	mov  dx, 0
42:i_N_LT	mov  T91, dx
	mov  ax, T91
	cmp  ax, 0
	jne  43:T91__NE
	jmp  far ptr 36
43:T91__NE	nop
	mov  ax, sum
	add  ax, i
	mov  T92, ax
	mov  ax, i
	add  ax, 2
	mov  T94, ax
	jmp  far ptr 29
	mov  ax, sum
	push  ax
	call  write
	call  read
	mov  ax, 3
	push  ax
	mov  ax, 4
	push  ax
	call  sum
	mov  ax, T98
	push  ax
	mov  ax, N
	push  ax
	call  sum
	mov  ax, a
	push  ax
	call  write
	push  bp
	mov  bp, sp
	sub  sp
	mov  ax, sumX
	add  ax, sumY
	mov  T102, ax
	mov  ax, result
	mov  sp, bp
	pop  bp
	ret
	call  read
	call  read
	mov  ax, M
	push  ax
	mov  ax, N
	push  ax
	call  max
	mov  ax, T106
	push  ax
	mov  ax, 100
	push  ax
	call  sum
	mov  ax, a
	push  ax
	call  write
	push  bp
	mov  bp, sp
	sub  sp
	mov  ax, sumx
	add  ax, sumy
	mov  T110, ax
	mov  ax, result
	mov  sp, bp
	pop  bp
	ret
	push  bp
	mov  bp, sp
	sub  sp
	mov  dx, 1
	mov  ax, mx
	cmp  ax, my
	jnb  44:mx_my_GE
	mov  dx, 0
44:mx_my_GE	mov  T112, dx
	mov  ax, T112
	cmp  ax, 0
	je  45:T112__EZ
	jmp  far ptr 20
45:T112__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  46:__NE
	jmp  far ptr 18
46:__NE	nop
	jmp  far ptr 21
	mov  ax, result
	mov  sp, bp
	pop  bp
	ret
	push  bp
	mov  bp, sp
	sub  sp
	mov  dx, 1
	mov  ax, m
	cmp  ax, 1
	jna  47:m_1_LE
	mov  dx, 0
47:m_1_LE	mov  T115, dx
	mov  ax, T115
	cmp  ax, 0
	je  48:T115__EZ
	jmp  far ptr 6
48:T115__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  49:__NE
	jmp  far ptr 5
49:__NE	nop
	jmp  far ptr 7
	mov  dx, 1
	mov  ax, m
	cmp  ax, 1
	ja  50:m_1_GT
	mov  dx, 0
50:m_1_GT	mov  T117, dx
	mov  ax, T117
	cmp  ax, 0
	je  51:T117__EZ
	jmp  far ptr 11
51:T117__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  52:__NE
	jmp  far ptr 10
52:__NE	nop
	jmp  far ptr 15
	mov  ax, m
	sub  ax, 1
	mov  T118, ax
	mov  ax, T118
	push  ax
	call  factor
	mov  ax, m
	mov  bx, T119
	mul  bx
	mov  T120, ax
	mov  ax, fa
	mov  sp, bp
	pop  bp
	ret
	call  read
	mov  ax, n
	push  ax
	call  factor
	mov  ax, T124
	push  ax
	call  write
	push  bp
	mov  bp, sp
	sub  sp
	mov  dx, 1
	mov  ax, m
	cmp  ax, 1
	jna  53:m_1_LE
	mov  dx, 0
53:m_1_LE	mov  T127, dx
	mov  ax, T127
	cmp  ax, 0
	je  54:T127__EZ
	jmp  far ptr 7
54:T127__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  55:__NE
	jmp  far ptr 6
55:__NE	nop
	jmp  far ptr 8
	mov  dx, 1
	mov  ax, m
	cmp  ax, 1
	ja  56:m_1_GT
	mov  dx, 0
56:m_1_GT	mov  T129, dx
	mov  ax, T129
	cmp  ax, 0
	je  57:T129__EZ
	jmp  far ptr 12
57:T129__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  58:__NE
	jmp  far ptr 11
58:__NE	nop
	jmp  far ptr 16
	mov  ax, m
	sub  ax, 1
	mov  T130, ax
	mov  ax, T130
	push  ax
	call  seq
	mov  ax, m
	add  ax, T131
	mov  T132, ax
	mov  ax, fa
	mov  sp, bp
	pop  bp
	ret
	call  read
	mov  ax, n
	push  ax
	call  seq
	mov  ax, T136
	push  ax
	call  write
	push  bp
	mov  bp, sp
	sub  sp
	mov  dx, 1
	mov  ax, m
	cmp  ax, 10
	jb  59:m_10_LT
	mov  dx, 0
59:m_10_LT	mov  T138, dx
	mov  dx, 0
	mov  ax, 0
	cmp  ax, 0
	je  60:0_T138_AND
	mov  ax, T138
	cmp  ax, 0
	je  60:0_T138_AND
	mov  dx, 1
60:0_T138_AND	mov  T139, dx
	mov  dx, 1
	mov  ax, m
	cmp  ax, T139
	ja  61:m_T139_GT
	mov  dx, 0
61:m_T139_GT	mov  T140, dx
	mov  ax, T140
	cmp  ax, 0
	je  62:T140__EZ
	jmp  far ptr 8
62:T140__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  63:__NE
	jmp  far ptr 7
63:__NE	nop
	jmp  far ptr 9
	mov  ax, m
	push  ax
	call  write
	mov  dx, 1
	mov  ax, m
	cmp  ax, 10
	ja  64:m_10_GT
	mov  dx, 0
64:m_10_GT	mov  T142, dx
	mov  dx, 1
	mov  ax, 0
	cmp  ax, 0
	jne  65:0_T142_OR
	mov  ax, T142
	cmp  ax, 0
	jne  65:0_T142_OR
	mov  dx, 0
65:0_T142_OR	mov  T143, dx
	mov  dx, 1
	mov  ax, m
	cmp  ax, T143
	jb  66:m_T143_LT
	mov  dx, 0
66:m_T143_LT	mov  T144, dx
	mov  ax, T144
	cmp  ax, 0
	je  67:T144__EZ
	jmp  far ptr 15
67:T144__EZ	nop
	mov  ax,
	cmp  ax, 0
	jne  68:__NE
	jmp  far ptr 14
68:__NE	nop
	jmp  far ptr 21
	mov  ax, m
	mov  dx, 0
	mov  bx, 10
	div  bx
	mov  T145, dx
	mov  ax, n
	push  ax
	call  write
	mov  ax, m
	mov  dx, 0
	mov  bx, 10
	div  bx
	mov  T148, ax
	mov  ax, n
	push  ax
	call  invert
	mov  ax, 0
	mov  sp, bp
	pop  bp
	ret
	call  read
	mov  ax, k
	push  ax
	call  invert

quit: mov ah,4ch
    INT 21H                               ; 程序返回操作系统控制，恢复寄存器等
code ends                                 ;代码段结束
end start                                 ;程序执行结束，对应于程序入口start

