
test.o:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 45 34 00 00 	mov    0x3445(%rip),%rax        # 404460 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 46 34 00 00 	mov    0x3446(%rip),%rax        # 404470 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 49 34 00 00 	mov    0x3449(%rip),%rax        # 404480 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 0c 34 00 00 	mov    0x340c(%rip),%rax        # 404450 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 ef 32 00 00 	mov    0x32ef(%rip),%rax        # 404340 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 58                	je     4010b0 <pre_c_init+0xa0>
  401058:	48 8b 05 e1 33 00 00 	mov    0x33e1(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  40105f:	89 15 a3 5f 00 00    	mov    %edx,0x5fa3(%rip)        # 407008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 35                	je     4010a0 <pre_c_init+0x90>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 53 1a 00 00       	callq  402ac8 <__set_app_type>
  401075:	e8 c6 1a 00 00       	callq  402b40 <__p__fmode>
  40107a:	48 8b 15 7f 33 00 00 	mov    0x337f(%rip),%rdx        # 404400 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 d6 05 00 00       	callq  401660 <_setargv>
  40108a:	48 8b 05 5f 32 00 00 	mov    0x325f(%rip),%rax        # 4042f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 1e 1a 00 00       	callq  402ac8 <__set_app_type>
  4010aa:	eb c9                	jmp    401075 <pre_c_init+0x65>
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
  4010b4:	48 01 c8             	add    %rcx,%rax
  4010b7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  4010bd:	75 99                	jne    401058 <pre_c_init+0x48>
  4010bf:	0f b7 48 18          	movzwl 0x18(%rax),%ecx
  4010c3:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010c8:	74 39                	je     401103 <pre_c_init+0xf3>
  4010ca:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010cf:	75 87                	jne    401058 <pre_c_init+0x48>
  4010d1:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d8:	0f 86 7a ff ff ff    	jbe    401058 <pre_c_init+0x48>
  4010de:	8b 88 f8 00 00 00    	mov    0xf8(%rax),%ecx
  4010e4:	31 d2                	xor    %edx,%edx
  4010e6:	85 c9                	test   %ecx,%ecx
  4010e8:	0f 95 c2             	setne  %dl
  4010eb:	e9 68 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  4010f0:	48 8d 0d 79 08 00 00 	lea    0x879(%rip),%rcx        # 401970 <_matherr>
  4010f7:	e8 64 08 00 00       	callq  401960 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401107:	0f 86 4b ff ff ff    	jbe    401058 <pre_c_init+0x48>
  40110d:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401114:	31 d2                	xor    %edx,%edx
  401116:	45 85 c0             	test   %r8d,%r8d
  401119:	0f 95 c2             	setne  %dl
  40111c:	e9 37 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401121:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 f5 32 00 00 	mov    0x32f5(%rip),%rax        # 404430 <.refptr._newmode>
  40113b:	4c 8d 05 ce 5e 00 00 	lea    0x5ece(%rip),%r8        # 407010 <envp>
  401142:	48 8d 15 cf 5e 00 00 	lea    0x5ecf(%rip),%rdx        # 407018 <argv>
  401149:	48 8d 0d d0 5e 00 00 	lea    0x5ed0(%rip),%rcx        # 407020 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 a8 5e 00 00    	mov    %eax,0x5ea8(%rip)        # 407000 <__bss_start__>
  401158:	48 8d 05 a1 5e 00 00 	lea    0x5ea1(%rip),%rax        # 407000 <__bss_start__>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 85 32 00 00 	mov    0x3285(%rip),%rax        # 4043f0 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 65 19 00 00       	callq  402ad8 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	31 c0                	xor    %eax,%eax
  401191:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401196:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40119b:	48 89 d7             	mov    %rdx,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d 98 32 00 00 	mov    0x3298(%rip),%rdi        # 404440 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 bc 02 00 00    	jne    401470 <__tmainCRTStartup+0x2f0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d cc 31 00 00 	mov    0x31cc(%rip),%rbx        # 404390 <.refptr.__native_startup_lock>
  4011c4:	31 ed                	xor    %ebp,%ebp
  4011c6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011ca:	4c 8b 25 83 70 00 00 	mov    0x7083(%rip),%r12        # 408254 <__imp_Sleep>
  4011d1:	eb 11                	jmp    4011e4 <__tmainCRTStartup+0x64>
  4011d3:	48 39 c6             	cmp    %rax,%rsi
  4011d6:	0f 84 34 02 00 00    	je     401410 <__tmainCRTStartup+0x290>
  4011dc:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e1:	41 ff d4             	callq  *%r12
  4011e4:	48 89 e8             	mov    %rbp,%rax
  4011e7:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 e2                	jne    4011d3 <__tmainCRTStartup+0x53>
  4011f1:	48 8b 35 a8 31 00 00 	mov    0x31a8(%rip),%rsi        # 4043a0 <.refptr.__native_startup_state>
  4011f8:	31 ed                	xor    %ebp,%ebp
  4011fa:	8b 06                	mov    (%rsi),%eax
  4011fc:	83 f8 01             	cmp    $0x1,%eax
  4011ff:	0f 84 22 02 00 00    	je     401427 <__tmainCRTStartup+0x2a7>
  401205:	8b 06                	mov    (%rsi),%eax
  401207:	85 c0                	test   %eax,%eax
  401209:	0f 84 71 02 00 00    	je     401480 <__tmainCRTStartup+0x300>
  40120f:	c7 05 eb 5d 00 00 01 	movl   $0x1,0x5deb(%rip)        # 407004 <has_cctor>
  401216:	00 00 00 
  401219:	8b 06                	mov    (%rsi),%eax
  40121b:	83 f8 01             	cmp    $0x1,%eax
  40121e:	0f 84 18 02 00 00    	je     40143c <__tmainCRTStartup+0x2bc>
  401224:	85 ed                	test   %ebp,%ebp
  401226:	0f 84 31 02 00 00    	je     40145d <__tmainCRTStartup+0x2dd>
  40122c:	48 8b 05 fd 30 00 00 	mov    0x30fd(%rip),%rax        # 404330 <.refptr.__dyn_tls_init_callback>
  401233:	48 8b 00             	mov    (%rax),%rax
  401236:	48 85 c0             	test   %rax,%rax
  401239:	74 0c                	je     401247 <__tmainCRTStartup+0xc7>
  40123b:	45 31 c0             	xor    %r8d,%r8d
  40123e:	ba 02 00 00 00       	mov    $0x2,%edx
  401243:	31 c9                	xor    %ecx,%ecx
  401245:	ff d0                	callq  *%rax
  401247:	e8 24 0a 00 00       	callq  401c70 <_pei386_runtime_relocator>
  40124c:	48 8d 0d 6d 0f 00 00 	lea    0xf6d(%rip),%rcx        # 4021c0 <_gnu_exception_handler>
  401253:	ff 15 f3 6f 00 00    	callq  *0x6ff3(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 20 31 00 00 	mov    0x3120(%rip),%rdx        # 404380 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 68 0e 00 00       	callq  4020d0 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 ac 18 00 00       	callq  402b20 <_set_invalid_parameter_handler>
  401274:	e8 f7 07 00 00       	callq  401a70 <_fpreset>
  401279:	48 8b 05 c0 30 00 00 	mov    0x30c0(%rip),%rax        # 404340 <.refptr.__image_base__>
  401280:	48 89 05 e1 66 00 00 	mov    %rax,0x66e1(%rip)        # 407968 <__mingw_winmain_hInstance>
  401287:	e8 a4 18 00 00       	callq  402b30 <__p__acmdln>
  40128c:	31 c9                	xor    %ecx,%ecx
  40128e:	48 8b 00             	mov    (%rax),%rax
  401291:	48 85 c0             	test   %rax,%rax
  401294:	75 1c                	jne    4012b2 <__tmainCRTStartup+0x132>
  401296:	eb 5f                	jmp    4012f7 <__tmainCRTStartup+0x177>
  401298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40129f:	00 
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 2c                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	75 11                	jne    4012e5 <__tmainCRTStartup+0x165>
  4012d4:	eb 1a                	jmp    4012f0 <__tmainCRTStartup+0x170>
  4012d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012dd:	00 00 00 
  4012e0:	80 fa 20             	cmp    $0x20,%dl
  4012e3:	7f 0b                	jg     4012f0 <__tmainCRTStartup+0x170>
  4012e5:	48 83 c0 01          	add    $0x1,%rax
  4012e9:	0f b6 10             	movzbl (%rax),%edx
  4012ec:	84 d2                	test   %dl,%dl
  4012ee:	75 f0                	jne    4012e0 <__tmainCRTStartup+0x160>
  4012f0:	48 89 05 69 66 00 00 	mov    %rax,0x6669(%rip)        # 407960 <__mingw_winmain_lpCmdLine>
  4012f7:	44 8b 07             	mov    (%rdi),%r8d
  4012fa:	45 85 c0             	test   %r8d,%r8d
  4012fd:	74 16                	je     401315 <__tmainCRTStartup+0x195>
  4012ff:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401304:	b8 0a 00 00 00       	mov    $0xa,%eax
  401309:	0f 85 f1 00 00 00    	jne    401400 <__tmainCRTStartup+0x280>
  40130f:	89 05 eb 1c 00 00    	mov    %eax,0x1ceb(%rip)        # 403000 <__data_start__>
  401315:	8b 1d 05 5d 00 00    	mov    0x5d05(%rip),%ebx        # 407020 <argc>
  40131b:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  40131f:	4d 63 e4             	movslq %r12d,%r12
  401322:	49 c1 e4 03          	shl    $0x3,%r12
  401326:	4c 89 e1             	mov    %r12,%rcx
  401329:	e8 3a 17 00 00       	callq  402a68 <malloc>
  40132e:	85 db                	test   %ebx,%ebx
  401330:	48 8b 3d e1 5c 00 00 	mov    0x5ce1(%rip),%rdi        # 407018 <argv>
  401337:	48 89 c5             	mov    %rax,%rbp
  40133a:	7e 4b                	jle    401387 <__tmainCRTStartup+0x207>
  40133c:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40133f:	31 db                	xor    %ebx,%ebx
  401341:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  401348:	00 
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	48 8b 0c 1f          	mov    (%rdi,%rbx,1),%rcx
  401354:	e8 f7 16 00 00       	callq  402a50 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 03 17 00 00       	callq  402a68 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 e3 16 00 00       	callq  402a60 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 5c 00 00 	mov    %rbp,0x5c83(%rip)        # 407018 <argv>
  401395:	e8 96 02 00 00       	callq  401630 <__main>
  40139a:	48 8b 05 af 2f 00 00 	mov    0x2faf(%rip),%rax        # 404350 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 5c 00 00 	mov    0x5c68(%rip),%rdx        # 407010 <envp>
  4013a8:	8b 0d 72 5c 00 00    	mov    0x5c72(%rip),%ecx        # 407020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 5c 00 00 	mov    0x5c55(%rip),%r8        # 407010 <envp>
  4013bb:	48 8b 15 56 5c 00 00 	mov    0x5c56(%rip),%rdx        # 407018 <argv>
  4013c2:	e8 89 01 00 00       	callq  401550 <main>
  4013c7:	8b 0d 3b 5c 00 00    	mov    0x5c3b(%rip),%ecx        # 407008 <managedapp>
  4013cd:	89 05 39 5c 00 00    	mov    %eax,0x5c39(%rip)        # 40700c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 5c 00 00    	mov    0x5c23(%rip),%edx        # 407004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 c6 16 00 00       	callq  402ab0 <_cexit>
  4013ea:	8b 05 1c 5c 00 00    	mov    0x5c1c(%rip),%eax        # 40700c <mainret>
  4013f0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013f7:	5b                   	pop    %rbx
  4013f8:	5e                   	pop    %rsi
  4013f9:	5f                   	pop    %rdi
  4013fa:	5d                   	pop    %rbp
  4013fb:	41 5c                	pop    %r12
  4013fd:	41 5d                	pop    %r13
  4013ff:	c3                   	retq   
  401400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  401405:	e9 05 ff ff ff       	jmpq   40130f <__tmainCRTStartup+0x18f>
  40140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401410:	48 8b 35 89 2f 00 00 	mov    0x2f89(%rip),%rsi        # 4043a0 <.refptr.__native_startup_state>
  401417:	bd 01 00 00 00       	mov    $0x1,%ebp
  40141c:	8b 06                	mov    (%rsi),%eax
  40141e:	83 f8 01             	cmp    $0x1,%eax
  401421:	0f 85 de fd ff ff    	jne    401205 <__tmainCRTStartup+0x85>
  401427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40142c:	e8 87 16 00 00       	callq  402ab8 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 7d 2f 00 00 	mov    0x2f7d(%rip),%rdx        # 4043c0 <.refptr.__xc_z>
  401443:	48 8b 0d 66 2f 00 00 	mov    0x2f66(%rip),%rcx        # 4043b0 <.refptr.__xc_a>
  40144a:	e8 59 16 00 00       	callq  402aa8 <_initterm>
  40144f:	85 ed                	test   %ebp,%ebp
  401451:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401457:	0f 85 cf fd ff ff    	jne    40122c <__tmainCRTStartup+0xac>
  40145d:	31 c0                	xor    %eax,%eax
  40145f:	48 87 03             	xchg   %rax,(%rbx)
  401462:	e9 c5 fd ff ff       	jmpq   40122c <__tmainCRTStartup+0xac>
  401467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40146e:	00 00 
  401470:	48 89 d1             	mov    %rdx,%rcx
  401473:	ff 15 83 6d 00 00    	callq  *0x6d83(%rip)        # 4081fc <__imp_GetStartupInfoA>
  401479:	e9 36 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40147e:	66 90                	xchg   %ax,%ax
  401480:	48 8b 15 59 2f 00 00 	mov    0x2f59(%rip),%rdx        # 4043e0 <.refptr.__xi_z>
  401487:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40148d:	48 8b 0d 3c 2f 00 00 	mov    0x2f3c(%rip),%rcx        # 4043d0 <.refptr.__xi_a>
  401494:	e8 0f 16 00 00       	callq  402aa8 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 e3 15 00 00       	callq  402a88 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 85 2f 00 00 	mov    0x2f85(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 aa 01 00 00       	callq  401670 <__security_init_cookie>
  4014c6:	e8 b5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014cb:	90                   	nop

00000000004014cc <.l_endw>:
  4014cc:	90                   	nop
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	c3                   	retq   
  4014d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4014d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014dd:	00 00 00 

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 55 2f 00 00 	mov    0x2f55(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 7a 01 00 00       	callq  401670 <__security_init_cookie>
  4014f6:	e8 85 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014fb:	90                   	nop

00000000004014fc <.l_end>:
  4014fc:	90                   	nop
  4014fd:	48 83 c4 28          	add    $0x28,%rsp
  401501:	c3                   	retq   
  401502:	0f 1f 40 00          	nopl   0x0(%rax)
  401506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40150d:	00 00 00 

0000000000401510 <atexit>:
  401510:	48 83 ec 28          	sub    $0x28,%rsp
  401514:	e8 87 15 00 00       	callq  402aa0 <_onexit>
  401519:	48 85 c0             	test   %rax,%rax
  40151c:	0f 94 c0             	sete   %al
  40151f:	0f b6 c0             	movzbl %al,%eax
  401522:	f7 d8                	neg    %eax
  401524:	48 83 c4 28          	add    $0x28,%rsp
  401528:	c3                   	retq   
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401540 <__gcc_deregister_frame>
  401537:	e9 d4 ff ff ff       	jmpq   401510 <atexit>
  40153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401540 <__gcc_deregister_frame>:
  401540:	c3                   	retq   
  401541:	90                   	nop
  401542:	90                   	nop
  401543:	90                   	nop
  401544:	90                   	nop
  401545:	90                   	nop
  401546:	90                   	nop
  401547:	90                   	nop
  401548:	90                   	nop
  401549:	90                   	nop
  40154a:	90                   	nop
  40154b:	90                   	nop
  40154c:	90                   	nop
  40154d:	90                   	nop
  40154e:	90                   	nop
  40154f:	90                   	nop

0000000000401550 <main>:
  401550:	55                   	push   %rbp
  401551:	48 89 e5             	mov    %rsp,%rbp
  401554:	48 83 ec 30          	sub    $0x30,%rsp
  401558:	e8 d3 00 00 00       	callq  401630 <__main>
  40155d:	e8 0e 00 00 00       	callq  401570 <b>
  401562:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401565:	b8 00 00 00 00       	mov    $0x0,%eax
  40156a:	48 83 c4 30          	add    $0x30,%rsp
  40156e:	5d                   	pop    %rbp
  40156f:	c3                   	retq   

0000000000401570 <b>:
  401570:	b8 01 00 00 00       	mov    $0x1,%eax
  401575:	c3                   	retq   
  401576:	90                   	nop
  401577:	90                   	nop
  401578:	90                   	nop
  401579:	90                   	nop
  40157a:	90                   	nop
  40157b:	90                   	nop
  40157c:	90                   	nop
  40157d:	90                   	nop
  40157e:	90                   	nop
  40157f:	90                   	nop

0000000000401580 <__do_global_dtors>:
  401580:	48 83 ec 28          	sub    $0x28,%rsp
  401584:	48 8b 05 85 1a 00 00 	mov    0x1a85(%rip),%rax        # 403010 <p.93846>
  40158b:	48 8b 00             	mov    (%rax),%rax
  40158e:	48 85 c0             	test   %rax,%rax
  401591:	74 1d                	je     4015b0 <__do_global_dtors+0x30>
  401593:	ff d0                	callq  *%rax
  401595:	48 8b 05 74 1a 00 00 	mov    0x1a74(%rip),%rax        # 403010 <p.93846>
  40159c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4015a0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4015a4:	48 89 15 65 1a 00 00 	mov    %rdx,0x1a65(%rip)        # 403010 <p.93846>
  4015ab:	48 85 c0             	test   %rax,%rax
  4015ae:	75 e3                	jne    401593 <__do_global_dtors+0x13>
  4015b0:	48 83 c4 28          	add    $0x28,%rsp
  4015b4:	c3                   	retq   
  4015b5:	90                   	nop
  4015b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4015bd:	00 00 00 

00000000004015c0 <__do_global_ctors>:
  4015c0:	56                   	push   %rsi
  4015c1:	53                   	push   %rbx
  4015c2:	48 83 ec 28          	sub    $0x28,%rsp
  4015c6:	48 8b 0d 33 2d 00 00 	mov    0x2d33(%rip),%rcx        # 404300 <.refptr.__CTOR_LIST__>
  4015cd:	48 8b 11             	mov    (%rcx),%rdx
  4015d0:	83 fa ff             	cmp    $0xffffffff,%edx
  4015d3:	89 d0                	mov    %edx,%eax
  4015d5:	74 39                	je     401610 <__do_global_ctors+0x50>
  4015d7:	85 c0                	test   %eax,%eax
  4015d9:	74 20                	je     4015fb <__do_global_ctors+0x3b>
  4015db:	89 c2                	mov    %eax,%edx
  4015dd:	83 e8 01             	sub    $0x1,%eax
  4015e0:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  4015e4:	48 29 c2             	sub    %rax,%rdx
  4015e7:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  4015ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4015f0:	ff 13                	callq  *(%rbx)
  4015f2:	48 83 eb 08          	sub    $0x8,%rbx
  4015f6:	48 39 f3             	cmp    %rsi,%rbx
  4015f9:	75 f5                	jne    4015f0 <__do_global_ctors+0x30>
  4015fb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401580 <__do_global_dtors>
  401602:	48 83 c4 28          	add    $0x28,%rsp
  401606:	5b                   	pop    %rbx
  401607:	5e                   	pop    %rsi
  401608:	e9 03 ff ff ff       	jmpq   401510 <atexit>
  40160d:	0f 1f 00             	nopl   (%rax)
  401610:	31 c0                	xor    %eax,%eax
  401612:	eb 02                	jmp    401616 <__do_global_ctors+0x56>
  401614:	89 d0                	mov    %edx,%eax
  401616:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40161a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  40161f:	4c 89 c2             	mov    %r8,%rdx
  401622:	75 f0                	jne    401614 <__do_global_ctors+0x54>
  401624:	eb b1                	jmp    4015d7 <__do_global_ctors+0x17>
  401626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40162d:	00 00 00 

0000000000401630 <__main>:
  401630:	8b 05 fa 59 00 00    	mov    0x59fa(%rip),%eax        # 407030 <initialized>
  401636:	85 c0                	test   %eax,%eax
  401638:	74 06                	je     401640 <__main+0x10>
  40163a:	c3                   	retq   
  40163b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401640:	c7 05 e6 59 00 00 01 	movl   $0x1,0x59e6(%rip)        # 407030 <initialized>
  401647:	00 00 00 
  40164a:	e9 71 ff ff ff       	jmpq   4015c0 <__do_global_ctors>
  40164f:	90                   	nop

0000000000401650 <my_lconv_init>:
  401650:	48 ff 25 55 6c 00 00 	rex.W jmpq *0x6c55(%rip)        # 4082ac <__imp___lconv_init>
  401657:	90                   	nop
  401658:	90                   	nop
  401659:	90                   	nop
  40165a:	90                   	nop
  40165b:	90                   	nop
  40165c:	90                   	nop
  40165d:	90                   	nop
  40165e:	90                   	nop
  40165f:	90                   	nop

0000000000401660 <_setargv>:
  401660:	31 c0                	xor    %eax,%eax
  401662:	c3                   	retq   
  401663:	90                   	nop
  401664:	90                   	nop
  401665:	90                   	nop
  401666:	90                   	nop
  401667:	90                   	nop
  401668:	90                   	nop
  401669:	90                   	nop
  40166a:	90                   	nop
  40166b:	90                   	nop
  40166c:	90                   	nop
  40166d:	90                   	nop
  40166e:	90                   	nop
  40166f:	90                   	nop

0000000000401670 <__security_init_cookie>:
  401670:	41 54                	push   %r12
  401672:	55                   	push   %rbp
  401673:	57                   	push   %rdi
  401674:	56                   	push   %rsi
  401675:	53                   	push   %rbx
  401676:	48 83 ec 30          	sub    $0x30,%rsp
  40167a:	48 8b 1d 2f 1a 00 00 	mov    0x1a2f(%rip),%rbx        # 4030b0 <__security_cookie>
  401681:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401688:	2b 00 00 
  40168b:	48 39 c3             	cmp    %rax,%rbx
  40168e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401695:	00 00 
  401697:	74 17                	je     4016b0 <__security_init_cookie+0x40>
  401699:	48 f7 d3             	not    %rbx
  40169c:	48 89 1d 1d 1a 00 00 	mov    %rbx,0x1a1d(%rip)        # 4030c0 <__security_cookie_complement>
  4016a3:	48 83 c4 30          	add    $0x30,%rsp
  4016a7:	5b                   	pop    %rbx
  4016a8:	5e                   	pop    %rsi
  4016a9:	5f                   	pop    %rdi
  4016aa:	5d                   	pop    %rbp
  4016ab:	41 5c                	pop    %r12
  4016ad:	c3                   	retq   
  4016ae:	66 90                	xchg   %ax,%ax
  4016b0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4016b5:	ff 15 49 6b 00 00    	callq  *0x6b49(%rip)        # 408204 <__imp_GetSystemTimeAsFileTime>
  4016bb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4016c0:	ff 15 1e 6b 00 00    	callq  *0x6b1e(%rip)        # 4081e4 <__imp_GetCurrentProcessId>
  4016c6:	41 89 c4             	mov    %eax,%r12d
  4016c9:	ff 15 1d 6b 00 00    	callq  *0x6b1d(%rip)        # 4081ec <__imp_GetCurrentThreadId>
  4016cf:	89 c5                	mov    %eax,%ebp
  4016d1:	ff 15 35 6b 00 00    	callq  *0x6b35(%rip)        # 40820c <__imp_GetTickCount>
  4016d7:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4016dc:	89 c7                	mov    %eax,%edi
  4016de:	ff 15 40 6b 00 00    	callq  *0x6b40(%rip)        # 408224 <__imp_QueryPerformanceCounter>
  4016e4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4016e9:	44 89 e0             	mov    %r12d,%eax
  4016ec:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  4016f3:	ff 00 00 
  4016f6:	48 31 f0             	xor    %rsi,%rax
  4016f9:	89 ee                	mov    %ebp,%esi
  4016fb:	48 31 c6             	xor    %rax,%rsi
  4016fe:	89 f8                	mov    %edi,%eax
  401700:	48 31 f0             	xor    %rsi,%rax
  401703:	48 21 d0             	and    %rdx,%rax
  401706:	48 39 d8             	cmp    %rbx,%rax
  401709:	74 25                	je     401730 <__security_init_cookie+0xc0>
  40170b:	48 89 c2             	mov    %rax,%rdx
  40170e:	48 f7 d2             	not    %rdx
  401711:	48 89 05 98 19 00 00 	mov    %rax,0x1998(%rip)        # 4030b0 <__security_cookie>
  401718:	48 89 15 a1 19 00 00 	mov    %rdx,0x19a1(%rip)        # 4030c0 <__security_cookie_complement>
  40171f:	48 83 c4 30          	add    $0x30,%rsp
  401723:	5b                   	pop    %rbx
  401724:	5e                   	pop    %rsi
  401725:	5f                   	pop    %rdi
  401726:	5d                   	pop    %rbp
  401727:	41 5c                	pop    %r12
  401729:	c3                   	retq   
  40172a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401730:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401737:	d4 ff ff 
  40173a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401741:	2b 00 00 
  401744:	eb cb                	jmp    401711 <__security_init_cookie+0xa1>
  401746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40174d:	00 00 00 

0000000000401750 <__report_gsfailure>:
  401750:	55                   	push   %rbp
  401751:	56                   	push   %rsi
  401752:	53                   	push   %rbx
  401753:	48 89 e5             	mov    %rsp,%rbp
  401756:	48 83 ec 70          	sub    $0x70,%rsp
  40175a:	48 89 ce             	mov    %rcx,%rsi
  40175d:	48 8d 0d fc 58 00 00 	lea    0x58fc(%rip),%rcx        # 407060 <GS_ContextRecord>
  401764:	ff 15 ca 6a 00 00    	callq  *0x6aca(%rip)        # 408234 <__imp_RtlCaptureContext>
  40176a:	48 8b 1d e7 59 00 00 	mov    0x59e7(%rip),%rbx        # 407158 <GS_ContextRecord+0xf8>
  401771:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401775:	45 31 c0             	xor    %r8d,%r8d
  401778:	48 89 d9             	mov    %rbx,%rcx
  40177b:	ff 15 bb 6a 00 00    	callq  *0x6abb(%rip)        # 40823c <__imp_RtlLookupFunctionEntry>
  401781:	48 85 c0             	test   %rax,%rax
  401784:	0f 84 a3 00 00 00    	je     40182d <__report_gsfailure+0xdd>
  40178a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  40178e:	49 89 c1             	mov    %rax,%r9
  401791:	49 89 d8             	mov    %rbx,%r8
  401794:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40179b:	00 00 
  40179d:	48 8d 0d bc 58 00 00 	lea    0x58bc(%rip),%rcx        # 407060 <GS_ContextRecord>
  4017a4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  4017a9:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  4017ad:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4017b2:	31 c9                	xor    %ecx,%ecx
  4017b4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4017b9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4017bd:	ff 15 81 6a 00 00    	callq  *0x6a81(%rip)        # 408244 <__imp_RtlVirtualUnwind>
  4017c3:	48 8b 05 8e 59 00 00 	mov    0x598e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4017ca:	31 c9                	xor    %ecx,%ecx
  4017cc:	48 89 35 0d 59 00 00 	mov    %rsi,0x590d(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4017d3:	48 89 05 76 5d 00 00 	mov    %rax,0x5d76(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4017da:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4017e1:	00 00 00 
  4017e4:	48 89 05 55 5d 00 00 	mov    %rax,0x5d55(%rip)        # 407540 <GS_ExceptionRecord>
  4017eb:	48 8b 05 be 18 00 00 	mov    0x18be(%rip),%rax        # 4030b0 <__security_cookie>
  4017f2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4017f6:	48 8b 05 c3 18 00 00 	mov    0x18c3(%rip),%rax        # 4030c0 <__security_cookie_complement>
  4017fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401801:	ff 15 45 6a 00 00    	callq  *0x6a45(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  401807:	48 8d 0d f2 27 00 00 	lea    0x27f2(%rip),%rcx        # 404000 <GS_ExceptionPointers>
  40180e:	ff 15 58 6a 00 00    	callq  *0x6a58(%rip)        # 40826c <__imp_UnhandledExceptionFilter>
  401814:	ff 15 c2 69 00 00    	callq  *0x69c2(%rip)        # 4081dc <__imp_GetCurrentProcess>
  40181a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40181f:	48 89 c1             	mov    %rax,%rcx
  401822:	ff 15 34 6a 00 00    	callq  *0x6a34(%rip)        # 40825c <__imp_TerminateProcess>
  401828:	e8 6b 12 00 00       	callq  402a98 <abort>
  40182d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401831:	48 89 05 20 59 00 00 	mov    %rax,0x5920(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401838:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40183c:	48 89 05 b5 58 00 00 	mov    %rax,0x58b5(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401843:	e9 7b ff ff ff       	jmpq   4017c3 <__report_gsfailure+0x73>
  401848:	90                   	nop
  401849:	90                   	nop
  40184a:	90                   	nop
  40184b:	90                   	nop
  40184c:	90                   	nop
  40184d:	90                   	nop
  40184e:	90                   	nop
  40184f:	90                   	nop

0000000000401850 <__dyn_tls_dtor>:
  401850:	48 83 ec 28          	sub    $0x28,%rsp
  401854:	83 fa 03             	cmp    $0x3,%edx
  401857:	74 17                	je     401870 <__dyn_tls_dtor+0x20>
  401859:	85 d2                	test   %edx,%edx
  40185b:	74 13                	je     401870 <__dyn_tls_dtor+0x20>
  40185d:	b8 01 00 00 00       	mov    $0x1,%eax
  401862:	48 83 c4 28          	add    $0x28,%rsp
  401866:	c3                   	retq   
  401867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40186e:	00 00 
  401870:	e8 cb 0c 00 00       	callq  402540 <__mingw_TLScallback>
  401875:	b8 01 00 00 00       	mov    $0x1,%eax
  40187a:	48 83 c4 28          	add    $0x28,%rsp
  40187e:	c3                   	retq   
  40187f:	90                   	nop

0000000000401880 <__dyn_tls_init>:
  401880:	56                   	push   %rsi
  401881:	53                   	push   %rbx
  401882:	48 83 ec 28          	sub    $0x28,%rsp
  401886:	48 8b 05 53 2a 00 00 	mov    0x2a53(%rip),%rax        # 4042e0 <.refptr._CRT_MT>
  40188d:	83 38 02             	cmpl   $0x2,(%rax)
  401890:	74 06                	je     401898 <__dyn_tls_init+0x18>
  401892:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401898:	83 fa 02             	cmp    $0x2,%edx
  40189b:	74 13                	je     4018b0 <__dyn_tls_init+0x30>
  40189d:	83 fa 01             	cmp    $0x1,%edx
  4018a0:	74 40                	je     4018e2 <__dyn_tls_init+0x62>
  4018a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4018a7:	48 83 c4 28          	add    $0x28,%rsp
  4018ab:	5b                   	pop    %rbx
  4018ac:	5e                   	pop    %rsi
  4018ad:	c3                   	retq   
  4018ae:	66 90                	xchg   %ax,%ax
  4018b0:	48 8d 1d a9 77 00 00 	lea    0x77a9(%rip),%rbx        # 409060 <__xd_z>
  4018b7:	48 8d 35 a2 77 00 00 	lea    0x77a2(%rip),%rsi        # 409060 <__xd_z>
  4018be:	48 39 de             	cmp    %rbx,%rsi
  4018c1:	74 df                	je     4018a2 <__dyn_tls_init+0x22>
  4018c3:	48 8b 03             	mov    (%rbx),%rax
  4018c6:	48 85 c0             	test   %rax,%rax
  4018c9:	74 02                	je     4018cd <__dyn_tls_init+0x4d>
  4018cb:	ff d0                	callq  *%rax
  4018cd:	48 83 c3 08          	add    $0x8,%rbx
  4018d1:	48 39 de             	cmp    %rbx,%rsi
  4018d4:	75 ed                	jne    4018c3 <__dyn_tls_init+0x43>
  4018d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4018db:	48 83 c4 28          	add    $0x28,%rsp
  4018df:	5b                   	pop    %rbx
  4018e0:	5e                   	pop    %rsi
  4018e1:	c3                   	retq   
  4018e2:	e8 59 0c 00 00       	callq  402540 <__mingw_TLScallback>
  4018e7:	b8 01 00 00 00       	mov    $0x1,%eax
  4018ec:	48 83 c4 28          	add    $0x28,%rsp
  4018f0:	5b                   	pop    %rbx
  4018f1:	5e                   	pop    %rsi
  4018f2:	c3                   	retq   
  4018f3:	0f 1f 00             	nopl   (%rax)
  4018f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4018fd:	00 00 00 

0000000000401900 <__tlregdtor>:
  401900:	31 c0                	xor    %eax,%eax
  401902:	c3                   	retq   
  401903:	90                   	nop
  401904:	90                   	nop
  401905:	90                   	nop
  401906:	90                   	nop
  401907:	90                   	nop
  401908:	90                   	nop
  401909:	90                   	nop
  40190a:	90                   	nop
  40190b:	90                   	nop
  40190c:	90                   	nop
  40190d:	90                   	nop
  40190e:	90                   	nop
  40190f:	90                   	nop

0000000000401910 <__mingw_raise_matherr>:
  401910:	48 83 ec 58          	sub    $0x58,%rsp
  401914:	48 8b 05 e5 5c 00 00 	mov    0x5ce5(%rip),%rax        # 407600 <stUserMathErr>
  40191b:	48 85 c0             	test   %rax,%rax
  40191e:	74 2c                	je     40194c <__mingw_raise_matherr+0x3c>
  401920:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401927:	00 00 
  401929:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40192d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401932:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401937:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40193d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401943:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401949:	ff d0                	callq  *%rax
  40194b:	90                   	nop
  40194c:	48 83 c4 58          	add    $0x58,%rsp
  401950:	c3                   	retq   
  401951:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40195d:	00 00 00 

0000000000401960 <__mingw_setusermatherr>:
  401960:	48 89 0d 99 5c 00 00 	mov    %rcx,0x5c99(%rip)        # 407600 <stUserMathErr>
  401967:	e9 54 11 00 00       	jmpq   402ac0 <__setusermatherr>
  40196c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401970 <_matherr>:
  401970:	56                   	push   %rsi
  401971:	53                   	push   %rbx
  401972:	48 83 ec 78          	sub    $0x78,%rsp
  401976:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  40197b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401980:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401986:	83 39 06             	cmpl   $0x6,(%rcx)
  401989:	0f 87 d1 00 00 00    	ja     401a60 <_matherr+0xf0>
  40198f:	8b 01                	mov    (%rcx),%eax
  401991:	48 8d 15 0c 28 00 00 	lea    0x280c(%rip),%rdx        # 4041a4 <.rdata+0x124>
  401998:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40199c:	48 01 d0             	add    %rdx,%rax
  40199f:	ff e0                	jmpq   *%rax
  4019a1:	48 8d 1d d8 26 00 00 	lea    0x26d8(%rip),%rbx        # 404080 <.rdata>
  4019a8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  4019ac:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  4019b2:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  4019b7:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  4019bc:	b9 02 00 00 00       	mov    $0x2,%ecx
  4019c1:	e8 2a 11 00 00       	callq  402af0 <__acrt_iob_func>
  4019c6:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  4019cd:	49 89 f1             	mov    %rsi,%r9
  4019d0:	49 89 d8             	mov    %rbx,%r8
  4019d3:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  4019d9:	48 8d 15 98 27 00 00 	lea    0x2798(%rip),%rdx        # 404178 <.rdata+0xf8>
  4019e0:	48 89 c1             	mov    %rax,%rcx
  4019e3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  4019e9:	e8 92 10 00 00       	callq  402a80 <fprintf>
  4019ee:	90                   	nop
  4019ef:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  4019f4:	31 c0                	xor    %eax,%eax
  4019f6:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  4019fb:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401a01:	48 83 c4 78          	add    $0x78,%rsp
  401a05:	5b                   	pop    %rbx
  401a06:	5e                   	pop    %rsi
  401a07:	c3                   	retq   
  401a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401a0f:	00 
  401a10:	48 8d 1d 88 26 00 00 	lea    0x2688(%rip),%rbx        # 40409f <.rdata+0x1f>
  401a17:	eb 8f                	jmp    4019a8 <_matherr+0x38>
  401a19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a20:	48 8d 1d 99 26 00 00 	lea    0x2699(%rip),%rbx        # 4040c0 <.rdata+0x40>
  401a27:	e9 7c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a2c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a30:	48 8d 1d f9 26 00 00 	lea    0x26f9(%rip),%rbx        # 404130 <.rdata+0xb0>
  401a37:	e9 6c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a40:	48 8d 1d c1 26 00 00 	lea    0x26c1(%rip),%rbx        # 404108 <.rdata+0x88>
  401a47:	e9 5c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a50:	48 8d 1d 89 26 00 00 	lea    0x2689(%rip),%rbx        # 4040e0 <.rdata+0x60>
  401a57:	e9 4c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a5c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a60:	48 8d 1d ff 26 00 00 	lea    0x26ff(%rip),%rbx        # 404166 <.rdata+0xe6>
  401a67:	e9 3c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a6c:	90                   	nop
  401a6d:	90                   	nop
  401a6e:	90                   	nop
  401a6f:	90                   	nop

0000000000401a70 <_fpreset>:
  401a70:	db e3                	fninit 
  401a72:	c3                   	retq   
  401a73:	90                   	nop
  401a74:	90                   	nop
  401a75:	90                   	nop
  401a76:	90                   	nop
  401a77:	90                   	nop
  401a78:	90                   	nop
  401a79:	90                   	nop
  401a7a:	90                   	nop
  401a7b:	90                   	nop
  401a7c:	90                   	nop
  401a7d:	90                   	nop
  401a7e:	90                   	nop
  401a7f:	90                   	nop

0000000000401a80 <_decode_pointer>:
  401a80:	48 89 c8             	mov    %rcx,%rax
  401a83:	c3                   	retq   
  401a84:	66 90                	xchg   %ax,%ax
  401a86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a8d:	00 00 00 

0000000000401a90 <_encode_pointer>:
  401a90:	48 89 c8             	mov    %rcx,%rax
  401a93:	c3                   	retq   
  401a94:	90                   	nop
  401a95:	90                   	nop
  401a96:	90                   	nop
  401a97:	90                   	nop
  401a98:	90                   	nop
  401a99:	90                   	nop
  401a9a:	90                   	nop
  401a9b:	90                   	nop
  401a9c:	90                   	nop
  401a9d:	90                   	nop
  401a9e:	90                   	nop
  401a9f:	90                   	nop

0000000000401aa0 <__write_memory.part.0>:
  401aa0:	41 54                	push   %r12
  401aa2:	55                   	push   %rbp
  401aa3:	57                   	push   %rdi
  401aa4:	56                   	push   %rsi
  401aa5:	53                   	push   %rbx
  401aa6:	48 83 ec 50          	sub    $0x50,%rsp
  401aaa:	48 63 35 73 5b 00 00 	movslq 0x5b73(%rip),%rsi        # 407624 <maxSections>
  401ab1:	85 f6                	test   %esi,%esi
  401ab3:	48 89 cb             	mov    %rcx,%rbx
  401ab6:	48 89 d5             	mov    %rdx,%rbp
  401ab9:	4c 89 c7             	mov    %r8,%rdi
  401abc:	0f 8e 66 01 00 00    	jle    401c28 <__write_memory.part.0+0x188>
  401ac2:	48 8b 05 5f 5b 00 00 	mov    0x5b5f(%rip),%rax        # 407628 <the_secs>
  401ac9:	31 c9                	xor    %ecx,%ecx
  401acb:	48 83 c0 18          	add    $0x18,%rax
  401acf:	90                   	nop
  401ad0:	48 8b 10             	mov    (%rax),%rdx
  401ad3:	48 39 d3             	cmp    %rdx,%rbx
  401ad6:	72 14                	jb     401aec <__write_memory.part.0+0x4c>
  401ad8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401adc:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401ae0:	4c 01 c2             	add    %r8,%rdx
  401ae3:	48 39 d3             	cmp    %rdx,%rbx
  401ae6:	0f 82 89 00 00 00    	jb     401b75 <__write_memory.part.0+0xd5>
  401aec:	83 c1 01             	add    $0x1,%ecx
  401aef:	48 83 c0 28          	add    $0x28,%rax
  401af3:	39 f1                	cmp    %esi,%ecx
  401af5:	75 d9                	jne    401ad0 <__write_memory.part.0+0x30>
  401af7:	48 89 d9             	mov    %rbx,%rcx
  401afa:	e8 41 0c 00 00       	callq  402740 <__mingw_GetSectionForAddress>
  401aff:	48 85 c0             	test   %rax,%rax
  401b02:	49 89 c4             	mov    %rax,%r12
  401b05:	0f 84 52 01 00 00    	je     401c5d <__write_memory.part.0+0x1bd>
  401b0b:	48 8b 05 16 5b 00 00 	mov    0x5b16(%rip),%rax        # 407628 <the_secs>
  401b12:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  401b16:	48 c1 e6 03          	shl    $0x3,%rsi
  401b1a:	48 01 f0             	add    %rsi,%rax
  401b1d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  401b21:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401b27:	e8 44 0d 00 00       	callq  402870 <_GetPEImageBase>
  401b2c:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  401b31:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b36:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b3c:	48 01 c1             	add    %rax,%rcx
  401b3f:	48 8b 05 e2 5a 00 00 	mov    0x5ae2(%rip),%rax        # 407628 <the_secs>
  401b46:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  401b4b:	ff 15 2b 67 00 00    	callq  *0x672b(%rip)        # 40827c <__imp_VirtualQuery>
  401b51:	48 85 c0             	test   %rax,%rax
  401b54:	0f 84 e6 00 00 00    	je     401c40 <__write_memory.part.0+0x1a0>
  401b5a:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b5e:	8d 50 fc             	lea    -0x4(%rax),%edx
  401b61:	83 e2 fb             	and    $0xfffffffb,%edx
  401b64:	74 08                	je     401b6e <__write_memory.part.0+0xce>
  401b66:	83 e8 40             	sub    $0x40,%eax
  401b69:	83 e0 bf             	and    $0xffffffbf,%eax
  401b6c:	75 62                	jne    401bd0 <__write_memory.part.0+0x130>
  401b6e:	83 05 af 5a 00 00 01 	addl   $0x1,0x5aaf(%rip)        # 407624 <maxSections>
  401b75:	83 ff 08             	cmp    $0x8,%edi
  401b78:	73 29                	jae    401ba3 <__write_memory.part.0+0x103>
  401b7a:	40 f6 c7 04          	test   $0x4,%dil
  401b7e:	0f 85 90 00 00 00    	jne    401c14 <__write_memory.part.0+0x174>
  401b84:	85 ff                	test   %edi,%edi
  401b86:	74 10                	je     401b98 <__write_memory.part.0+0xf8>
  401b88:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401b8c:	40 f6 c7 02          	test   $0x2,%dil
  401b90:	88 03                	mov    %al,(%rbx)
  401b92:	0f 85 97 00 00 00    	jne    401c2f <__write_memory.part.0+0x18f>
  401b98:	48 83 c4 50          	add    $0x50,%rsp
  401b9c:	5b                   	pop    %rbx
  401b9d:	5e                   	pop    %rsi
  401b9e:	5f                   	pop    %rdi
  401b9f:	5d                   	pop    %rbp
  401ba0:	41 5c                	pop    %r12
  401ba2:	c3                   	retq   
  401ba3:	89 f8                	mov    %edi,%eax
  401ba5:	83 ef 01             	sub    $0x1,%edi
  401ba8:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  401bad:	83 ff 08             	cmp    $0x8,%edi
  401bb0:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  401bb5:	72 e1                	jb     401b98 <__write_memory.part.0+0xf8>
  401bb7:	83 e7 f8             	and    $0xfffffff8,%edi
  401bba:	31 c0                	xor    %eax,%eax
  401bbc:	89 c2                	mov    %eax,%edx
  401bbe:	83 c0 08             	add    $0x8,%eax
  401bc1:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  401bc6:	39 f8                	cmp    %edi,%eax
  401bc8:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  401bcc:	72 ee                	jb     401bbc <__write_memory.part.0+0x11c>
  401bce:	eb c8                	jmp    401b98 <__write_memory.part.0+0xf8>
  401bd0:	48 03 35 51 5a 00 00 	add    0x5a51(%rip),%rsi        # 407628 <the_secs>
  401bd7:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401bdd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401be2:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401be7:	49 89 f1             	mov    %rsi,%r9
  401bea:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401bee:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  401bf2:	ff 15 7c 66 00 00    	callq  *0x667c(%rip)        # 408274 <__imp_VirtualProtect>
  401bf8:	85 c0                	test   %eax,%eax
  401bfa:	0f 85 6e ff ff ff    	jne    401b6e <__write_memory.part.0+0xce>
  401c00:	ff 15 ee 65 00 00    	callq  *0x65ee(%rip)        # 4081f4 <__imp_GetLastError>
  401c06:	48 8d 0d 2b 26 00 00 	lea    0x262b(%rip),%rcx        # 404238 <.rdata+0x78>
  401c0d:	89 c2                	mov    %eax,%edx
  401c0f:	e8 0c 10 00 00       	callq  402c20 <__report_error>
  401c14:	8b 45 00             	mov    0x0(%rbp),%eax
  401c17:	89 ff                	mov    %edi,%edi
  401c19:	89 03                	mov    %eax,(%rbx)
  401c1b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  401c1f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  401c23:	e9 70 ff ff ff       	jmpq   401b98 <__write_memory.part.0+0xf8>
  401c28:	31 f6                	xor    %esi,%esi
  401c2a:	e9 c8 fe ff ff       	jmpq   401af7 <__write_memory.part.0+0x57>
  401c2f:	89 ff                	mov    %edi,%edi
  401c31:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  401c36:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  401c3b:	e9 58 ff ff ff       	jmpq   401b98 <__write_memory.part.0+0xf8>
  401c40:	48 8b 05 e1 59 00 00 	mov    0x59e1(%rip),%rax        # 407628 <the_secs>
  401c47:	48 8d 0d b2 25 00 00 	lea    0x25b2(%rip),%rcx        # 404200 <.rdata+0x40>
  401c4e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  401c53:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  401c58:	e8 c3 0f 00 00       	callq  402c20 <__report_error>
  401c5d:	48 8d 0d 7c 25 00 00 	lea    0x257c(%rip),%rcx        # 4041e0 <.rdata+0x20>
  401c64:	48 89 da             	mov    %rbx,%rdx
  401c67:	e8 b4 0f 00 00       	callq  402c20 <__report_error>
  401c6c:	90                   	nop
  401c6d:	0f 1f 00             	nopl   (%rax)

0000000000401c70 <_pei386_runtime_relocator>:
  401c70:	55                   	push   %rbp
  401c71:	41 57                	push   %r15
  401c73:	41 56                	push   %r14
  401c75:	41 55                	push   %r13
  401c77:	41 54                	push   %r12
  401c79:	57                   	push   %rdi
  401c7a:	56                   	push   %rsi
  401c7b:	53                   	push   %rbx
  401c7c:	48 83 ec 38          	sub    $0x38,%rsp
  401c80:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401c87:	00 
  401c88:	8b 1d 92 59 00 00    	mov    0x5992(%rip),%ebx        # 407620 <was_init.95174>
  401c8e:	85 db                	test   %ebx,%ebx
  401c90:	74 11                	je     401ca3 <_pei386_runtime_relocator+0x33>
  401c92:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401c96:	5b                   	pop    %rbx
  401c97:	5e                   	pop    %rsi
  401c98:	5f                   	pop    %rdi
  401c99:	41 5c                	pop    %r12
  401c9b:	41 5d                	pop    %r13
  401c9d:	41 5e                	pop    %r14
  401c9f:	41 5f                	pop    %r15
  401ca1:	5d                   	pop    %rbp
  401ca2:	c3                   	retq   
  401ca3:	c7 05 73 59 00 00 01 	movl   $0x1,0x5973(%rip)        # 407620 <was_init.95174>
  401caa:	00 00 00 
  401cad:	e8 0e 0b 00 00       	callq  4027c0 <__mingw_GetSectionCount>
  401cb2:	48 98                	cltq   
  401cb4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401cb8:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  401cbf:	00 
  401cc0:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401cc4:	e8 37 0d 00 00       	callq  402a00 <___chkstk_ms>
  401cc9:	4c 8b 25 40 26 00 00 	mov    0x2640(%rip),%r12        # 404310 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401cd0:	c7 05 4a 59 00 00 00 	movl   $0x0,0x594a(%rip)        # 407624 <maxSections>
  401cd7:	00 00 00 
  401cda:	48 8b 35 3f 26 00 00 	mov    0x263f(%rip),%rsi        # 404320 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401ce1:	48 29 c4             	sub    %rax,%rsp
  401ce4:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401ce9:	48 89 05 38 59 00 00 	mov    %rax,0x5938(%rip)        # 407628 <the_secs>
  401cf0:	4c 89 e0             	mov    %r12,%rax
  401cf3:	48 29 f0             	sub    %rsi,%rax
  401cf6:	48 83 f8 07          	cmp    $0x7,%rax
  401cfa:	7e 96                	jle    401c92 <_pei386_runtime_relocator+0x22>
  401cfc:	48 83 f8 0b          	cmp    $0xb,%rax
  401d00:	8b 16                	mov    (%rsi),%edx
  401d02:	0f 8e c8 00 00 00    	jle    401dd0 <_pei386_runtime_relocator+0x160>
  401d08:	85 d2                	test   %edx,%edx
  401d0a:	0f 84 a4 00 00 00    	je     401db4 <_pei386_runtime_relocator+0x144>
  401d10:	4c 39 e6             	cmp    %r12,%rsi
  401d13:	0f 83 79 ff ff ff    	jae    401c92 <_pei386_runtime_relocator+0x22>
  401d19:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  401d1d:	49 83 c4 07          	add    $0x7,%r12
  401d21:	4c 8b 2d 18 26 00 00 	mov    0x2618(%rip),%r13        # 404340 <.refptr.__image_base__>
  401d28:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401d2c:	4d 29 f4             	sub    %r14,%r12
  401d2f:	49 c1 ec 03          	shr    $0x3,%r12
  401d33:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  401d38:	eb 0a                	jmp    401d44 <_pei386_runtime_relocator+0xd4>
  401d3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401d40:	49 83 c6 08          	add    $0x8,%r14
  401d44:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401d47:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401d4d:	48 89 fa             	mov    %rdi,%rdx
  401d50:	8b 06                	mov    (%rsi),%eax
  401d52:	4c 89 f6             	mov    %r14,%rsi
  401d55:	4c 01 e9             	add    %r13,%rcx
  401d58:	03 01                	add    (%rcx),%eax
  401d5a:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401d5d:	e8 3e fd ff ff       	callq  401aa0 <__write_memory.part.0>
  401d62:	4d 39 e6             	cmp    %r12,%r14
  401d65:	75 d9                	jne    401d40 <_pei386_runtime_relocator+0xd0>
  401d67:	8b 05 b7 58 00 00    	mov    0x58b7(%rip),%eax        # 407624 <maxSections>
  401d6d:	31 f6                	xor    %esi,%esi
  401d6f:	4c 8b 25 fe 64 00 00 	mov    0x64fe(%rip),%r12        # 408274 <__imp_VirtualProtect>
  401d76:	85 c0                	test   %eax,%eax
  401d78:	0f 8e 14 ff ff ff    	jle    401c92 <_pei386_runtime_relocator+0x22>
  401d7e:	66 90                	xchg   %ax,%ax
  401d80:	48 8b 05 a1 58 00 00 	mov    0x58a1(%rip),%rax        # 407628 <the_secs>
  401d87:	48 01 f0             	add    %rsi,%rax
  401d8a:	44 8b 00             	mov    (%rax),%r8d
  401d8d:	45 85 c0             	test   %r8d,%r8d
  401d90:	74 0e                	je     401da0 <_pei386_runtime_relocator+0x130>
  401d92:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401d96:	49 89 f9             	mov    %rdi,%r9
  401d99:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401d9d:	41 ff d4             	callq  *%r12
  401da0:	83 c3 01             	add    $0x1,%ebx
  401da3:	48 83 c6 28          	add    $0x28,%rsi
  401da7:	3b 1d 77 58 00 00    	cmp    0x5877(%rip),%ebx        # 407624 <maxSections>
  401dad:	7c d1                	jl     401d80 <_pei386_runtime_relocator+0x110>
  401daf:	e9 de fe ff ff       	jmpq   401c92 <_pei386_runtime_relocator+0x22>
  401db4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401db7:	85 c9                	test   %ecx,%ecx
  401db9:	0f 85 51 ff ff ff    	jne    401d10 <_pei386_runtime_relocator+0xa0>
  401dbf:	8b 56 08             	mov    0x8(%rsi),%edx
  401dc2:	85 d2                	test   %edx,%edx
  401dc4:	75 1d                	jne    401de3 <_pei386_runtime_relocator+0x173>
  401dc6:	8b 56 0c             	mov    0xc(%rsi),%edx
  401dc9:	48 83 c6 0c          	add    $0xc,%rsi
  401dcd:	0f 1f 00             	nopl   (%rax)
  401dd0:	85 d2                	test   %edx,%edx
  401dd2:	0f 85 38 ff ff ff    	jne    401d10 <_pei386_runtime_relocator+0xa0>
  401dd8:	8b 46 04             	mov    0x4(%rsi),%eax
  401ddb:	85 c0                	test   %eax,%eax
  401ddd:	0f 85 2d ff ff ff    	jne    401d10 <_pei386_runtime_relocator+0xa0>
  401de3:	8b 56 08             	mov    0x8(%rsi),%edx
  401de6:	83 fa 01             	cmp    $0x1,%edx
  401de9:	0f 85 2f 01 00 00    	jne    401f1e <_pei386_runtime_relocator+0x2ae>
  401def:	4c 8b 2d 4a 25 00 00 	mov    0x254a(%rip),%r13        # 404340 <.refptr.__image_base__>
  401df6:	48 83 c6 0c          	add    $0xc,%rsi
  401dfa:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401e01:	ff ff ff 
  401e04:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  401e08:	4c 39 e6             	cmp    %r12,%rsi
  401e0b:	72 48                	jb     401e55 <_pei386_runtime_relocator+0x1e5>
  401e0d:	e9 80 fe ff ff       	jmpq   401c92 <_pei386_runtime_relocator+0x22>
  401e12:	0f 86 b8 00 00 00    	jbe    401ed0 <_pei386_runtime_relocator+0x260>
  401e18:	83 fa 20             	cmp    $0x20,%edx
  401e1b:	0f 84 7f 00 00 00    	je     401ea0 <_pei386_runtime_relocator+0x230>
  401e21:	83 fa 40             	cmp    $0x40,%edx
  401e24:	0f 85 e0 00 00 00    	jne    401f0a <_pei386_runtime_relocator+0x29a>
  401e2a:	48 8b 11             	mov    (%rcx),%rdx
  401e2d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401e33:	4c 89 f7             	mov    %r14,%rdi
  401e36:	48 29 c2             	sub    %rax,%rdx
  401e39:	4c 01 ca             	add    %r9,%rdx
  401e3c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401e40:	4c 89 f2             	mov    %r14,%rdx
  401e43:	e8 58 fc ff ff       	callq  401aa0 <__write_memory.part.0>
  401e48:	48 83 c6 0c          	add    $0xc,%rsi
  401e4c:	4c 39 e6             	cmp    %r12,%rsi
  401e4f:	0f 83 12 ff ff ff    	jae    401d67 <_pei386_runtime_relocator+0xf7>
  401e55:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401e58:	8b 06                	mov    (%rsi),%eax
  401e5a:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  401e5e:	4c 01 e9             	add    %r13,%rcx
  401e61:	4c 01 e8             	add    %r13,%rax
  401e64:	83 fa 10             	cmp    $0x10,%edx
  401e67:	4c 8b 08             	mov    (%rax),%r9
  401e6a:	75 a6                	jne    401e12 <_pei386_runtime_relocator+0x1a2>
  401e6c:	44 0f b7 01          	movzwl (%rcx),%r8d
  401e70:	4c 89 f2             	mov    %r14,%rdx
  401e73:	4c 89 f7             	mov    %r14,%rdi
  401e76:	4d 89 c2             	mov    %r8,%r10
  401e79:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401e80:	66 45 85 c0          	test   %r8w,%r8w
  401e84:	4d 0f 48 c2          	cmovs  %r10,%r8
  401e88:	49 29 c0             	sub    %rax,%r8
  401e8b:	4d 01 c8             	add    %r9,%r8
  401e8e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401e92:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401e98:	e8 03 fc ff ff       	callq  401aa0 <__write_memory.part.0>
  401e9d:	eb a9                	jmp    401e48 <_pei386_runtime_relocator+0x1d8>
  401e9f:	90                   	nop
  401ea0:	8b 11                	mov    (%rcx),%edx
  401ea2:	4c 89 f7             	mov    %r14,%rdi
  401ea5:	49 89 d0             	mov    %rdx,%r8
  401ea8:	4c 09 fa             	or     %r15,%rdx
  401eab:	45 85 c0             	test   %r8d,%r8d
  401eae:	49 0f 49 d0          	cmovns %r8,%rdx
  401eb2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401eb8:	48 29 c2             	sub    %rax,%rdx
  401ebb:	4c 01 ca             	add    %r9,%rdx
  401ebe:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401ec2:	4c 89 f2             	mov    %r14,%rdx
  401ec5:	e8 d6 fb ff ff       	callq  401aa0 <__write_memory.part.0>
  401eca:	e9 79 ff ff ff       	jmpq   401e48 <_pei386_runtime_relocator+0x1d8>
  401ecf:	90                   	nop
  401ed0:	83 fa 08             	cmp    $0x8,%edx
  401ed3:	75 35                	jne    401f0a <_pei386_runtime_relocator+0x29a>
  401ed5:	44 0f b6 01          	movzbl (%rcx),%r8d
  401ed9:	4c 89 f2             	mov    %r14,%rdx
  401edc:	4c 89 f7             	mov    %r14,%rdi
  401edf:	4d 89 c2             	mov    %r8,%r10
  401ee2:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401ee9:	45 84 c0             	test   %r8b,%r8b
  401eec:	4d 0f 48 c2          	cmovs  %r10,%r8
  401ef0:	49 29 c0             	sub    %rax,%r8
  401ef3:	4d 01 c8             	add    %r9,%r8
  401ef6:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401efa:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401f00:	e8 9b fb ff ff       	callq  401aa0 <__write_memory.part.0>
  401f05:	e9 3e ff ff ff       	jmpq   401e48 <_pei386_runtime_relocator+0x1d8>
  401f0a:	48 8d 0d 87 23 00 00 	lea    0x2387(%rip),%rcx        # 404298 <.rdata+0xd8>
  401f11:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401f18:	00 
  401f19:	e8 02 0d 00 00       	callq  402c20 <__report_error>
  401f1e:	48 8d 0d 3b 23 00 00 	lea    0x233b(%rip),%rcx        # 404260 <.rdata+0xa0>
  401f25:	e8 f6 0c 00 00       	callq  402c20 <__report_error>
  401f2a:	90                   	nop
  401f2b:	90                   	nop
  401f2c:	90                   	nop
  401f2d:	90                   	nop
  401f2e:	90                   	nop
  401f2f:	90                   	nop

0000000000401f30 <__mingw_SEH_error_handler>:
  401f30:	48 83 ec 28          	sub    $0x28,%rsp
  401f34:	8b 01                	mov    (%rcx),%eax
  401f36:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401f3b:	77 63                	ja     401fa0 <__mingw_SEH_error_handler+0x70>
  401f3d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401f42:	73 7b                	jae    401fbf <__mingw_SEH_error_handler+0x8f>
  401f44:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  401f49:	0f 84 05 01 00 00    	je     402054 <__mingw_SEH_error_handler+0x124>
  401f4f:	0f 87 cb 00 00 00    	ja     402020 <__mingw_SEH_error_handler+0xf0>
  401f55:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  401f5a:	0f 84 f4 00 00 00    	je     402054 <__mingw_SEH_error_handler+0x124>
  401f60:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401f65:	0f 85 c3 00 00 00    	jne    40202e <__mingw_SEH_error_handler+0xfe>
  401f6b:	31 d2                	xor    %edx,%edx
  401f6d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401f72:	e8 e1 0a 00 00       	callq  402a58 <signal>
  401f77:	48 83 f8 01          	cmp    $0x1,%rax
  401f7b:	0f 84 2f 01 00 00    	je     4020b0 <__mingw_SEH_error_handler+0x180>
  401f81:	48 85 c0             	test   %rax,%rax
  401f84:	0f 84 3c 01 00 00    	je     4020c6 <__mingw_SEH_error_handler+0x196>
  401f8a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401f8f:	ff d0                	callq  *%rax
  401f91:	31 c0                	xor    %eax,%eax
  401f93:	48 83 c4 28          	add    $0x28,%rsp
  401f97:	c3                   	retq   
  401f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401f9f:	00 
  401fa0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401fa5:	0f 84 b5 00 00 00    	je     402060 <__mingw_SEH_error_handler+0x130>
  401fab:	77 37                	ja     401fe4 <__mingw_SEH_error_handler+0xb4>
  401fad:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401fb2:	0f 84 9c 00 00 00    	je     402054 <__mingw_SEH_error_handler+0x124>
  401fb8:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401fbd:	75 6f                	jne    40202e <__mingw_SEH_error_handler+0xfe>
  401fbf:	31 d2                	xor    %edx,%edx
  401fc1:	b9 08 00 00 00       	mov    $0x8,%ecx
  401fc6:	e8 8d 0a 00 00       	callq  402a58 <signal>
  401fcb:	48 83 f8 01          	cmp    $0x1,%rax
  401fcf:	74 6f                	je     402040 <__mingw_SEH_error_handler+0x110>
  401fd1:	48 85 c0             	test   %rax,%rax
  401fd4:	74 58                	je     40202e <__mingw_SEH_error_handler+0xfe>
  401fd6:	b9 08 00 00 00       	mov    $0x8,%ecx
  401fdb:	ff d0                	callq  *%rax
  401fdd:	31 c0                	xor    %eax,%eax
  401fdf:	48 83 c4 28          	add    $0x28,%rsp
  401fe3:	c3                   	retq   
  401fe4:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  401fe9:	74 69                	je     402054 <__mingw_SEH_error_handler+0x124>
  401feb:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  401ff0:	75 3c                	jne    40202e <__mingw_SEH_error_handler+0xfe>
  401ff2:	31 d2                	xor    %edx,%edx
  401ff4:	b9 04 00 00 00       	mov    $0x4,%ecx
  401ff9:	e8 5a 0a 00 00       	callq  402a58 <signal>
  401ffe:	48 83 f8 01          	cmp    $0x1,%rax
  402002:	0f 84 88 00 00 00    	je     402090 <__mingw_SEH_error_handler+0x160>
  402008:	48 85 c0             	test   %rax,%rax
  40200b:	0f 84 b5 00 00 00    	je     4020c6 <__mingw_SEH_error_handler+0x196>
  402011:	b9 04 00 00 00       	mov    $0x4,%ecx
  402016:	ff d0                	callq  *%rax
  402018:	31 c0                	xor    %eax,%eax
  40201a:	48 83 c4 28          	add    $0x28,%rsp
  40201e:	c3                   	retq   
  40201f:	90                   	nop
  402020:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402025:	74 cb                	je     401ff2 <__mingw_SEH_error_handler+0xc2>
  402027:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  40202c:	74 26                	je     402054 <__mingw_SEH_error_handler+0x124>
  40202e:	b8 01 00 00 00       	mov    $0x1,%eax
  402033:	48 83 c4 28          	add    $0x28,%rsp
  402037:	c3                   	retq   
  402038:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40203f:	00 
  402040:	ba 01 00 00 00       	mov    $0x1,%edx
  402045:	b9 08 00 00 00       	mov    $0x8,%ecx
  40204a:	e8 09 0a 00 00       	callq  402a58 <signal>
  40204f:	e8 1c fa ff ff       	callq  401a70 <_fpreset>
  402054:	31 c0                	xor    %eax,%eax
  402056:	48 83 c4 28          	add    $0x28,%rsp
  40205a:	c3                   	retq   
  40205b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402060:	31 d2                	xor    %edx,%edx
  402062:	b9 08 00 00 00       	mov    $0x8,%ecx
  402067:	e8 ec 09 00 00       	callq  402a58 <signal>
  40206c:	48 83 f8 01          	cmp    $0x1,%rax
  402070:	0f 85 5b ff ff ff    	jne    401fd1 <__mingw_SEH_error_handler+0xa1>
  402076:	ba 01 00 00 00       	mov    $0x1,%edx
  40207b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402080:	e8 d3 09 00 00       	callq  402a58 <signal>
  402085:	31 c0                	xor    %eax,%eax
  402087:	e9 07 ff ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>
  40208c:	0f 1f 40 00          	nopl   0x0(%rax)
  402090:	ba 01 00 00 00       	mov    $0x1,%edx
  402095:	b9 04 00 00 00       	mov    $0x4,%ecx
  40209a:	e8 b9 09 00 00       	callq  402a58 <signal>
  40209f:	31 c0                	xor    %eax,%eax
  4020a1:	e9 ed fe ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>
  4020a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4020ad:	00 00 00 
  4020b0:	ba 01 00 00 00       	mov    $0x1,%edx
  4020b5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4020ba:	e8 99 09 00 00       	callq  402a58 <signal>
  4020bf:	31 c0                	xor    %eax,%eax
  4020c1:	e9 cd fe ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>
  4020c6:	b8 04 00 00 00       	mov    $0x4,%eax
  4020cb:	e9 c3 fe ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>

00000000004020d0 <__mingw_init_ehandler>:
  4020d0:	41 54                	push   %r12
  4020d2:	55                   	push   %rbp
  4020d3:	57                   	push   %rdi
  4020d4:	56                   	push   %rsi
  4020d5:	53                   	push   %rbx
  4020d6:	48 83 ec 20          	sub    $0x20,%rsp
  4020da:	e8 91 07 00 00       	callq  402870 <_GetPEImageBase>
  4020df:	48 89 c5             	mov    %rax,%rbp
  4020e2:	8b 05 60 55 00 00    	mov    0x5560(%rip),%eax        # 407648 <was_here.95013>
  4020e8:	85 c0                	test   %eax,%eax
  4020ea:	75 25                	jne    402111 <__mingw_init_ehandler+0x41>
  4020ec:	48 85 ed             	test   %rbp,%rbp
  4020ef:	74 20                	je     402111 <__mingw_init_ehandler+0x41>
  4020f1:	48 8d 0d d8 21 00 00 	lea    0x21d8(%rip),%rcx        # 4042d0 <.rdata>
  4020f8:	c7 05 46 55 00 00 01 	movl   $0x1,0x5546(%rip)        # 407648 <was_here.95013>
  4020ff:	00 00 00 
  402102:	e8 a9 05 00 00       	callq  4026b0 <_FindPESectionByName>
  402107:	48 85 c0             	test   %rax,%rax
  40210a:	74 14                	je     402120 <__mingw_init_ehandler+0x50>
  40210c:	b8 01 00 00 00       	mov    $0x1,%eax
  402111:	48 83 c4 20          	add    $0x20,%rsp
  402115:	5b                   	pop    %rbx
  402116:	5e                   	pop    %rsi
  402117:	5f                   	pop    %rdi
  402118:	5d                   	pop    %rbp
  402119:	41 5c                	pop    %r12
  40211b:	c3                   	retq   
  40211c:	0f 1f 40 00          	nopl   0x0(%rax)
  402120:	48 8d 1d 39 56 00 00 	lea    0x5639(%rip),%rbx        # 407760 <emu_pdata>
  402127:	b9 30 00 00 00       	mov    $0x30,%ecx
  40212c:	31 f6                	xor    %esi,%esi
  40212e:	48 8d 15 2b 55 00 00 	lea    0x552b(%rip),%rdx        # 407660 <emu_xdata>
  402135:	48 89 df             	mov    %rbx,%rdi
  402138:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40213b:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 401f30 <__mingw_SEH_error_handler>
  402142:	b9 20 00 00 00       	mov    $0x20,%ecx
  402147:	48 89 d7             	mov    %rdx,%rdi
  40214a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40214d:	49 29 ec             	sub    %rbp,%r12
  402150:	48 89 d7             	mov    %rdx,%rdi
  402153:	eb 2e                	jmp    402183 <__mingw_init_ehandler+0xb3>
  402155:	c6 07 09             	movb   $0x9,(%rdi)
  402158:	48 83 c6 01          	add    $0x1,%rsi
  40215c:	48 83 c3 0c          	add    $0xc,%rbx
  402160:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  402164:	8b 48 0c             	mov    0xc(%rax),%ecx
  402167:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  40216a:	03 48 08             	add    0x8(%rax),%ecx
  40216d:	48 89 f8             	mov    %rdi,%rax
  402170:	48 83 c7 08          	add    $0x8,%rdi
  402174:	48 29 e8             	sub    %rbp,%rax
  402177:	89 43 fc             	mov    %eax,-0x4(%rbx)
  40217a:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  40217d:	48 83 fe 20          	cmp    $0x20,%rsi
  402181:	74 32                	je     4021b5 <__mingw_init_ehandler+0xe5>
  402183:	48 89 f1             	mov    %rsi,%rcx
  402186:	e8 75 06 00 00       	callq  402800 <_FindPESectionExec>
  40218b:	48 85 c0             	test   %rax,%rax
  40218e:	75 c5                	jne    402155 <__mingw_init_ehandler+0x85>
  402190:	48 85 f6             	test   %rsi,%rsi
  402193:	89 f2                	mov    %esi,%edx
  402195:	0f 84 71 ff ff ff    	je     40210c <__mingw_init_ehandler+0x3c>
  40219b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4021a0:	48 8d 0d b9 55 00 00 	lea    0x55b9(%rip),%rcx        # 407760 <emu_pdata>
  4021a7:	49 89 e8             	mov    %rbp,%r8
  4021aa:	ff 15 7c 60 00 00    	callq  *0x607c(%rip)        # 40822c <__imp_RtlAddFunctionTable>
  4021b0:	e9 57 ff ff ff       	jmpq   40210c <__mingw_init_ehandler+0x3c>
  4021b5:	ba 20 00 00 00       	mov    $0x20,%edx
  4021ba:	eb e4                	jmp    4021a0 <__mingw_init_ehandler+0xd0>
  4021bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004021c0 <_gnu_exception_handler>:
  4021c0:	53                   	push   %rbx
  4021c1:	48 83 ec 20          	sub    $0x20,%rsp
  4021c5:	48 8b 11             	mov    (%rcx),%rdx
  4021c8:	8b 02                	mov    (%rdx),%eax
  4021ca:	48 89 cb             	mov    %rcx,%rbx
  4021cd:	89 c1                	mov    %eax,%ecx
  4021cf:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4021d5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4021db:	0f 84 bf 00 00 00    	je     4022a0 <_gnu_exception_handler+0xe0>
  4021e1:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4021e6:	77 68                	ja     402250 <_gnu_exception_handler+0x90>
  4021e8:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4021ed:	73 7c                	jae    40226b <_gnu_exception_handler+0xab>
  4021ef:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4021f4:	0f 84 b0 00 00 00    	je     4022aa <_gnu_exception_handler+0xea>
  4021fa:	0f 87 f4 00 00 00    	ja     4022f4 <_gnu_exception_handler+0x134>
  402200:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402205:	0f 84 9f 00 00 00    	je     4022aa <_gnu_exception_handler+0xea>
  40220b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402210:	75 1f                	jne    402231 <_gnu_exception_handler+0x71>
  402212:	31 d2                	xor    %edx,%edx
  402214:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402219:	e8 3a 08 00 00       	callq  402a58 <signal>
  40221e:	48 83 f8 01          	cmp    $0x1,%rax
  402222:	0f 84 51 01 00 00    	je     402379 <_gnu_exception_handler+0x1b9>
  402228:	48 85 c0             	test   %rax,%rax
  40222b:	0f 85 0f 01 00 00    	jne    402340 <_gnu_exception_handler+0x180>
  402231:	48 8b 05 08 54 00 00 	mov    0x5408(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  402238:	48 85 c0             	test   %rax,%rax
  40223b:	0f 84 10 01 00 00    	je     402351 <_gnu_exception_handler+0x191>
  402241:	48 89 d9             	mov    %rbx,%rcx
  402244:	48 83 c4 20          	add    $0x20,%rsp
  402248:	5b                   	pop    %rbx
  402249:	48 ff e0             	rex.W jmpq *%rax
  40224c:	0f 1f 40 00          	nopl   0x0(%rax)
  402250:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402255:	0f 84 b5 00 00 00    	je     402310 <_gnu_exception_handler+0x150>
  40225b:	77 58                	ja     4022b5 <_gnu_exception_handler+0xf5>
  40225d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402262:	74 46                	je     4022aa <_gnu_exception_handler+0xea>
  402264:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  402269:	75 c6                	jne    402231 <_gnu_exception_handler+0x71>
  40226b:	31 d2                	xor    %edx,%edx
  40226d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402272:	e8 e1 07 00 00       	callq  402a58 <signal>
  402277:	48 83 f8 01          	cmp    $0x1,%rax
  40227b:	0f 84 df 00 00 00    	je     402360 <_gnu_exception_handler+0x1a0>
  402281:	48 85 c0             	test   %rax,%rax
  402284:	74 ab                	je     402231 <_gnu_exception_handler+0x71>
  402286:	b9 08 00 00 00       	mov    $0x8,%ecx
  40228b:	ff d0                	callq  *%rax
  40228d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402292:	48 83 c4 20          	add    $0x20,%rsp
  402296:	5b                   	pop    %rbx
  402297:	c3                   	retq   
  402298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40229f:	00 
  4022a0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4022a4:	0f 85 37 ff ff ff    	jne    4021e1 <_gnu_exception_handler+0x21>
  4022aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022af:	48 83 c4 20          	add    $0x20,%rsp
  4022b3:	5b                   	pop    %rbx
  4022b4:	c3                   	retq   
  4022b5:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4022ba:	74 ee                	je     4022aa <_gnu_exception_handler+0xea>
  4022bc:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4022c1:	0f 85 6a ff ff ff    	jne    402231 <_gnu_exception_handler+0x71>
  4022c7:	31 d2                	xor    %edx,%edx
  4022c9:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022ce:	e8 85 07 00 00       	callq  402a58 <signal>
  4022d3:	48 83 f8 01          	cmp    $0x1,%rax
  4022d7:	0f 84 b3 00 00 00    	je     402390 <_gnu_exception_handler+0x1d0>
  4022dd:	48 85 c0             	test   %rax,%rax
  4022e0:	0f 84 4b ff ff ff    	je     402231 <_gnu_exception_handler+0x71>
  4022e6:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022eb:	ff d0                	callq  *%rax
  4022ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022f2:	eb 9e                	jmp    402292 <_gnu_exception_handler+0xd2>
  4022f4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4022f9:	74 cc                	je     4022c7 <_gnu_exception_handler+0x107>
  4022fb:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402300:	0f 85 2b ff ff ff    	jne    402231 <_gnu_exception_handler+0x71>
  402306:	eb a2                	jmp    4022aa <_gnu_exception_handler+0xea>
  402308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40230f:	00 
  402310:	31 d2                	xor    %edx,%edx
  402312:	b9 08 00 00 00       	mov    $0x8,%ecx
  402317:	e8 3c 07 00 00       	callq  402a58 <signal>
  40231c:	48 83 f8 01          	cmp    $0x1,%rax
  402320:	0f 85 5b ff ff ff    	jne    402281 <_gnu_exception_handler+0xc1>
  402326:	ba 01 00 00 00       	mov    $0x1,%edx
  40232b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402330:	e8 23 07 00 00       	callq  402a58 <signal>
  402335:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40233a:	e9 53 ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  40233f:	90                   	nop
  402340:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402345:	ff d0                	callq  *%rax
  402347:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40234c:	e9 41 ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  402351:	31 c0                	xor    %eax,%eax
  402353:	e9 3a ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  402358:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40235f:	00 
  402360:	ba 01 00 00 00       	mov    $0x1,%edx
  402365:	b9 08 00 00 00       	mov    $0x8,%ecx
  40236a:	e8 e9 06 00 00       	callq  402a58 <signal>
  40236f:	e8 fc f6 ff ff       	callq  401a70 <_fpreset>
  402374:	e9 31 ff ff ff       	jmpq   4022aa <_gnu_exception_handler+0xea>
  402379:	ba 01 00 00 00       	mov    $0x1,%edx
  40237e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402383:	e8 d0 06 00 00       	callq  402a58 <signal>
  402388:	83 c8 ff             	or     $0xffffffff,%eax
  40238b:	e9 02 ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  402390:	ba 01 00 00 00       	mov    $0x1,%edx
  402395:	b9 04 00 00 00       	mov    $0x4,%ecx
  40239a:	e8 b9 06 00 00       	callq  402a58 <signal>
  40239f:	83 c8 ff             	or     $0xffffffff,%eax
  4023a2:	e9 eb fe ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  4023a7:	90                   	nop
  4023a8:	90                   	nop
  4023a9:	90                   	nop
  4023aa:	90                   	nop
  4023ab:	90                   	nop
  4023ac:	90                   	nop
  4023ad:	90                   	nop
  4023ae:	90                   	nop
  4023af:	90                   	nop

00000000004023b0 <__mingwthr_run_key_dtors.part.0>:
  4023b0:	55                   	push   %rbp
  4023b1:	57                   	push   %rdi
  4023b2:	56                   	push   %rsi
  4023b3:	53                   	push   %rbx
  4023b4:	48 83 ec 28          	sub    $0x28,%rsp
  4023b8:	48 8d 0d 41 55 00 00 	lea    0x5541(%rip),%rcx        # 407900 <__mingwthr_cs>
  4023bf:	ff 15 0f 5e 00 00    	callq  *0x5e0f(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  4023c5:	48 8b 1d 14 55 00 00 	mov    0x5514(%rip),%rbx        # 4078e0 <key_dtor_list>
  4023cc:	48 85 db             	test   %rbx,%rbx
  4023cf:	74 33                	je     402404 <__mingwthr_run_key_dtors.part.0+0x54>
  4023d1:	48 8b 2d 8c 5e 00 00 	mov    0x5e8c(%rip),%rbp        # 408264 <__imp_TlsGetValue>
  4023d8:	48 8b 3d 15 5e 00 00 	mov    0x5e15(%rip),%rdi        # 4081f4 <__imp_GetLastError>
  4023df:	90                   	nop
  4023e0:	8b 0b                	mov    (%rbx),%ecx
  4023e2:	ff d5                	callq  *%rbp
  4023e4:	48 89 c6             	mov    %rax,%rsi
  4023e7:	ff d7                	callq  *%rdi
  4023e9:	85 c0                	test   %eax,%eax
  4023eb:	75 0e                	jne    4023fb <__mingwthr_run_key_dtors.part.0+0x4b>
  4023ed:	48 85 f6             	test   %rsi,%rsi
  4023f0:	74 09                	je     4023fb <__mingwthr_run_key_dtors.part.0+0x4b>
  4023f2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4023f6:	48 89 f1             	mov    %rsi,%rcx
  4023f9:	ff d0                	callq  *%rax
  4023fb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4023ff:	48 85 db             	test   %rbx,%rbx
  402402:	75 dc                	jne    4023e0 <__mingwthr_run_key_dtors.part.0+0x30>
  402404:	48 8d 0d f5 54 00 00 	lea    0x54f5(%rip),%rcx        # 407900 <__mingwthr_cs>
  40240b:	48 83 c4 28          	add    $0x28,%rsp
  40240f:	5b                   	pop    %rbx
  402410:	5e                   	pop    %rsi
  402411:	5f                   	pop    %rdi
  402412:	5d                   	pop    %rbp
  402413:	48 ff 25 02 5e 00 00 	rex.W jmpq *0x5e02(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40241a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402420 <___w64_mingwthr_add_key_dtor>:
  402420:	55                   	push   %rbp
  402421:	57                   	push   %rdi
  402422:	56                   	push   %rsi
  402423:	53                   	push   %rbx
  402424:	48 83 ec 28          	sub    $0x28,%rsp
  402428:	8b 05 ba 54 00 00    	mov    0x54ba(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40242e:	31 f6                	xor    %esi,%esi
  402430:	85 c0                	test   %eax,%eax
  402432:	89 cd                	mov    %ecx,%ebp
  402434:	48 89 d7             	mov    %rdx,%rdi
  402437:	75 0b                	jne    402444 <___w64_mingwthr_add_key_dtor+0x24>
  402439:	89 f0                	mov    %esi,%eax
  40243b:	48 83 c4 28          	add    $0x28,%rsp
  40243f:	5b                   	pop    %rbx
  402440:	5e                   	pop    %rsi
  402441:	5f                   	pop    %rdi
  402442:	5d                   	pop    %rbp
  402443:	c3                   	retq   
  402444:	ba 18 00 00 00       	mov    $0x18,%edx
  402449:	b9 01 00 00 00       	mov    $0x1,%ecx
  40244e:	e8 3d 06 00 00       	callq  402a90 <calloc>
  402453:	48 85 c0             	test   %rax,%rax
  402456:	48 89 c3             	mov    %rax,%rbx
  402459:	74 3d                	je     402498 <___w64_mingwthr_add_key_dtor+0x78>
  40245b:	89 28                	mov    %ebp,(%rax)
  40245d:	48 8d 0d 9c 54 00 00 	lea    0x549c(%rip),%rcx        # 407900 <__mingwthr_cs>
  402464:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402468:	ff 15 66 5d 00 00    	callq  *0x5d66(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  40246e:	48 8b 05 6b 54 00 00 	mov    0x546b(%rip),%rax        # 4078e0 <key_dtor_list>
  402475:	48 8d 0d 84 54 00 00 	lea    0x5484(%rip),%rcx        # 407900 <__mingwthr_cs>
  40247c:	48 89 1d 5d 54 00 00 	mov    %rbx,0x545d(%rip)        # 4078e0 <key_dtor_list>
  402483:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402487:	ff 15 8f 5d 00 00    	callq  *0x5d8f(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40248d:	89 f0                	mov    %esi,%eax
  40248f:	48 83 c4 28          	add    $0x28,%rsp
  402493:	5b                   	pop    %rbx
  402494:	5e                   	pop    %rsi
  402495:	5f                   	pop    %rdi
  402496:	5d                   	pop    %rbp
  402497:	c3                   	retq   
  402498:	be ff ff ff ff       	mov    $0xffffffff,%esi
  40249d:	eb 9a                	jmp    402439 <___w64_mingwthr_add_key_dtor+0x19>
  40249f:	90                   	nop

00000000004024a0 <___w64_mingwthr_remove_key_dtor>:
  4024a0:	53                   	push   %rbx
  4024a1:	48 83 ec 20          	sub    $0x20,%rsp
  4024a5:	8b 05 3d 54 00 00    	mov    0x543d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4024ab:	85 c0                	test   %eax,%eax
  4024ad:	89 cb                	mov    %ecx,%ebx
  4024af:	75 0f                	jne    4024c0 <___w64_mingwthr_remove_key_dtor+0x20>
  4024b1:	31 c0                	xor    %eax,%eax
  4024b3:	48 83 c4 20          	add    $0x20,%rsp
  4024b7:	5b                   	pop    %rbx
  4024b8:	c3                   	retq   
  4024b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4024c0:	48 8d 0d 39 54 00 00 	lea    0x5439(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024c7:	ff 15 07 5d 00 00    	callq  *0x5d07(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  4024cd:	48 8b 05 0c 54 00 00 	mov    0x540c(%rip),%rax        # 4078e0 <key_dtor_list>
  4024d4:	48 85 c0             	test   %rax,%rax
  4024d7:	74 1a                	je     4024f3 <___w64_mingwthr_remove_key_dtor+0x53>
  4024d9:	8b 10                	mov    (%rax),%edx
  4024db:	39 d3                	cmp    %edx,%ebx
  4024dd:	75 0b                	jne    4024ea <___w64_mingwthr_remove_key_dtor+0x4a>
  4024df:	eb 4f                	jmp    402530 <___w64_mingwthr_remove_key_dtor+0x90>
  4024e1:	8b 11                	mov    (%rcx),%edx
  4024e3:	39 da                	cmp    %ebx,%edx
  4024e5:	74 29                	je     402510 <___w64_mingwthr_remove_key_dtor+0x70>
  4024e7:	48 89 c8             	mov    %rcx,%rax
  4024ea:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4024ee:	48 85 c9             	test   %rcx,%rcx
  4024f1:	75 ee                	jne    4024e1 <___w64_mingwthr_remove_key_dtor+0x41>
  4024f3:	48 8d 0d 06 54 00 00 	lea    0x5406(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024fa:	ff 15 1c 5d 00 00    	callq  *0x5d1c(%rip)        # 40821c <__imp_LeaveCriticalSection>
  402500:	31 c0                	xor    %eax,%eax
  402502:	48 83 c4 20          	add    $0x20,%rsp
  402506:	5b                   	pop    %rbx
  402507:	c3                   	retq   
  402508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40250f:	00 
  402510:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402514:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402518:	e8 5b 05 00 00       	callq  402a78 <free>
  40251d:	48 8d 0d dc 53 00 00 	lea    0x53dc(%rip),%rcx        # 407900 <__mingwthr_cs>
  402524:	ff 15 f2 5c 00 00    	callq  *0x5cf2(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40252a:	eb d4                	jmp    402500 <___w64_mingwthr_remove_key_dtor+0x60>
  40252c:	0f 1f 40 00          	nopl   0x0(%rax)
  402530:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402534:	48 89 c1             	mov    %rax,%rcx
  402537:	48 89 15 a2 53 00 00 	mov    %rdx,0x53a2(%rip)        # 4078e0 <key_dtor_list>
  40253e:	eb d8                	jmp    402518 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402540 <__mingw_TLScallback>:
  402540:	53                   	push   %rbx
  402541:	48 83 ec 20          	sub    $0x20,%rsp
  402545:	83 fa 01             	cmp    $0x1,%edx
  402548:	0f 84 92 00 00 00    	je     4025e0 <__mingw_TLScallback+0xa0>
  40254e:	72 30                	jb     402580 <__mingw_TLScallback+0x40>
  402550:	83 fa 02             	cmp    $0x2,%edx
  402553:	74 1b                	je     402570 <__mingw_TLScallback+0x30>
  402555:	83 fa 03             	cmp    $0x3,%edx
  402558:	75 1b                	jne    402575 <__mingw_TLScallback+0x35>
  40255a:	8b 05 88 53 00 00    	mov    0x5388(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402560:	85 c0                	test   %eax,%eax
  402562:	74 11                	je     402575 <__mingw_TLScallback+0x35>
  402564:	e8 47 fe ff ff       	callq  4023b0 <__mingwthr_run_key_dtors.part.0>
  402569:	eb 0a                	jmp    402575 <__mingw_TLScallback+0x35>
  40256b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402570:	e8 fb f4 ff ff       	callq  401a70 <_fpreset>
  402575:	b8 01 00 00 00       	mov    $0x1,%eax
  40257a:	48 83 c4 20          	add    $0x20,%rsp
  40257e:	5b                   	pop    %rbx
  40257f:	c3                   	retq   
  402580:	8b 05 62 53 00 00    	mov    0x5362(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402586:	85 c0                	test   %eax,%eax
  402588:	0f 85 82 00 00 00    	jne    402610 <__mingw_TLScallback+0xd0>
  40258e:	8b 05 54 53 00 00    	mov    0x5354(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402594:	83 f8 01             	cmp    $0x1,%eax
  402597:	75 dc                	jne    402575 <__mingw_TLScallback+0x35>
  402599:	48 8b 0d 40 53 00 00 	mov    0x5340(%rip),%rcx        # 4078e0 <key_dtor_list>
  4025a0:	48 85 c9             	test   %rcx,%rcx
  4025a3:	74 11                	je     4025b6 <__mingw_TLScallback+0x76>
  4025a5:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  4025a9:	e8 ca 04 00 00       	callq  402a78 <free>
  4025ae:	48 85 db             	test   %rbx,%rbx
  4025b1:	48 89 d9             	mov    %rbx,%rcx
  4025b4:	75 ef                	jne    4025a5 <__mingw_TLScallback+0x65>
  4025b6:	48 8d 0d 43 53 00 00 	lea    0x5343(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025bd:	48 c7 05 18 53 00 00 	movq   $0x0,0x5318(%rip)        # 4078e0 <key_dtor_list>
  4025c4:	00 00 00 00 
  4025c8:	c7 05 16 53 00 00 00 	movl   $0x0,0x5316(%rip)        # 4078e8 <__mingwthr_cs_init>
  4025cf:	00 00 00 
  4025d2:	ff 15 f4 5b 00 00    	callq  *0x5bf4(%rip)        # 4081cc <__IAT_start__>
  4025d8:	eb 9b                	jmp    402575 <__mingw_TLScallback+0x35>
  4025da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4025e0:	8b 05 02 53 00 00    	mov    0x5302(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025e6:	85 c0                	test   %eax,%eax
  4025e8:	74 16                	je     402600 <__mingw_TLScallback+0xc0>
  4025ea:	c7 05 f4 52 00 00 01 	movl   $0x1,0x52f4(%rip)        # 4078e8 <__mingwthr_cs_init>
  4025f1:	00 00 00 
  4025f4:	b8 01 00 00 00       	mov    $0x1,%eax
  4025f9:	48 83 c4 20          	add    $0x20,%rsp
  4025fd:	5b                   	pop    %rbx
  4025fe:	c3                   	retq   
  4025ff:	90                   	nop
  402600:	48 8d 0d f9 52 00 00 	lea    0x52f9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402607:	ff 15 07 5c 00 00    	callq  *0x5c07(%rip)        # 408214 <__imp_InitializeCriticalSection>
  40260d:	eb db                	jmp    4025ea <__mingw_TLScallback+0xaa>
  40260f:	90                   	nop
  402610:	e8 9b fd ff ff       	callq  4023b0 <__mingwthr_run_key_dtors.part.0>
  402615:	e9 74 ff ff ff       	jmpq   40258e <__mingw_TLScallback+0x4e>
  40261a:	90                   	nop
  40261b:	90                   	nop
  40261c:	90                   	nop
  40261d:	90                   	nop
  40261e:	90                   	nop
  40261f:	90                   	nop

0000000000402620 <_ValidateImageBase.part.0>:
  402620:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402624:	48 01 c1             	add    %rax,%rcx
  402627:	31 c0                	xor    %eax,%eax
  402629:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40262f:	74 01                	je     402632 <_ValidateImageBase.part.0+0x12>
  402631:	c3                   	retq   
  402632:	31 c0                	xor    %eax,%eax
  402634:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40263a:	0f 94 c0             	sete   %al
  40263d:	c3                   	retq   
  40263e:	66 90                	xchg   %ax,%ax

0000000000402640 <_ValidateImageBase>:
  402640:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402645:	74 09                	je     402650 <_ValidateImageBase+0x10>
  402647:	31 c0                	xor    %eax,%eax
  402649:	c3                   	retq   
  40264a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402650:	eb ce                	jmp    402620 <_ValidateImageBase.part.0>
  402652:	0f 1f 40 00          	nopl   0x0(%rax)
  402656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40265d:	00 00 00 

0000000000402660 <_FindPESection>:
  402660:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402664:	48 01 c1             	add    %rax,%rcx
  402667:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40266b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402670:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402674:	85 c9                	test   %ecx,%ecx
  402676:	74 29                	je     4026a1 <_FindPESection+0x41>
  402678:	83 e9 01             	sub    $0x1,%ecx
  40267b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40267f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402684:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402688:	49 39 d0             	cmp    %rdx,%r8
  40268b:	4c 89 c1             	mov    %r8,%rcx
  40268e:	77 08                	ja     402698 <_FindPESection+0x38>
  402690:	03 48 08             	add    0x8(%rax),%ecx
  402693:	48 39 d1             	cmp    %rdx,%rcx
  402696:	77 0b                	ja     4026a3 <_FindPESection+0x43>
  402698:	48 83 c0 28          	add    $0x28,%rax
  40269c:	4c 39 c8             	cmp    %r9,%rax
  40269f:	75 e3                	jne    402684 <_FindPESection+0x24>
  4026a1:	31 c0                	xor    %eax,%eax
  4026a3:	c3                   	retq   
  4026a4:	66 90                	xchg   %ax,%ax
  4026a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4026ad:	00 00 00 

00000000004026b0 <_FindPESectionByName>:
  4026b0:	57                   	push   %rdi
  4026b1:	56                   	push   %rsi
  4026b2:	53                   	push   %rbx
  4026b3:	48 83 ec 20          	sub    $0x20,%rsp
  4026b7:	48 89 ce             	mov    %rcx,%rsi
  4026ba:	e8 91 03 00 00       	callq  402a50 <strlen>
  4026bf:	48 83 f8 08          	cmp    $0x8,%rax
  4026c3:	77 6b                	ja     402730 <_FindPESectionByName+0x80>
  4026c5:	48 8b 15 74 1c 00 00 	mov    0x1c74(%rip),%rdx        # 404340 <.refptr.__image_base__>
  4026cc:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4026d1:	75 5d                	jne    402730 <_FindPESectionByName+0x80>
  4026d3:	48 89 d1             	mov    %rdx,%rcx
  4026d6:	e8 45 ff ff ff       	callq  402620 <_ValidateImageBase.part.0>
  4026db:	85 c0                	test   %eax,%eax
  4026dd:	74 51                	je     402730 <_FindPESectionByName+0x80>
  4026df:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  4026e3:	48 01 d1             	add    %rdx,%rcx
  4026e6:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4026ea:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  4026ef:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4026f3:	85 c0                	test   %eax,%eax
  4026f5:	74 39                	je     402730 <_FindPESectionByName+0x80>
  4026f7:	83 e8 01             	sub    $0x1,%eax
  4026fa:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4026fe:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402703:	eb 09                	jmp    40270e <_FindPESectionByName+0x5e>
  402705:	48 83 c3 28          	add    $0x28,%rbx
  402709:	48 39 fb             	cmp    %rdi,%rbx
  40270c:	74 22                	je     402730 <_FindPESectionByName+0x80>
  40270e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402714:	48 89 f2             	mov    %rsi,%rdx
  402717:	48 89 d9             	mov    %rbx,%rcx
  40271a:	e8 29 03 00 00       	callq  402a48 <strncmp>
  40271f:	85 c0                	test   %eax,%eax
  402721:	75 e2                	jne    402705 <_FindPESectionByName+0x55>
  402723:	48 89 d8             	mov    %rbx,%rax
  402726:	48 83 c4 20          	add    $0x20,%rsp
  40272a:	5b                   	pop    %rbx
  40272b:	5e                   	pop    %rsi
  40272c:	5f                   	pop    %rdi
  40272d:	c3                   	retq   
  40272e:	66 90                	xchg   %ax,%ax
  402730:	31 db                	xor    %ebx,%ebx
  402732:	48 89 d8             	mov    %rbx,%rax
  402735:	48 83 c4 20          	add    $0x20,%rsp
  402739:	5b                   	pop    %rbx
  40273a:	5e                   	pop    %rsi
  40273b:	5f                   	pop    %rdi
  40273c:	c3                   	retq   
  40273d:	0f 1f 00             	nopl   (%rax)

0000000000402740 <__mingw_GetSectionForAddress>:
  402740:	48 83 ec 28          	sub    $0x28,%rsp
  402744:	4c 8b 05 f5 1b 00 00 	mov    0x1bf5(%rip),%r8        # 404340 <.refptr.__image_base__>
  40274b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402751:	48 89 ca             	mov    %rcx,%rdx
  402754:	75 57                	jne    4027ad <__mingw_GetSectionForAddress+0x6d>
  402756:	4c 89 c1             	mov    %r8,%rcx
  402759:	e8 c2 fe ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40275e:	85 c0                	test   %eax,%eax
  402760:	74 4b                	je     4027ad <__mingw_GetSectionForAddress+0x6d>
  402762:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402766:	48 89 d1             	mov    %rdx,%rcx
  402769:	4c 29 c1             	sub    %r8,%rcx
  40276c:	49 01 c0             	add    %rax,%r8
  40276f:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402774:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402779:	85 d2                	test   %edx,%edx
  40277b:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402780:	74 2b                	je     4027ad <__mingw_GetSectionForAddress+0x6d>
  402782:	83 ea 01             	sub    $0x1,%edx
  402785:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402789:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  40278e:	66 90                	xchg   %ax,%ax
  402790:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402794:	4c 39 c1             	cmp    %r8,%rcx
  402797:	4c 89 c2             	mov    %r8,%rdx
  40279a:	72 08                	jb     4027a4 <__mingw_GetSectionForAddress+0x64>
  40279c:	03 50 08             	add    0x8(%rax),%edx
  40279f:	48 39 d1             	cmp    %rdx,%rcx
  4027a2:	72 0b                	jb     4027af <__mingw_GetSectionForAddress+0x6f>
  4027a4:	48 83 c0 28          	add    $0x28,%rax
  4027a8:	4c 39 c8             	cmp    %r9,%rax
  4027ab:	75 e3                	jne    402790 <__mingw_GetSectionForAddress+0x50>
  4027ad:	31 c0                	xor    %eax,%eax
  4027af:	48 83 c4 28          	add    $0x28,%rsp
  4027b3:	c3                   	retq   
  4027b4:	66 90                	xchg   %ax,%ax
  4027b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027bd:	00 00 00 

00000000004027c0 <__mingw_GetSectionCount>:
  4027c0:	48 83 ec 28          	sub    $0x28,%rsp
  4027c4:	48 8b 15 75 1b 00 00 	mov    0x1b75(%rip),%rdx        # 404340 <.refptr.__image_base__>
  4027cb:	45 31 c0             	xor    %r8d,%r8d
  4027ce:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4027d3:	74 0b                	je     4027e0 <__mingw_GetSectionCount+0x20>
  4027d5:	44 89 c0             	mov    %r8d,%eax
  4027d8:	48 83 c4 28          	add    $0x28,%rsp
  4027dc:	c3                   	retq   
  4027dd:	0f 1f 00             	nopl   (%rax)
  4027e0:	48 89 d1             	mov    %rdx,%rcx
  4027e3:	e8 38 fe ff ff       	callq  402620 <_ValidateImageBase.part.0>
  4027e8:	85 c0                	test   %eax,%eax
  4027ea:	74 e9                	je     4027d5 <__mingw_GetSectionCount+0x15>
  4027ec:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  4027f0:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  4027f6:	44 89 c0             	mov    %r8d,%eax
  4027f9:	48 83 c4 28          	add    $0x28,%rsp
  4027fd:	c3                   	retq   
  4027fe:	66 90                	xchg   %ax,%ax

0000000000402800 <_FindPESectionExec>:
  402800:	48 83 ec 28          	sub    $0x28,%rsp
  402804:	4c 8b 05 35 1b 00 00 	mov    0x1b35(%rip),%r8        # 404340 <.refptr.__image_base__>
  40280b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402811:	48 89 ca             	mov    %rcx,%rdx
  402814:	75 52                	jne    402868 <_FindPESectionExec+0x68>
  402816:	4c 89 c1             	mov    %r8,%rcx
  402819:	e8 02 fe ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40281e:	85 c0                	test   %eax,%eax
  402820:	74 46                	je     402868 <_FindPESectionExec+0x68>
  402822:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  402826:	4c 01 c1             	add    %r8,%rcx
  402829:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40282d:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402832:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402836:	85 c9                	test   %ecx,%ecx
  402838:	74 2e                	je     402868 <_FindPESectionExec+0x68>
  40283a:	83 e9 01             	sub    $0x1,%ecx
  40283d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402841:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  402846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40284d:	00 00 00 
  402850:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  402854:	74 09                	je     40285f <_FindPESectionExec+0x5f>
  402856:	48 85 d2             	test   %rdx,%rdx
  402859:	74 0f                	je     40286a <_FindPESectionExec+0x6a>
  40285b:	48 83 ea 01          	sub    $0x1,%rdx
  40285f:	48 83 c0 28          	add    $0x28,%rax
  402863:	48 39 c8             	cmp    %rcx,%rax
  402866:	75 e8                	jne    402850 <_FindPESectionExec+0x50>
  402868:	31 c0                	xor    %eax,%eax
  40286a:	48 83 c4 28          	add    $0x28,%rsp
  40286e:	c3                   	retq   
  40286f:	90                   	nop

0000000000402870 <_GetPEImageBase>:
  402870:	48 83 ec 28          	sub    $0x28,%rsp
  402874:	48 8b 15 c5 1a 00 00 	mov    0x1ac5(%rip),%rdx        # 404340 <.refptr.__image_base__>
  40287b:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402880:	75 1e                	jne    4028a0 <_GetPEImageBase+0x30>
  402882:	48 89 d1             	mov    %rdx,%rcx
  402885:	e8 96 fd ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40288a:	85 c0                	test   %eax,%eax
  40288c:	b8 00 00 00 00       	mov    $0x0,%eax
  402891:	48 0f 45 c2          	cmovne %rdx,%rax
  402895:	48 83 c4 28          	add    $0x28,%rsp
  402899:	c3                   	retq   
  40289a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4028a0:	31 c0                	xor    %eax,%eax
  4028a2:	48 83 c4 28          	add    $0x28,%rsp
  4028a6:	c3                   	retq   
  4028a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4028ae:	00 00 

00000000004028b0 <_IsNonwritableInCurrentImage>:
  4028b0:	48 83 ec 28          	sub    $0x28,%rsp
  4028b4:	4c 8b 05 85 1a 00 00 	mov    0x1a85(%rip),%r8        # 404340 <.refptr.__image_base__>
  4028bb:	31 c0                	xor    %eax,%eax
  4028bd:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4028c3:	48 89 ca             	mov    %rcx,%rdx
  4028c6:	74 08                	je     4028d0 <_IsNonwritableInCurrentImage+0x20>
  4028c8:	48 83 c4 28          	add    $0x28,%rsp
  4028cc:	c3                   	retq   
  4028cd:	0f 1f 00             	nopl   (%rax)
  4028d0:	4c 89 c1             	mov    %r8,%rcx
  4028d3:	e8 48 fd ff ff       	callq  402620 <_ValidateImageBase.part.0>
  4028d8:	85 c0                	test   %eax,%eax
  4028da:	74 ec                	je     4028c8 <_IsNonwritableInCurrentImage+0x18>
  4028dc:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  4028e0:	48 89 d1             	mov    %rdx,%rcx
  4028e3:	4c 29 c1             	sub    %r8,%rcx
  4028e6:	49 01 c0             	add    %rax,%r8
  4028e9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4028ee:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4028f3:	85 d2                	test   %edx,%edx
  4028f5:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4028fa:	74 31                	je     40292d <_IsNonwritableInCurrentImage+0x7d>
  4028fc:	83 ea 01             	sub    $0x1,%edx
  4028ff:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402903:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402908:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40290f:	00 
  402910:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402914:	4c 39 c1             	cmp    %r8,%rcx
  402917:	4c 89 c2             	mov    %r8,%rdx
  40291a:	72 08                	jb     402924 <_IsNonwritableInCurrentImage+0x74>
  40291c:	03 50 08             	add    0x8(%rax),%edx
  40291f:	48 39 d1             	cmp    %rdx,%rcx
  402922:	72 10                	jb     402934 <_IsNonwritableInCurrentImage+0x84>
  402924:	48 83 c0 28          	add    $0x28,%rax
  402928:	4c 39 c8             	cmp    %r9,%rax
  40292b:	75 e3                	jne    402910 <_IsNonwritableInCurrentImage+0x60>
  40292d:	31 c0                	xor    %eax,%eax
  40292f:	48 83 c4 28          	add    $0x28,%rsp
  402933:	c3                   	retq   
  402934:	8b 40 24             	mov    0x24(%rax),%eax
  402937:	f7 d0                	not    %eax
  402939:	c1 e8 1f             	shr    $0x1f,%eax
  40293c:	48 83 c4 28          	add    $0x28,%rsp
  402940:	c3                   	retq   
  402941:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40294d:	00 00 00 

0000000000402950 <__mingw_enum_import_library_names>:
  402950:	48 83 ec 28          	sub    $0x28,%rsp
  402954:	4c 8b 1d e5 19 00 00 	mov    0x19e5(%rip),%r11        # 404340 <.refptr.__image_base__>
  40295b:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402961:	41 89 c9             	mov    %ecx,%r9d
  402964:	75 58                	jne    4029be <__mingw_enum_import_library_names+0x6e>
  402966:	4c 89 d9             	mov    %r11,%rcx
  402969:	e8 b2 fc ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40296e:	85 c0                	test   %eax,%eax
  402970:	74 4c                	je     4029be <__mingw_enum_import_library_names+0x6e>
  402972:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  402976:	4c 01 d8             	add    %r11,%rax
  402979:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  40297f:	85 d2                	test   %edx,%edx
  402981:	74 3b                	je     4029be <__mingw_enum_import_library_names+0x6e>
  402983:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  402987:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  40298c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  402990:	85 c0                	test   %eax,%eax
  402992:	74 2a                	je     4029be <__mingw_enum_import_library_names+0x6e>
  402994:	83 e8 01             	sub    $0x1,%eax
  402997:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40299b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  4029a0:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  4029a4:	4c 39 d2             	cmp    %r10,%rdx
  4029a7:	4d 89 d0             	mov    %r10,%r8
  4029aa:	72 09                	jb     4029b5 <__mingw_enum_import_library_names+0x65>
  4029ac:	44 03 41 08          	add    0x8(%rcx),%r8d
  4029b0:	4c 39 c2             	cmp    %r8,%rdx
  4029b3:	72 10                	jb     4029c5 <__mingw_enum_import_library_names+0x75>
  4029b5:	48 83 c1 28          	add    $0x28,%rcx
  4029b9:	48 39 c1             	cmp    %rax,%rcx
  4029bc:	75 e2                	jne    4029a0 <__mingw_enum_import_library_names+0x50>
  4029be:	31 c0                	xor    %eax,%eax
  4029c0:	48 83 c4 28          	add    $0x28,%rsp
  4029c4:	c3                   	retq   
  4029c5:	4c 01 da             	add    %r11,%rdx
  4029c8:	75 0e                	jne    4029d8 <__mingw_enum_import_library_names+0x88>
  4029ca:	eb f2                	jmp    4029be <__mingw_enum_import_library_names+0x6e>
  4029cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4029d0:	41 83 e9 01          	sub    $0x1,%r9d
  4029d4:	48 83 c2 14          	add    $0x14,%rdx
  4029d8:	8b 4a 04             	mov    0x4(%rdx),%ecx
  4029db:	85 c9                	test   %ecx,%ecx
  4029dd:	75 07                	jne    4029e6 <__mingw_enum_import_library_names+0x96>
  4029df:	8b 42 0c             	mov    0xc(%rdx),%eax
  4029e2:	85 c0                	test   %eax,%eax
  4029e4:	74 d8                	je     4029be <__mingw_enum_import_library_names+0x6e>
  4029e6:	45 85 c9             	test   %r9d,%r9d
  4029e9:	7f e5                	jg     4029d0 <__mingw_enum_import_library_names+0x80>
  4029eb:	8b 42 0c             	mov    0xc(%rdx),%eax
  4029ee:	4c 01 d8             	add    %r11,%rax
  4029f1:	48 83 c4 28          	add    $0x28,%rsp
  4029f5:	c3                   	retq   
  4029f6:	90                   	nop
  4029f7:	90                   	nop
  4029f8:	90                   	nop
  4029f9:	90                   	nop
  4029fa:	90                   	nop
  4029fb:	90                   	nop
  4029fc:	90                   	nop
  4029fd:	90                   	nop
  4029fe:	90                   	nop
  4029ff:	90                   	nop

0000000000402a00 <___chkstk_ms>:
  402a00:	51                   	push   %rcx
  402a01:	50                   	push   %rax
  402a02:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a08:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402a0d:	72 19                	jb     402a28 <___chkstk_ms+0x28>
  402a0f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402a16:	48 83 09 00          	orq    $0x0,(%rcx)
  402a1a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402a20:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a26:	77 e7                	ja     402a0f <___chkstk_ms+0xf>
  402a28:	48 29 c1             	sub    %rax,%rcx
  402a2b:	48 83 09 00          	orq    $0x0,(%rcx)
  402a2f:	58                   	pop    %rax
  402a30:	59                   	pop    %rcx
  402a31:	c3                   	retq   
  402a32:	90                   	nop
  402a33:	90                   	nop
  402a34:	90                   	nop
  402a35:	90                   	nop
  402a36:	90                   	nop
  402a37:	90                   	nop
  402a38:	90                   	nop
  402a39:	90                   	nop
  402a3a:	90                   	nop
  402a3b:	90                   	nop
  402a3c:	90                   	nop
  402a3d:	90                   	nop
  402a3e:	90                   	nop
  402a3f:	90                   	nop

0000000000402a40 <vfprintf>:
  402a40:	ff 25 06 59 00 00    	jmpq   *0x5906(%rip)        # 40834c <__imp_vfprintf>
  402a46:	90                   	nop
  402a47:	90                   	nop

0000000000402a48 <strncmp>:
  402a48:	ff 25 f6 58 00 00    	jmpq   *0x58f6(%rip)        # 408344 <__imp_strncmp>
  402a4e:	90                   	nop
  402a4f:	90                   	nop

0000000000402a50 <strlen>:
  402a50:	ff 25 e6 58 00 00    	jmpq   *0x58e6(%rip)        # 40833c <__imp_strlen>
  402a56:	90                   	nop
  402a57:	90                   	nop

0000000000402a58 <signal>:
  402a58:	ff 25 d6 58 00 00    	jmpq   *0x58d6(%rip)        # 408334 <__imp_signal>
  402a5e:	90                   	nop
  402a5f:	90                   	nop

0000000000402a60 <memcpy>:
  402a60:	ff 25 c6 58 00 00    	jmpq   *0x58c6(%rip)        # 40832c <__imp_memcpy>
  402a66:	90                   	nop
  402a67:	90                   	nop

0000000000402a68 <malloc>:
  402a68:	ff 25 b6 58 00 00    	jmpq   *0x58b6(%rip)        # 408324 <__imp_malloc>
  402a6e:	90                   	nop
  402a6f:	90                   	nop

0000000000402a70 <fwrite>:
  402a70:	ff 25 a6 58 00 00    	jmpq   *0x58a6(%rip)        # 40831c <__imp_fwrite>
  402a76:	90                   	nop
  402a77:	90                   	nop

0000000000402a78 <free>:
  402a78:	ff 25 96 58 00 00    	jmpq   *0x5896(%rip)        # 408314 <__imp_free>
  402a7e:	90                   	nop
  402a7f:	90                   	nop

0000000000402a80 <fprintf>:
  402a80:	ff 25 86 58 00 00    	jmpq   *0x5886(%rip)        # 40830c <__imp_fprintf>
  402a86:	90                   	nop
  402a87:	90                   	nop

0000000000402a88 <exit>:
  402a88:	ff 25 76 58 00 00    	jmpq   *0x5876(%rip)        # 408304 <__imp_exit>
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <calloc>:
  402a90:	ff 25 66 58 00 00    	jmpq   *0x5866(%rip)        # 4082fc <__imp_calloc>
  402a96:	90                   	nop
  402a97:	90                   	nop

0000000000402a98 <abort>:
  402a98:	ff 25 56 58 00 00    	jmpq   *0x5856(%rip)        # 4082f4 <__imp_abort>
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <_onexit>:
  402aa0:	ff 25 46 58 00 00    	jmpq   *0x5846(%rip)        # 4082ec <__imp__onexit>
  402aa6:	90                   	nop
  402aa7:	90                   	nop

0000000000402aa8 <_initterm>:
  402aa8:	ff 25 36 58 00 00    	jmpq   *0x5836(%rip)        # 4082e4 <__imp__initterm>
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <_cexit>:
  402ab0:	ff 25 1e 58 00 00    	jmpq   *0x581e(%rip)        # 4082d4 <__imp__cexit>
  402ab6:	90                   	nop
  402ab7:	90                   	nop

0000000000402ab8 <_amsg_exit>:
  402ab8:	ff 25 0e 58 00 00    	jmpq   *0x580e(%rip)        # 4082cc <__imp__amsg_exit>
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <__setusermatherr>:
  402ac0:	ff 25 f6 57 00 00    	jmpq   *0x57f6(%rip)        # 4082bc <__imp___setusermatherr>
  402ac6:	90                   	nop
  402ac7:	90                   	nop

0000000000402ac8 <__set_app_type>:
  402ac8:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 4082b4 <__imp___set_app_type>
  402ace:	90                   	nop
  402acf:	90                   	nop

0000000000402ad0 <__lconv_init>:
  402ad0:	ff 25 d6 57 00 00    	jmpq   *0x57d6(%rip)        # 4082ac <__imp___lconv_init>
  402ad6:	90                   	nop
  402ad7:	90                   	nop

0000000000402ad8 <__getmainargs>:
  402ad8:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 408294 <__imp___getmainargs>
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <__C_specific_handler>:
  402ae0:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 40828c <__imp___C_specific_handler>
  402ae6:	90                   	nop
  402ae7:	90                   	nop
  402ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402aef:	00 

0000000000402af0 <__acrt_iob_func>:
  402af0:	53                   	push   %rbx
  402af1:	48 83 ec 20          	sub    $0x20,%rsp
  402af5:	89 cb                	mov    %ecx,%ebx
  402af7:	e8 54 00 00 00       	callq  402b50 <__iob_func>
  402afc:	89 d9                	mov    %ebx,%ecx
  402afe:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402b02:	48 c1 e2 04          	shl    $0x4,%rdx
  402b06:	48 01 d0             	add    %rdx,%rax
  402b09:	48 83 c4 20          	add    $0x20,%rsp
  402b0d:	5b                   	pop    %rbx
  402b0e:	c3                   	retq   
  402b0f:	90                   	nop

0000000000402b10 <_get_invalid_parameter_handler>:
  402b10:	48 8b 05 39 4e 00 00 	mov    0x4e39(%rip),%rax        # 407950 <handler>
  402b17:	c3                   	retq   
  402b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b1f:	00 

0000000000402b20 <_set_invalid_parameter_handler>:
  402b20:	48 89 c8             	mov    %rcx,%rax
  402b23:	48 87 05 26 4e 00 00 	xchg   %rax,0x4e26(%rip)        # 407950 <handler>
  402b2a:	c3                   	retq   
  402b2b:	90                   	nop
  402b2c:	90                   	nop
  402b2d:	90                   	nop
  402b2e:	90                   	nop
  402b2f:	90                   	nop

0000000000402b30 <__p__acmdln>:
  402b30:	48 8b 05 29 18 00 00 	mov    0x1829(%rip),%rax        # 404360 <.refptr.__imp__acmdln>
  402b37:	48 8b 00             	mov    (%rax),%rax
  402b3a:	c3                   	retq   
  402b3b:	90                   	nop
  402b3c:	90                   	nop
  402b3d:	90                   	nop
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <__p__fmode>:
  402b40:	48 8b 05 29 18 00 00 	mov    0x1829(%rip),%rax        # 404370 <.refptr.__imp__fmode>
  402b47:	48 8b 00             	mov    (%rax),%rax
  402b4a:	c3                   	retq   
  402b4b:	90                   	nop
  402b4c:	90                   	nop
  402b4d:	90                   	nop
  402b4e:	90                   	nop
  402b4f:	90                   	nop

0000000000402b50 <__iob_func>:
  402b50:	ff 25 4e 57 00 00    	jmpq   *0x574e(%rip)        # 4082a4 <__imp___iob_func>
  402b56:	90                   	nop
  402b57:	90                   	nop
  402b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b5f:	00 

0000000000402b60 <VirtualQuery>:
  402b60:	ff 25 16 57 00 00    	jmpq   *0x5716(%rip)        # 40827c <__imp_VirtualQuery>
  402b66:	90                   	nop
  402b67:	90                   	nop

0000000000402b68 <VirtualProtect>:
  402b68:	ff 25 06 57 00 00    	jmpq   *0x5706(%rip)        # 408274 <__imp_VirtualProtect>
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <UnhandledExceptionFilter>:
  402b70:	ff 25 f6 56 00 00    	jmpq   *0x56f6(%rip)        # 40826c <__imp_UnhandledExceptionFilter>
  402b76:	90                   	nop
  402b77:	90                   	nop

0000000000402b78 <TlsGetValue>:
  402b78:	ff 25 e6 56 00 00    	jmpq   *0x56e6(%rip)        # 408264 <__imp_TlsGetValue>
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <TerminateProcess>:
  402b80:	ff 25 d6 56 00 00    	jmpq   *0x56d6(%rip)        # 40825c <__imp_TerminateProcess>
  402b86:	90                   	nop
  402b87:	90                   	nop

0000000000402b88 <Sleep>:
  402b88:	ff 25 c6 56 00 00    	jmpq   *0x56c6(%rip)        # 408254 <__imp_Sleep>
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <SetUnhandledExceptionFilter>:
  402b90:	ff 25 b6 56 00 00    	jmpq   *0x56b6(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  402b96:	90                   	nop
  402b97:	90                   	nop

0000000000402b98 <RtlVirtualUnwind>:
  402b98:	ff 25 a6 56 00 00    	jmpq   *0x56a6(%rip)        # 408244 <__imp_RtlVirtualUnwind>
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <RtlLookupFunctionEntry>:
  402ba0:	ff 25 96 56 00 00    	jmpq   *0x5696(%rip)        # 40823c <__imp_RtlLookupFunctionEntry>
  402ba6:	90                   	nop
  402ba7:	90                   	nop

0000000000402ba8 <RtlCaptureContext>:
  402ba8:	ff 25 86 56 00 00    	jmpq   *0x5686(%rip)        # 408234 <__imp_RtlCaptureContext>
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <RtlAddFunctionTable>:
  402bb0:	ff 25 76 56 00 00    	jmpq   *0x5676(%rip)        # 40822c <__imp_RtlAddFunctionTable>
  402bb6:	90                   	nop
  402bb7:	90                   	nop

0000000000402bb8 <QueryPerformanceCounter>:
  402bb8:	ff 25 66 56 00 00    	jmpq   *0x5666(%rip)        # 408224 <__imp_QueryPerformanceCounter>
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <LeaveCriticalSection>:
  402bc0:	ff 25 56 56 00 00    	jmpq   *0x5656(%rip)        # 40821c <__imp_LeaveCriticalSection>
  402bc6:	90                   	nop
  402bc7:	90                   	nop

0000000000402bc8 <InitializeCriticalSection>:
  402bc8:	ff 25 46 56 00 00    	jmpq   *0x5646(%rip)        # 408214 <__imp_InitializeCriticalSection>
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <GetTickCount>:
  402bd0:	ff 25 36 56 00 00    	jmpq   *0x5636(%rip)        # 40820c <__imp_GetTickCount>
  402bd6:	90                   	nop
  402bd7:	90                   	nop

0000000000402bd8 <GetSystemTimeAsFileTime>:
  402bd8:	ff 25 26 56 00 00    	jmpq   *0x5626(%rip)        # 408204 <__imp_GetSystemTimeAsFileTime>
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <GetStartupInfoA>:
  402be0:	ff 25 16 56 00 00    	jmpq   *0x5616(%rip)        # 4081fc <__imp_GetStartupInfoA>
  402be6:	90                   	nop
  402be7:	90                   	nop

0000000000402be8 <GetLastError>:
  402be8:	ff 25 06 56 00 00    	jmpq   *0x5606(%rip)        # 4081f4 <__imp_GetLastError>
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <GetCurrentThreadId>:
  402bf0:	ff 25 f6 55 00 00    	jmpq   *0x55f6(%rip)        # 4081ec <__imp_GetCurrentThreadId>
  402bf6:	90                   	nop
  402bf7:	90                   	nop

0000000000402bf8 <GetCurrentProcessId>:
  402bf8:	ff 25 e6 55 00 00    	jmpq   *0x55e6(%rip)        # 4081e4 <__imp_GetCurrentProcessId>
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <GetCurrentProcess>:
  402c00:	ff 25 d6 55 00 00    	jmpq   *0x55d6(%rip)        # 4081dc <__imp_GetCurrentProcess>
  402c06:	90                   	nop
  402c07:	90                   	nop

0000000000402c08 <EnterCriticalSection>:
  402c08:	ff 25 c6 55 00 00    	jmpq   *0x55c6(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  402c0e:	90                   	nop
  402c0f:	90                   	nop

0000000000402c10 <DeleteCriticalSection>:
  402c10:	ff 25 b6 55 00 00    	jmpq   *0x55b6(%rip)        # 4081cc <__IAT_start__>
  402c16:	90                   	nop
  402c17:	90                   	nop
  402c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c1f:	00 

0000000000402c20 <__report_error>:
  402c20:	56                   	push   %rsi
  402c21:	53                   	push   %rbx
  402c22:	48 83 ec 38          	sub    $0x38,%rsp
  402c26:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  402c2b:	48 89 cb             	mov    %rcx,%rbx
  402c2e:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c33:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  402c38:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  402c3d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  402c42:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402c47:	e8 a4 fe ff ff       	callq  402af0 <__acrt_iob_func>
  402c4c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  402c52:	ba 01 00 00 00       	mov    $0x1,%edx
  402c57:	48 8d 0d 62 15 00 00 	lea    0x1562(%rip),%rcx        # 4041c0 <.rdata>
  402c5e:	49 89 c1             	mov    %rax,%r9
  402c61:	e8 0a fe ff ff       	callq  402a70 <fwrite>
  402c66:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  402c6b:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c70:	e8 7b fe ff ff       	callq  402af0 <__acrt_iob_func>
  402c75:	48 89 da             	mov    %rbx,%rdx
  402c78:	48 89 c1             	mov    %rax,%rcx
  402c7b:	49 89 f0             	mov    %rsi,%r8
  402c7e:	e8 bd fd ff ff       	callq  402a40 <vfprintf>
  402c83:	e8 10 fe ff ff       	callq  402a98 <abort>
  402c88:	90                   	nop
  402c89:	90                   	nop
  402c8a:	90                   	nop
  402c8b:	90                   	nop
  402c8c:	90                   	nop
  402c8d:	90                   	nop
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <register_frame_ctor>:
  402c90:	e9 9b e8 ff ff       	jmpq   401530 <__gcc_register_frame>
  402c95:	90                   	nop
  402c96:	90                   	nop
  402c97:	90                   	nop
  402c98:	90                   	nop
  402c99:	90                   	nop
  402c9a:	90                   	nop
  402c9b:	90                   	nop
  402c9c:	90                   	nop
  402c9d:	90                   	nop
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <__CTOR_LIST__>:
  402ca0:	ff                   	(bad)  
  402ca1:	ff                   	(bad)  
  402ca2:	ff                   	(bad)  
  402ca3:	ff                   	(bad)  
  402ca4:	ff                   	(bad)  
  402ca5:	ff                   	(bad)  
  402ca6:	ff                   	(bad)  
  402ca7:	ff                   	.byte 0xff

0000000000402ca8 <.ctors.65535>:
  402ca8:	90                   	nop
  402ca9:	2c 40                	sub    $0x40,%al
	...

0000000000402cb8 <__DTOR_LIST__>:
  402cb8:	ff                   	(bad)  
  402cb9:	ff                   	(bad)  
  402cba:	ff                   	(bad)  
  402cbb:	ff                   	(bad)  
  402cbc:	ff                   	(bad)  
  402cbd:	ff                   	(bad)  
  402cbe:	ff                   	(bad)  
  402cbf:	ff 00                	incl   (%rax)
  402cc1:	00 00                	add    %al,(%rax)
  402cc3:	00 00                	add    %al,(%rax)
  402cc5:	00 00                	add    %al,(%rax)
	...

test.o:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 45 34 00 00 	mov    0x3445(%rip),%rax        # 404460 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 46 34 00 00 	mov    0x3446(%rip),%rax        # 404470 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 49 34 00 00 	mov    0x3449(%rip),%rax        # 404480 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 0c 34 00 00 	mov    0x340c(%rip),%rax        # 404450 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 ef 32 00 00 	mov    0x32ef(%rip),%rax        # 404340 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 58                	je     4010b0 <pre_c_init+0xa0>
  401058:	48 8b 05 e1 33 00 00 	mov    0x33e1(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  40105f:	89 15 a3 5f 00 00    	mov    %edx,0x5fa3(%rip)        # 407008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 35                	je     4010a0 <pre_c_init+0x90>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 53 1a 00 00       	callq  402ac8 <__set_app_type>
  401075:	e8 c6 1a 00 00       	callq  402b40 <__p__fmode>
  40107a:	48 8b 15 7f 33 00 00 	mov    0x337f(%rip),%rdx        # 404400 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 d6 05 00 00       	callq  401660 <_setargv>
  40108a:	48 8b 05 5f 32 00 00 	mov    0x325f(%rip),%rax        # 4042f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 1e 1a 00 00       	callq  402ac8 <__set_app_type>
  4010aa:	eb c9                	jmp    401075 <pre_c_init+0x65>
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
  4010b4:	48 01 c8             	add    %rcx,%rax
  4010b7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  4010bd:	75 99                	jne    401058 <pre_c_init+0x48>
  4010bf:	0f b7 48 18          	movzwl 0x18(%rax),%ecx
  4010c3:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010c8:	74 39                	je     401103 <pre_c_init+0xf3>
  4010ca:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010cf:	75 87                	jne    401058 <pre_c_init+0x48>
  4010d1:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d8:	0f 86 7a ff ff ff    	jbe    401058 <pre_c_init+0x48>
  4010de:	8b 88 f8 00 00 00    	mov    0xf8(%rax),%ecx
  4010e4:	31 d2                	xor    %edx,%edx
  4010e6:	85 c9                	test   %ecx,%ecx
  4010e8:	0f 95 c2             	setne  %dl
  4010eb:	e9 68 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  4010f0:	48 8d 0d 79 08 00 00 	lea    0x879(%rip),%rcx        # 401970 <_matherr>
  4010f7:	e8 64 08 00 00       	callq  401960 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401107:	0f 86 4b ff ff ff    	jbe    401058 <pre_c_init+0x48>
  40110d:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401114:	31 d2                	xor    %edx,%edx
  401116:	45 85 c0             	test   %r8d,%r8d
  401119:	0f 95 c2             	setne  %dl
  40111c:	e9 37 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401121:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 f5 32 00 00 	mov    0x32f5(%rip),%rax        # 404430 <.refptr._newmode>
  40113b:	4c 8d 05 ce 5e 00 00 	lea    0x5ece(%rip),%r8        # 407010 <envp>
  401142:	48 8d 15 cf 5e 00 00 	lea    0x5ecf(%rip),%rdx        # 407018 <argv>
  401149:	48 8d 0d d0 5e 00 00 	lea    0x5ed0(%rip),%rcx        # 407020 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 a8 5e 00 00    	mov    %eax,0x5ea8(%rip)        # 407000 <__bss_start__>
  401158:	48 8d 05 a1 5e 00 00 	lea    0x5ea1(%rip),%rax        # 407000 <__bss_start__>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 85 32 00 00 	mov    0x3285(%rip),%rax        # 4043f0 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 65 19 00 00       	callq  402ad8 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	31 c0                	xor    %eax,%eax
  401191:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401196:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40119b:	48 89 d7             	mov    %rdx,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d 98 32 00 00 	mov    0x3298(%rip),%rdi        # 404440 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 bc 02 00 00    	jne    401470 <__tmainCRTStartup+0x2f0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d cc 31 00 00 	mov    0x31cc(%rip),%rbx        # 404390 <.refptr.__native_startup_lock>
  4011c4:	31 ed                	xor    %ebp,%ebp
  4011c6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011ca:	4c 8b 25 83 70 00 00 	mov    0x7083(%rip),%r12        # 408254 <__imp_Sleep>
  4011d1:	eb 11                	jmp    4011e4 <__tmainCRTStartup+0x64>
  4011d3:	48 39 c6             	cmp    %rax,%rsi
  4011d6:	0f 84 34 02 00 00    	je     401410 <__tmainCRTStartup+0x290>
  4011dc:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e1:	41 ff d4             	callq  *%r12
  4011e4:	48 89 e8             	mov    %rbp,%rax
  4011e7:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 e2                	jne    4011d3 <__tmainCRTStartup+0x53>
  4011f1:	48 8b 35 a8 31 00 00 	mov    0x31a8(%rip),%rsi        # 4043a0 <.refptr.__native_startup_state>
  4011f8:	31 ed                	xor    %ebp,%ebp
  4011fa:	8b 06                	mov    (%rsi),%eax
  4011fc:	83 f8 01             	cmp    $0x1,%eax
  4011ff:	0f 84 22 02 00 00    	je     401427 <__tmainCRTStartup+0x2a7>
  401205:	8b 06                	mov    (%rsi),%eax
  401207:	85 c0                	test   %eax,%eax
  401209:	0f 84 71 02 00 00    	je     401480 <__tmainCRTStartup+0x300>
  40120f:	c7 05 eb 5d 00 00 01 	movl   $0x1,0x5deb(%rip)        # 407004 <has_cctor>
  401216:	00 00 00 
  401219:	8b 06                	mov    (%rsi),%eax
  40121b:	83 f8 01             	cmp    $0x1,%eax
  40121e:	0f 84 18 02 00 00    	je     40143c <__tmainCRTStartup+0x2bc>
  401224:	85 ed                	test   %ebp,%ebp
  401226:	0f 84 31 02 00 00    	je     40145d <__tmainCRTStartup+0x2dd>
  40122c:	48 8b 05 fd 30 00 00 	mov    0x30fd(%rip),%rax        # 404330 <.refptr.__dyn_tls_init_callback>
  401233:	48 8b 00             	mov    (%rax),%rax
  401236:	48 85 c0             	test   %rax,%rax
  401239:	74 0c                	je     401247 <__tmainCRTStartup+0xc7>
  40123b:	45 31 c0             	xor    %r8d,%r8d
  40123e:	ba 02 00 00 00       	mov    $0x2,%edx
  401243:	31 c9                	xor    %ecx,%ecx
  401245:	ff d0                	callq  *%rax
  401247:	e8 24 0a 00 00       	callq  401c70 <_pei386_runtime_relocator>
  40124c:	48 8d 0d 6d 0f 00 00 	lea    0xf6d(%rip),%rcx        # 4021c0 <_gnu_exception_handler>
  401253:	ff 15 f3 6f 00 00    	callq  *0x6ff3(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 20 31 00 00 	mov    0x3120(%rip),%rdx        # 404380 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 68 0e 00 00       	callq  4020d0 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 ac 18 00 00       	callq  402b20 <_set_invalid_parameter_handler>
  401274:	e8 f7 07 00 00       	callq  401a70 <_fpreset>
  401279:	48 8b 05 c0 30 00 00 	mov    0x30c0(%rip),%rax        # 404340 <.refptr.__image_base__>
  401280:	48 89 05 e1 66 00 00 	mov    %rax,0x66e1(%rip)        # 407968 <__mingw_winmain_hInstance>
  401287:	e8 a4 18 00 00       	callq  402b30 <__p__acmdln>
  40128c:	31 c9                	xor    %ecx,%ecx
  40128e:	48 8b 00             	mov    (%rax),%rax
  401291:	48 85 c0             	test   %rax,%rax
  401294:	75 1c                	jne    4012b2 <__tmainCRTStartup+0x132>
  401296:	eb 5f                	jmp    4012f7 <__tmainCRTStartup+0x177>
  401298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40129f:	00 
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 2c                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	75 11                	jne    4012e5 <__tmainCRTStartup+0x165>
  4012d4:	eb 1a                	jmp    4012f0 <__tmainCRTStartup+0x170>
  4012d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012dd:	00 00 00 
  4012e0:	80 fa 20             	cmp    $0x20,%dl
  4012e3:	7f 0b                	jg     4012f0 <__tmainCRTStartup+0x170>
  4012e5:	48 83 c0 01          	add    $0x1,%rax
  4012e9:	0f b6 10             	movzbl (%rax),%edx
  4012ec:	84 d2                	test   %dl,%dl
  4012ee:	75 f0                	jne    4012e0 <__tmainCRTStartup+0x160>
  4012f0:	48 89 05 69 66 00 00 	mov    %rax,0x6669(%rip)        # 407960 <__mingw_winmain_lpCmdLine>
  4012f7:	44 8b 07             	mov    (%rdi),%r8d
  4012fa:	45 85 c0             	test   %r8d,%r8d
  4012fd:	74 16                	je     401315 <__tmainCRTStartup+0x195>
  4012ff:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401304:	b8 0a 00 00 00       	mov    $0xa,%eax
  401309:	0f 85 f1 00 00 00    	jne    401400 <__tmainCRTStartup+0x280>
  40130f:	89 05 eb 1c 00 00    	mov    %eax,0x1ceb(%rip)        # 403000 <__data_start__>
  401315:	8b 1d 05 5d 00 00    	mov    0x5d05(%rip),%ebx        # 407020 <argc>
  40131b:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  40131f:	4d 63 e4             	movslq %r12d,%r12
  401322:	49 c1 e4 03          	shl    $0x3,%r12
  401326:	4c 89 e1             	mov    %r12,%rcx
  401329:	e8 3a 17 00 00       	callq  402a68 <malloc>
  40132e:	85 db                	test   %ebx,%ebx
  401330:	48 8b 3d e1 5c 00 00 	mov    0x5ce1(%rip),%rdi        # 407018 <argv>
  401337:	48 89 c5             	mov    %rax,%rbp
  40133a:	7e 4b                	jle    401387 <__tmainCRTStartup+0x207>
  40133c:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40133f:	31 db                	xor    %ebx,%ebx
  401341:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  401348:	00 
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	48 8b 0c 1f          	mov    (%rdi,%rbx,1),%rcx
  401354:	e8 f7 16 00 00       	callq  402a50 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 03 17 00 00       	callq  402a68 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 e3 16 00 00       	callq  402a60 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 5c 00 00 	mov    %rbp,0x5c83(%rip)        # 407018 <argv>
  401395:	e8 96 02 00 00       	callq  401630 <__main>
  40139a:	48 8b 05 af 2f 00 00 	mov    0x2faf(%rip),%rax        # 404350 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 5c 00 00 	mov    0x5c68(%rip),%rdx        # 407010 <envp>
  4013a8:	8b 0d 72 5c 00 00    	mov    0x5c72(%rip),%ecx        # 407020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 5c 00 00 	mov    0x5c55(%rip),%r8        # 407010 <envp>
  4013bb:	48 8b 15 56 5c 00 00 	mov    0x5c56(%rip),%rdx        # 407018 <argv>
  4013c2:	e8 8f 01 00 00       	callq  401556 <main>
  4013c7:	8b 0d 3b 5c 00 00    	mov    0x5c3b(%rip),%ecx        # 407008 <managedapp>
  4013cd:	89 05 39 5c 00 00    	mov    %eax,0x5c39(%rip)        # 40700c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 5c 00 00    	mov    0x5c23(%rip),%edx        # 407004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 c6 16 00 00       	callq  402ab0 <_cexit>
  4013ea:	8b 05 1c 5c 00 00    	mov    0x5c1c(%rip),%eax        # 40700c <mainret>
  4013f0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013f7:	5b                   	pop    %rbx
  4013f8:	5e                   	pop    %rsi
  4013f9:	5f                   	pop    %rdi
  4013fa:	5d                   	pop    %rbp
  4013fb:	41 5c                	pop    %r12
  4013fd:	41 5d                	pop    %r13
  4013ff:	c3                   	retq   
  401400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  401405:	e9 05 ff ff ff       	jmpq   40130f <__tmainCRTStartup+0x18f>
  40140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401410:	48 8b 35 89 2f 00 00 	mov    0x2f89(%rip),%rsi        # 4043a0 <.refptr.__native_startup_state>
  401417:	bd 01 00 00 00       	mov    $0x1,%ebp
  40141c:	8b 06                	mov    (%rsi),%eax
  40141e:	83 f8 01             	cmp    $0x1,%eax
  401421:	0f 85 de fd ff ff    	jne    401205 <__tmainCRTStartup+0x85>
  401427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40142c:	e8 87 16 00 00       	callq  402ab8 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 7d 2f 00 00 	mov    0x2f7d(%rip),%rdx        # 4043c0 <.refptr.__xc_z>
  401443:	48 8b 0d 66 2f 00 00 	mov    0x2f66(%rip),%rcx        # 4043b0 <.refptr.__xc_a>
  40144a:	e8 59 16 00 00       	callq  402aa8 <_initterm>
  40144f:	85 ed                	test   %ebp,%ebp
  401451:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401457:	0f 85 cf fd ff ff    	jne    40122c <__tmainCRTStartup+0xac>
  40145d:	31 c0                	xor    %eax,%eax
  40145f:	48 87 03             	xchg   %rax,(%rbx)
  401462:	e9 c5 fd ff ff       	jmpq   40122c <__tmainCRTStartup+0xac>
  401467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40146e:	00 00 
  401470:	48 89 d1             	mov    %rdx,%rcx
  401473:	ff 15 83 6d 00 00    	callq  *0x6d83(%rip)        # 4081fc <__imp_GetStartupInfoA>
  401479:	e9 36 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40147e:	66 90                	xchg   %ax,%ax
  401480:	48 8b 15 59 2f 00 00 	mov    0x2f59(%rip),%rdx        # 4043e0 <.refptr.__xi_z>
  401487:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40148d:	48 8b 0d 3c 2f 00 00 	mov    0x2f3c(%rip),%rcx        # 4043d0 <.refptr.__xi_a>
  401494:	e8 0f 16 00 00       	callq  402aa8 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 e3 15 00 00       	callq  402a88 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 85 2f 00 00 	mov    0x2f85(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 aa 01 00 00       	callq  401670 <__security_init_cookie>
  4014c6:	e8 b5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014cb:	90                   	nop

00000000004014cc <.l_endw>:
  4014cc:	90                   	nop
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	c3                   	retq   
  4014d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4014d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014dd:	00 00 00 

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 55 2f 00 00 	mov    0x2f55(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 7a 01 00 00       	callq  401670 <__security_init_cookie>
  4014f6:	e8 85 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014fb:	90                   	nop

00000000004014fc <.l_end>:
  4014fc:	90                   	nop
  4014fd:	48 83 c4 28          	add    $0x28,%rsp
  401501:	c3                   	retq   
  401502:	0f 1f 40 00          	nopl   0x0(%rax)
  401506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40150d:	00 00 00 

0000000000401510 <atexit>:
  401510:	48 83 ec 28          	sub    $0x28,%rsp
  401514:	e8 87 15 00 00       	callq  402aa0 <_onexit>
  401519:	48 85 c0             	test   %rax,%rax
  40151c:	0f 94 c0             	sete   %al
  40151f:	0f b6 c0             	movzbl %al,%eax
  401522:	f7 d8                	neg    %eax
  401524:	48 83 c4 28          	add    $0x28,%rsp
  401528:	c3                   	retq   
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401540 <__gcc_deregister_frame>
  401537:	e9 d4 ff ff ff       	jmpq   401510 <atexit>
  40153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401540 <__gcc_deregister_frame>:
  401540:	c3                   	retq   
  401541:	90                   	nop
  401542:	90                   	nop
  401543:	90                   	nop
  401544:	90                   	nop
  401545:	90                   	nop
  401546:	90                   	nop
  401547:	90                   	nop
  401548:	90                   	nop
  401549:	90                   	nop
  40154a:	90                   	nop
  40154b:	90                   	nop
  40154c:	90                   	nop
  40154d:	90                   	nop
  40154e:	90                   	nop
  40154f:	90                   	nop

0000000000401550 <b>:
  401550:	b8 01 00 00 00       	mov    $0x1,%eax
  401555:	c3                   	retq   

0000000000401556 <main>:
  401556:	55                   	push   %rbp
  401557:	48 89 e5             	mov    %rsp,%rbp
  40155a:	48 83 ec 30          	sub    $0x30,%rsp
  40155e:	e8 cd 00 00 00       	callq  401630 <__main>
  401563:	e8 e8 ff ff ff       	callq  401550 <b>
  401568:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40156b:	b8 00 00 00 00       	mov    $0x0,%eax
  401570:	48 83 c4 30          	add    $0x30,%rsp
  401574:	5d                   	pop    %rbp
  401575:	c3                   	retq   
  401576:	90                   	nop
  401577:	90                   	nop
  401578:	90                   	nop
  401579:	90                   	nop
  40157a:	90                   	nop
  40157b:	90                   	nop
  40157c:	90                   	nop
  40157d:	90                   	nop
  40157e:	90                   	nop
  40157f:	90                   	nop

0000000000401580 <__do_global_dtors>:
  401580:	48 83 ec 28          	sub    $0x28,%rsp
  401584:	48 8b 05 85 1a 00 00 	mov    0x1a85(%rip),%rax        # 403010 <p.93846>
  40158b:	48 8b 00             	mov    (%rax),%rax
  40158e:	48 85 c0             	test   %rax,%rax
  401591:	74 1d                	je     4015b0 <__do_global_dtors+0x30>
  401593:	ff d0                	callq  *%rax
  401595:	48 8b 05 74 1a 00 00 	mov    0x1a74(%rip),%rax        # 403010 <p.93846>
  40159c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4015a0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4015a4:	48 89 15 65 1a 00 00 	mov    %rdx,0x1a65(%rip)        # 403010 <p.93846>
  4015ab:	48 85 c0             	test   %rax,%rax
  4015ae:	75 e3                	jne    401593 <__do_global_dtors+0x13>
  4015b0:	48 83 c4 28          	add    $0x28,%rsp
  4015b4:	c3                   	retq   
  4015b5:	90                   	nop
  4015b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4015bd:	00 00 00 

00000000004015c0 <__do_global_ctors>:
  4015c0:	56                   	push   %rsi
  4015c1:	53                   	push   %rbx
  4015c2:	48 83 ec 28          	sub    $0x28,%rsp
  4015c6:	48 8b 0d 33 2d 00 00 	mov    0x2d33(%rip),%rcx        # 404300 <.refptr.__CTOR_LIST__>
  4015cd:	48 8b 11             	mov    (%rcx),%rdx
  4015d0:	83 fa ff             	cmp    $0xffffffff,%edx
  4015d3:	89 d0                	mov    %edx,%eax
  4015d5:	74 39                	je     401610 <__do_global_ctors+0x50>
  4015d7:	85 c0                	test   %eax,%eax
  4015d9:	74 20                	je     4015fb <__do_global_ctors+0x3b>
  4015db:	89 c2                	mov    %eax,%edx
  4015dd:	83 e8 01             	sub    $0x1,%eax
  4015e0:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  4015e4:	48 29 c2             	sub    %rax,%rdx
  4015e7:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  4015ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4015f0:	ff 13                	callq  *(%rbx)
  4015f2:	48 83 eb 08          	sub    $0x8,%rbx
  4015f6:	48 39 f3             	cmp    %rsi,%rbx
  4015f9:	75 f5                	jne    4015f0 <__do_global_ctors+0x30>
  4015fb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401580 <__do_global_dtors>
  401602:	48 83 c4 28          	add    $0x28,%rsp
  401606:	5b                   	pop    %rbx
  401607:	5e                   	pop    %rsi
  401608:	e9 03 ff ff ff       	jmpq   401510 <atexit>
  40160d:	0f 1f 00             	nopl   (%rax)
  401610:	31 c0                	xor    %eax,%eax
  401612:	eb 02                	jmp    401616 <__do_global_ctors+0x56>
  401614:	89 d0                	mov    %edx,%eax
  401616:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40161a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  40161f:	4c 89 c2             	mov    %r8,%rdx
  401622:	75 f0                	jne    401614 <__do_global_ctors+0x54>
  401624:	eb b1                	jmp    4015d7 <__do_global_ctors+0x17>
  401626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40162d:	00 00 00 

0000000000401630 <__main>:
  401630:	8b 05 fa 59 00 00    	mov    0x59fa(%rip),%eax        # 407030 <initialized>
  401636:	85 c0                	test   %eax,%eax
  401638:	74 06                	je     401640 <__main+0x10>
  40163a:	c3                   	retq   
  40163b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401640:	c7 05 e6 59 00 00 01 	movl   $0x1,0x59e6(%rip)        # 407030 <initialized>
  401647:	00 00 00 
  40164a:	e9 71 ff ff ff       	jmpq   4015c0 <__do_global_ctors>
  40164f:	90                   	nop

0000000000401650 <my_lconv_init>:
  401650:	48 ff 25 55 6c 00 00 	rex.W jmpq *0x6c55(%rip)        # 4082ac <__imp___lconv_init>
  401657:	90                   	nop
  401658:	90                   	nop
  401659:	90                   	nop
  40165a:	90                   	nop
  40165b:	90                   	nop
  40165c:	90                   	nop
  40165d:	90                   	nop
  40165e:	90                   	nop
  40165f:	90                   	nop

0000000000401660 <_setargv>:
  401660:	31 c0                	xor    %eax,%eax
  401662:	c3                   	retq   
  401663:	90                   	nop
  401664:	90                   	nop
  401665:	90                   	nop
  401666:	90                   	nop
  401667:	90                   	nop
  401668:	90                   	nop
  401669:	90                   	nop
  40166a:	90                   	nop
  40166b:	90                   	nop
  40166c:	90                   	nop
  40166d:	90                   	nop
  40166e:	90                   	nop
  40166f:	90                   	nop

0000000000401670 <__security_init_cookie>:
  401670:	41 54                	push   %r12
  401672:	55                   	push   %rbp
  401673:	57                   	push   %rdi
  401674:	56                   	push   %rsi
  401675:	53                   	push   %rbx
  401676:	48 83 ec 30          	sub    $0x30,%rsp
  40167a:	48 8b 1d 2f 1a 00 00 	mov    0x1a2f(%rip),%rbx        # 4030b0 <__security_cookie>
  401681:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401688:	2b 00 00 
  40168b:	48 39 c3             	cmp    %rax,%rbx
  40168e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401695:	00 00 
  401697:	74 17                	je     4016b0 <__security_init_cookie+0x40>
  401699:	48 f7 d3             	not    %rbx
  40169c:	48 89 1d 1d 1a 00 00 	mov    %rbx,0x1a1d(%rip)        # 4030c0 <__security_cookie_complement>
  4016a3:	48 83 c4 30          	add    $0x30,%rsp
  4016a7:	5b                   	pop    %rbx
  4016a8:	5e                   	pop    %rsi
  4016a9:	5f                   	pop    %rdi
  4016aa:	5d                   	pop    %rbp
  4016ab:	41 5c                	pop    %r12
  4016ad:	c3                   	retq   
  4016ae:	66 90                	xchg   %ax,%ax
  4016b0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4016b5:	ff 15 49 6b 00 00    	callq  *0x6b49(%rip)        # 408204 <__imp_GetSystemTimeAsFileTime>
  4016bb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4016c0:	ff 15 1e 6b 00 00    	callq  *0x6b1e(%rip)        # 4081e4 <__imp_GetCurrentProcessId>
  4016c6:	41 89 c4             	mov    %eax,%r12d
  4016c9:	ff 15 1d 6b 00 00    	callq  *0x6b1d(%rip)        # 4081ec <__imp_GetCurrentThreadId>
  4016cf:	89 c5                	mov    %eax,%ebp
  4016d1:	ff 15 35 6b 00 00    	callq  *0x6b35(%rip)        # 40820c <__imp_GetTickCount>
  4016d7:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4016dc:	89 c7                	mov    %eax,%edi
  4016de:	ff 15 40 6b 00 00    	callq  *0x6b40(%rip)        # 408224 <__imp_QueryPerformanceCounter>
  4016e4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4016e9:	44 89 e0             	mov    %r12d,%eax
  4016ec:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  4016f3:	ff 00 00 
  4016f6:	48 31 f0             	xor    %rsi,%rax
  4016f9:	89 ee                	mov    %ebp,%esi
  4016fb:	48 31 c6             	xor    %rax,%rsi
  4016fe:	89 f8                	mov    %edi,%eax
  401700:	48 31 f0             	xor    %rsi,%rax
  401703:	48 21 d0             	and    %rdx,%rax
  401706:	48 39 d8             	cmp    %rbx,%rax
  401709:	74 25                	je     401730 <__security_init_cookie+0xc0>
  40170b:	48 89 c2             	mov    %rax,%rdx
  40170e:	48 f7 d2             	not    %rdx
  401711:	48 89 05 98 19 00 00 	mov    %rax,0x1998(%rip)        # 4030b0 <__security_cookie>
  401718:	48 89 15 a1 19 00 00 	mov    %rdx,0x19a1(%rip)        # 4030c0 <__security_cookie_complement>
  40171f:	48 83 c4 30          	add    $0x30,%rsp
  401723:	5b                   	pop    %rbx
  401724:	5e                   	pop    %rsi
  401725:	5f                   	pop    %rdi
  401726:	5d                   	pop    %rbp
  401727:	41 5c                	pop    %r12
  401729:	c3                   	retq   
  40172a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401730:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401737:	d4 ff ff 
  40173a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401741:	2b 00 00 
  401744:	eb cb                	jmp    401711 <__security_init_cookie+0xa1>
  401746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40174d:	00 00 00 

0000000000401750 <__report_gsfailure>:
  401750:	55                   	push   %rbp
  401751:	56                   	push   %rsi
  401752:	53                   	push   %rbx
  401753:	48 89 e5             	mov    %rsp,%rbp
  401756:	48 83 ec 70          	sub    $0x70,%rsp
  40175a:	48 89 ce             	mov    %rcx,%rsi
  40175d:	48 8d 0d fc 58 00 00 	lea    0x58fc(%rip),%rcx        # 407060 <GS_ContextRecord>
  401764:	ff 15 ca 6a 00 00    	callq  *0x6aca(%rip)        # 408234 <__imp_RtlCaptureContext>
  40176a:	48 8b 1d e7 59 00 00 	mov    0x59e7(%rip),%rbx        # 407158 <GS_ContextRecord+0xf8>
  401771:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401775:	45 31 c0             	xor    %r8d,%r8d
  401778:	48 89 d9             	mov    %rbx,%rcx
  40177b:	ff 15 bb 6a 00 00    	callq  *0x6abb(%rip)        # 40823c <__imp_RtlLookupFunctionEntry>
  401781:	48 85 c0             	test   %rax,%rax
  401784:	0f 84 a3 00 00 00    	je     40182d <__report_gsfailure+0xdd>
  40178a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  40178e:	49 89 c1             	mov    %rax,%r9
  401791:	49 89 d8             	mov    %rbx,%r8
  401794:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40179b:	00 00 
  40179d:	48 8d 0d bc 58 00 00 	lea    0x58bc(%rip),%rcx        # 407060 <GS_ContextRecord>
  4017a4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  4017a9:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  4017ad:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4017b2:	31 c9                	xor    %ecx,%ecx
  4017b4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4017b9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4017bd:	ff 15 81 6a 00 00    	callq  *0x6a81(%rip)        # 408244 <__imp_RtlVirtualUnwind>
  4017c3:	48 8b 05 8e 59 00 00 	mov    0x598e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4017ca:	31 c9                	xor    %ecx,%ecx
  4017cc:	48 89 35 0d 59 00 00 	mov    %rsi,0x590d(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4017d3:	48 89 05 76 5d 00 00 	mov    %rax,0x5d76(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4017da:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4017e1:	00 00 00 
  4017e4:	48 89 05 55 5d 00 00 	mov    %rax,0x5d55(%rip)        # 407540 <GS_ExceptionRecord>
  4017eb:	48 8b 05 be 18 00 00 	mov    0x18be(%rip),%rax        # 4030b0 <__security_cookie>
  4017f2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4017f6:	48 8b 05 c3 18 00 00 	mov    0x18c3(%rip),%rax        # 4030c0 <__security_cookie_complement>
  4017fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401801:	ff 15 45 6a 00 00    	callq  *0x6a45(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  401807:	48 8d 0d f2 27 00 00 	lea    0x27f2(%rip),%rcx        # 404000 <GS_ExceptionPointers>
  40180e:	ff 15 58 6a 00 00    	callq  *0x6a58(%rip)        # 40826c <__imp_UnhandledExceptionFilter>
  401814:	ff 15 c2 69 00 00    	callq  *0x69c2(%rip)        # 4081dc <__imp_GetCurrentProcess>
  40181a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40181f:	48 89 c1             	mov    %rax,%rcx
  401822:	ff 15 34 6a 00 00    	callq  *0x6a34(%rip)        # 40825c <__imp_TerminateProcess>
  401828:	e8 6b 12 00 00       	callq  402a98 <abort>
  40182d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401831:	48 89 05 20 59 00 00 	mov    %rax,0x5920(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401838:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40183c:	48 89 05 b5 58 00 00 	mov    %rax,0x58b5(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401843:	e9 7b ff ff ff       	jmpq   4017c3 <__report_gsfailure+0x73>
  401848:	90                   	nop
  401849:	90                   	nop
  40184a:	90                   	nop
  40184b:	90                   	nop
  40184c:	90                   	nop
  40184d:	90                   	nop
  40184e:	90                   	nop
  40184f:	90                   	nop

0000000000401850 <__dyn_tls_dtor>:
  401850:	48 83 ec 28          	sub    $0x28,%rsp
  401854:	83 fa 03             	cmp    $0x3,%edx
  401857:	74 17                	je     401870 <__dyn_tls_dtor+0x20>
  401859:	85 d2                	test   %edx,%edx
  40185b:	74 13                	je     401870 <__dyn_tls_dtor+0x20>
  40185d:	b8 01 00 00 00       	mov    $0x1,%eax
  401862:	48 83 c4 28          	add    $0x28,%rsp
  401866:	c3                   	retq   
  401867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40186e:	00 00 
  401870:	e8 cb 0c 00 00       	callq  402540 <__mingw_TLScallback>
  401875:	b8 01 00 00 00       	mov    $0x1,%eax
  40187a:	48 83 c4 28          	add    $0x28,%rsp
  40187e:	c3                   	retq   
  40187f:	90                   	nop

0000000000401880 <__dyn_tls_init>:
  401880:	56                   	push   %rsi
  401881:	53                   	push   %rbx
  401882:	48 83 ec 28          	sub    $0x28,%rsp
  401886:	48 8b 05 53 2a 00 00 	mov    0x2a53(%rip),%rax        # 4042e0 <.refptr._CRT_MT>
  40188d:	83 38 02             	cmpl   $0x2,(%rax)
  401890:	74 06                	je     401898 <__dyn_tls_init+0x18>
  401892:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401898:	83 fa 02             	cmp    $0x2,%edx
  40189b:	74 13                	je     4018b0 <__dyn_tls_init+0x30>
  40189d:	83 fa 01             	cmp    $0x1,%edx
  4018a0:	74 40                	je     4018e2 <__dyn_tls_init+0x62>
  4018a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4018a7:	48 83 c4 28          	add    $0x28,%rsp
  4018ab:	5b                   	pop    %rbx
  4018ac:	5e                   	pop    %rsi
  4018ad:	c3                   	retq   
  4018ae:	66 90                	xchg   %ax,%ax
  4018b0:	48 8d 1d a9 77 00 00 	lea    0x77a9(%rip),%rbx        # 409060 <__xd_z>
  4018b7:	48 8d 35 a2 77 00 00 	lea    0x77a2(%rip),%rsi        # 409060 <__xd_z>
  4018be:	48 39 de             	cmp    %rbx,%rsi
  4018c1:	74 df                	je     4018a2 <__dyn_tls_init+0x22>
  4018c3:	48 8b 03             	mov    (%rbx),%rax
  4018c6:	48 85 c0             	test   %rax,%rax
  4018c9:	74 02                	je     4018cd <__dyn_tls_init+0x4d>
  4018cb:	ff d0                	callq  *%rax
  4018cd:	48 83 c3 08          	add    $0x8,%rbx
  4018d1:	48 39 de             	cmp    %rbx,%rsi
  4018d4:	75 ed                	jne    4018c3 <__dyn_tls_init+0x43>
  4018d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4018db:	48 83 c4 28          	add    $0x28,%rsp
  4018df:	5b                   	pop    %rbx
  4018e0:	5e                   	pop    %rsi
  4018e1:	c3                   	retq   
  4018e2:	e8 59 0c 00 00       	callq  402540 <__mingw_TLScallback>
  4018e7:	b8 01 00 00 00       	mov    $0x1,%eax
  4018ec:	48 83 c4 28          	add    $0x28,%rsp
  4018f0:	5b                   	pop    %rbx
  4018f1:	5e                   	pop    %rsi
  4018f2:	c3                   	retq   
  4018f3:	0f 1f 00             	nopl   (%rax)
  4018f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4018fd:	00 00 00 

0000000000401900 <__tlregdtor>:
  401900:	31 c0                	xor    %eax,%eax
  401902:	c3                   	retq   
  401903:	90                   	nop
  401904:	90                   	nop
  401905:	90                   	nop
  401906:	90                   	nop
  401907:	90                   	nop
  401908:	90                   	nop
  401909:	90                   	nop
  40190a:	90                   	nop
  40190b:	90                   	nop
  40190c:	90                   	nop
  40190d:	90                   	nop
  40190e:	90                   	nop
  40190f:	90                   	nop

0000000000401910 <__mingw_raise_matherr>:
  401910:	48 83 ec 58          	sub    $0x58,%rsp
  401914:	48 8b 05 e5 5c 00 00 	mov    0x5ce5(%rip),%rax        # 407600 <stUserMathErr>
  40191b:	48 85 c0             	test   %rax,%rax
  40191e:	74 2c                	je     40194c <__mingw_raise_matherr+0x3c>
  401920:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401927:	00 00 
  401929:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40192d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401932:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401937:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40193d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401943:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401949:	ff d0                	callq  *%rax
  40194b:	90                   	nop
  40194c:	48 83 c4 58          	add    $0x58,%rsp
  401950:	c3                   	retq   
  401951:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40195d:	00 00 00 

0000000000401960 <__mingw_setusermatherr>:
  401960:	48 89 0d 99 5c 00 00 	mov    %rcx,0x5c99(%rip)        # 407600 <stUserMathErr>
  401967:	e9 54 11 00 00       	jmpq   402ac0 <__setusermatherr>
  40196c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401970 <_matherr>:
  401970:	56                   	push   %rsi
  401971:	53                   	push   %rbx
  401972:	48 83 ec 78          	sub    $0x78,%rsp
  401976:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  40197b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401980:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401986:	83 39 06             	cmpl   $0x6,(%rcx)
  401989:	0f 87 d1 00 00 00    	ja     401a60 <_matherr+0xf0>
  40198f:	8b 01                	mov    (%rcx),%eax
  401991:	48 8d 15 0c 28 00 00 	lea    0x280c(%rip),%rdx        # 4041a4 <.rdata+0x124>
  401998:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40199c:	48 01 d0             	add    %rdx,%rax
  40199f:	ff e0                	jmpq   *%rax
  4019a1:	48 8d 1d d8 26 00 00 	lea    0x26d8(%rip),%rbx        # 404080 <.rdata>
  4019a8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  4019ac:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  4019b2:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  4019b7:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  4019bc:	b9 02 00 00 00       	mov    $0x2,%ecx
  4019c1:	e8 2a 11 00 00       	callq  402af0 <__acrt_iob_func>
  4019c6:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  4019cd:	49 89 f1             	mov    %rsi,%r9
  4019d0:	49 89 d8             	mov    %rbx,%r8
  4019d3:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  4019d9:	48 8d 15 98 27 00 00 	lea    0x2798(%rip),%rdx        # 404178 <.rdata+0xf8>
  4019e0:	48 89 c1             	mov    %rax,%rcx
  4019e3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  4019e9:	e8 92 10 00 00       	callq  402a80 <fprintf>
  4019ee:	90                   	nop
  4019ef:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  4019f4:	31 c0                	xor    %eax,%eax
  4019f6:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  4019fb:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401a01:	48 83 c4 78          	add    $0x78,%rsp
  401a05:	5b                   	pop    %rbx
  401a06:	5e                   	pop    %rsi
  401a07:	c3                   	retq   
  401a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401a0f:	00 
  401a10:	48 8d 1d 88 26 00 00 	lea    0x2688(%rip),%rbx        # 40409f <.rdata+0x1f>
  401a17:	eb 8f                	jmp    4019a8 <_matherr+0x38>
  401a19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a20:	48 8d 1d 99 26 00 00 	lea    0x2699(%rip),%rbx        # 4040c0 <.rdata+0x40>
  401a27:	e9 7c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a2c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a30:	48 8d 1d f9 26 00 00 	lea    0x26f9(%rip),%rbx        # 404130 <.rdata+0xb0>
  401a37:	e9 6c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a40:	48 8d 1d c1 26 00 00 	lea    0x26c1(%rip),%rbx        # 404108 <.rdata+0x88>
  401a47:	e9 5c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a50:	48 8d 1d 89 26 00 00 	lea    0x2689(%rip),%rbx        # 4040e0 <.rdata+0x60>
  401a57:	e9 4c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a5c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a60:	48 8d 1d ff 26 00 00 	lea    0x26ff(%rip),%rbx        # 404166 <.rdata+0xe6>
  401a67:	e9 3c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a6c:	90                   	nop
  401a6d:	90                   	nop
  401a6e:	90                   	nop
  401a6f:	90                   	nop

0000000000401a70 <_fpreset>:
  401a70:	db e3                	fninit 
  401a72:	c3                   	retq   
  401a73:	90                   	nop
  401a74:	90                   	nop
  401a75:	90                   	nop
  401a76:	90                   	nop
  401a77:	90                   	nop
  401a78:	90                   	nop
  401a79:	90                   	nop
  401a7a:	90                   	nop
  401a7b:	90                   	nop
  401a7c:	90                   	nop
  401a7d:	90                   	nop
  401a7e:	90                   	nop
  401a7f:	90                   	nop

0000000000401a80 <_decode_pointer>:
  401a80:	48 89 c8             	mov    %rcx,%rax
  401a83:	c3                   	retq   
  401a84:	66 90                	xchg   %ax,%ax
  401a86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a8d:	00 00 00 

0000000000401a90 <_encode_pointer>:
  401a90:	48 89 c8             	mov    %rcx,%rax
  401a93:	c3                   	retq   
  401a94:	90                   	nop
  401a95:	90                   	nop
  401a96:	90                   	nop
  401a97:	90                   	nop
  401a98:	90                   	nop
  401a99:	90                   	nop
  401a9a:	90                   	nop
  401a9b:	90                   	nop
  401a9c:	90                   	nop
  401a9d:	90                   	nop
  401a9e:	90                   	nop
  401a9f:	90                   	nop

0000000000401aa0 <__write_memory.part.0>:
  401aa0:	41 54                	push   %r12
  401aa2:	55                   	push   %rbp
  401aa3:	57                   	push   %rdi
  401aa4:	56                   	push   %rsi
  401aa5:	53                   	push   %rbx
  401aa6:	48 83 ec 50          	sub    $0x50,%rsp
  401aaa:	48 63 35 73 5b 00 00 	movslq 0x5b73(%rip),%rsi        # 407624 <maxSections>
  401ab1:	85 f6                	test   %esi,%esi
  401ab3:	48 89 cb             	mov    %rcx,%rbx
  401ab6:	48 89 d5             	mov    %rdx,%rbp
  401ab9:	4c 89 c7             	mov    %r8,%rdi
  401abc:	0f 8e 66 01 00 00    	jle    401c28 <__write_memory.part.0+0x188>
  401ac2:	48 8b 05 5f 5b 00 00 	mov    0x5b5f(%rip),%rax        # 407628 <the_secs>
  401ac9:	31 c9                	xor    %ecx,%ecx
  401acb:	48 83 c0 18          	add    $0x18,%rax
  401acf:	90                   	nop
  401ad0:	48 8b 10             	mov    (%rax),%rdx
  401ad3:	48 39 d3             	cmp    %rdx,%rbx
  401ad6:	72 14                	jb     401aec <__write_memory.part.0+0x4c>
  401ad8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401adc:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401ae0:	4c 01 c2             	add    %r8,%rdx
  401ae3:	48 39 d3             	cmp    %rdx,%rbx
  401ae6:	0f 82 89 00 00 00    	jb     401b75 <__write_memory.part.0+0xd5>
  401aec:	83 c1 01             	add    $0x1,%ecx
  401aef:	48 83 c0 28          	add    $0x28,%rax
  401af3:	39 f1                	cmp    %esi,%ecx
  401af5:	75 d9                	jne    401ad0 <__write_memory.part.0+0x30>
  401af7:	48 89 d9             	mov    %rbx,%rcx
  401afa:	e8 41 0c 00 00       	callq  402740 <__mingw_GetSectionForAddress>
  401aff:	48 85 c0             	test   %rax,%rax
  401b02:	49 89 c4             	mov    %rax,%r12
  401b05:	0f 84 52 01 00 00    	je     401c5d <__write_memory.part.0+0x1bd>
  401b0b:	48 8b 05 16 5b 00 00 	mov    0x5b16(%rip),%rax        # 407628 <the_secs>
  401b12:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  401b16:	48 c1 e6 03          	shl    $0x3,%rsi
  401b1a:	48 01 f0             	add    %rsi,%rax
  401b1d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  401b21:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401b27:	e8 44 0d 00 00       	callq  402870 <_GetPEImageBase>
  401b2c:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  401b31:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b36:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b3c:	48 01 c1             	add    %rax,%rcx
  401b3f:	48 8b 05 e2 5a 00 00 	mov    0x5ae2(%rip),%rax        # 407628 <the_secs>
  401b46:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  401b4b:	ff 15 2b 67 00 00    	callq  *0x672b(%rip)        # 40827c <__imp_VirtualQuery>
  401b51:	48 85 c0             	test   %rax,%rax
  401b54:	0f 84 e6 00 00 00    	je     401c40 <__write_memory.part.0+0x1a0>
  401b5a:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b5e:	8d 50 fc             	lea    -0x4(%rax),%edx
  401b61:	83 e2 fb             	and    $0xfffffffb,%edx
  401b64:	74 08                	je     401b6e <__write_memory.part.0+0xce>
  401b66:	83 e8 40             	sub    $0x40,%eax
  401b69:	83 e0 bf             	and    $0xffffffbf,%eax
  401b6c:	75 62                	jne    401bd0 <__write_memory.part.0+0x130>
  401b6e:	83 05 af 5a 00 00 01 	addl   $0x1,0x5aaf(%rip)        # 407624 <maxSections>
  401b75:	83 ff 08             	cmp    $0x8,%edi
  401b78:	73 29                	jae    401ba3 <__write_memory.part.0+0x103>
  401b7a:	40 f6 c7 04          	test   $0x4,%dil
  401b7e:	0f 85 90 00 00 00    	jne    401c14 <__write_memory.part.0+0x174>
  401b84:	85 ff                	test   %edi,%edi
  401b86:	74 10                	je     401b98 <__write_memory.part.0+0xf8>
  401b88:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401b8c:	40 f6 c7 02          	test   $0x2,%dil
  401b90:	88 03                	mov    %al,(%rbx)
  401b92:	0f 85 97 00 00 00    	jne    401c2f <__write_memory.part.0+0x18f>
  401b98:	48 83 c4 50          	add    $0x50,%rsp
  401b9c:	5b                   	pop    %rbx
  401b9d:	5e                   	pop    %rsi
  401b9e:	5f                   	pop    %rdi
  401b9f:	5d                   	pop    %rbp
  401ba0:	41 5c                	pop    %r12
  401ba2:	c3                   	retq   
  401ba3:	89 f8                	mov    %edi,%eax
  401ba5:	83 ef 01             	sub    $0x1,%edi
  401ba8:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  401bad:	83 ff 08             	cmp    $0x8,%edi
  401bb0:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  401bb5:	72 e1                	jb     401b98 <__write_memory.part.0+0xf8>
  401bb7:	83 e7 f8             	and    $0xfffffff8,%edi
  401bba:	31 c0                	xor    %eax,%eax
  401bbc:	89 c2                	mov    %eax,%edx
  401bbe:	83 c0 08             	add    $0x8,%eax
  401bc1:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  401bc6:	39 f8                	cmp    %edi,%eax
  401bc8:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  401bcc:	72 ee                	jb     401bbc <__write_memory.part.0+0x11c>
  401bce:	eb c8                	jmp    401b98 <__write_memory.part.0+0xf8>
  401bd0:	48 03 35 51 5a 00 00 	add    0x5a51(%rip),%rsi        # 407628 <the_secs>
  401bd7:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401bdd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401be2:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401be7:	49 89 f1             	mov    %rsi,%r9
  401bea:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401bee:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  401bf2:	ff 15 7c 66 00 00    	callq  *0x667c(%rip)        # 408274 <__imp_VirtualProtect>
  401bf8:	85 c0                	test   %eax,%eax
  401bfa:	0f 85 6e ff ff ff    	jne    401b6e <__write_memory.part.0+0xce>
  401c00:	ff 15 ee 65 00 00    	callq  *0x65ee(%rip)        # 4081f4 <__imp_GetLastError>
  401c06:	48 8d 0d 2b 26 00 00 	lea    0x262b(%rip),%rcx        # 404238 <.rdata+0x78>
  401c0d:	89 c2                	mov    %eax,%edx
  401c0f:	e8 0c 10 00 00       	callq  402c20 <__report_error>
  401c14:	8b 45 00             	mov    0x0(%rbp),%eax
  401c17:	89 ff                	mov    %edi,%edi
  401c19:	89 03                	mov    %eax,(%rbx)
  401c1b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  401c1f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  401c23:	e9 70 ff ff ff       	jmpq   401b98 <__write_memory.part.0+0xf8>
  401c28:	31 f6                	xor    %esi,%esi
  401c2a:	e9 c8 fe ff ff       	jmpq   401af7 <__write_memory.part.0+0x57>
  401c2f:	89 ff                	mov    %edi,%edi
  401c31:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  401c36:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  401c3b:	e9 58 ff ff ff       	jmpq   401b98 <__write_memory.part.0+0xf8>
  401c40:	48 8b 05 e1 59 00 00 	mov    0x59e1(%rip),%rax        # 407628 <the_secs>
  401c47:	48 8d 0d b2 25 00 00 	lea    0x25b2(%rip),%rcx        # 404200 <.rdata+0x40>
  401c4e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  401c53:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  401c58:	e8 c3 0f 00 00       	callq  402c20 <__report_error>
  401c5d:	48 8d 0d 7c 25 00 00 	lea    0x257c(%rip),%rcx        # 4041e0 <.rdata+0x20>
  401c64:	48 89 da             	mov    %rbx,%rdx
  401c67:	e8 b4 0f 00 00       	callq  402c20 <__report_error>
  401c6c:	90                   	nop
  401c6d:	0f 1f 00             	nopl   (%rax)

0000000000401c70 <_pei386_runtime_relocator>:
  401c70:	55                   	push   %rbp
  401c71:	41 57                	push   %r15
  401c73:	41 56                	push   %r14
  401c75:	41 55                	push   %r13
  401c77:	41 54                	push   %r12
  401c79:	57                   	push   %rdi
  401c7a:	56                   	push   %rsi
  401c7b:	53                   	push   %rbx
  401c7c:	48 83 ec 38          	sub    $0x38,%rsp
  401c80:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401c87:	00 
  401c88:	8b 1d 92 59 00 00    	mov    0x5992(%rip),%ebx        # 407620 <was_init.95174>
  401c8e:	85 db                	test   %ebx,%ebx
  401c90:	74 11                	je     401ca3 <_pei386_runtime_relocator+0x33>
  401c92:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401c96:	5b                   	pop    %rbx
  401c97:	5e                   	pop    %rsi
  401c98:	5f                   	pop    %rdi
  401c99:	41 5c                	pop    %r12
  401c9b:	41 5d                	pop    %r13
  401c9d:	41 5e                	pop    %r14
  401c9f:	41 5f                	pop    %r15
  401ca1:	5d                   	pop    %rbp
  401ca2:	c3                   	retq   
  401ca3:	c7 05 73 59 00 00 01 	movl   $0x1,0x5973(%rip)        # 407620 <was_init.95174>
  401caa:	00 00 00 
  401cad:	e8 0e 0b 00 00       	callq  4027c0 <__mingw_GetSectionCount>
  401cb2:	48 98                	cltq   
  401cb4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401cb8:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  401cbf:	00 
  401cc0:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401cc4:	e8 37 0d 00 00       	callq  402a00 <___chkstk_ms>
  401cc9:	4c 8b 25 40 26 00 00 	mov    0x2640(%rip),%r12        # 404310 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401cd0:	c7 05 4a 59 00 00 00 	movl   $0x0,0x594a(%rip)        # 407624 <maxSections>
  401cd7:	00 00 00 
  401cda:	48 8b 35 3f 26 00 00 	mov    0x263f(%rip),%rsi        # 404320 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401ce1:	48 29 c4             	sub    %rax,%rsp
  401ce4:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401ce9:	48 89 05 38 59 00 00 	mov    %rax,0x5938(%rip)        # 407628 <the_secs>
  401cf0:	4c 89 e0             	mov    %r12,%rax
  401cf3:	48 29 f0             	sub    %rsi,%rax
  401cf6:	48 83 f8 07          	cmp    $0x7,%rax
  401cfa:	7e 96                	jle    401c92 <_pei386_runtime_relocator+0x22>
  401cfc:	48 83 f8 0b          	cmp    $0xb,%rax
  401d00:	8b 16                	mov    (%rsi),%edx
  401d02:	0f 8e c8 00 00 00    	jle    401dd0 <_pei386_runtime_relocator+0x160>
  401d08:	85 d2                	test   %edx,%edx
  401d0a:	0f 84 a4 00 00 00    	je     401db4 <_pei386_runtime_relocator+0x144>
  401d10:	4c 39 e6             	cmp    %r12,%rsi
  401d13:	0f 83 79 ff ff ff    	jae    401c92 <_pei386_runtime_relocator+0x22>
  401d19:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  401d1d:	49 83 c4 07          	add    $0x7,%r12
  401d21:	4c 8b 2d 18 26 00 00 	mov    0x2618(%rip),%r13        # 404340 <.refptr.__image_base__>
  401d28:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401d2c:	4d 29 f4             	sub    %r14,%r12
  401d2f:	49 c1 ec 03          	shr    $0x3,%r12
  401d33:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  401d38:	eb 0a                	jmp    401d44 <_pei386_runtime_relocator+0xd4>
  401d3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401d40:	49 83 c6 08          	add    $0x8,%r14
  401d44:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401d47:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401d4d:	48 89 fa             	mov    %rdi,%rdx
  401d50:	8b 06                	mov    (%rsi),%eax
  401d52:	4c 89 f6             	mov    %r14,%rsi
  401d55:	4c 01 e9             	add    %r13,%rcx
  401d58:	03 01                	add    (%rcx),%eax
  401d5a:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401d5d:	e8 3e fd ff ff       	callq  401aa0 <__write_memory.part.0>
  401d62:	4d 39 e6             	cmp    %r12,%r14
  401d65:	75 d9                	jne    401d40 <_pei386_runtime_relocator+0xd0>
  401d67:	8b 05 b7 58 00 00    	mov    0x58b7(%rip),%eax        # 407624 <maxSections>
  401d6d:	31 f6                	xor    %esi,%esi
  401d6f:	4c 8b 25 fe 64 00 00 	mov    0x64fe(%rip),%r12        # 408274 <__imp_VirtualProtect>
  401d76:	85 c0                	test   %eax,%eax
  401d78:	0f 8e 14 ff ff ff    	jle    401c92 <_pei386_runtime_relocator+0x22>
  401d7e:	66 90                	xchg   %ax,%ax
  401d80:	48 8b 05 a1 58 00 00 	mov    0x58a1(%rip),%rax        # 407628 <the_secs>
  401d87:	48 01 f0             	add    %rsi,%rax
  401d8a:	44 8b 00             	mov    (%rax),%r8d
  401d8d:	45 85 c0             	test   %r8d,%r8d
  401d90:	74 0e                	je     401da0 <_pei386_runtime_relocator+0x130>
  401d92:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401d96:	49 89 f9             	mov    %rdi,%r9
  401d99:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401d9d:	41 ff d4             	callq  *%r12
  401da0:	83 c3 01             	add    $0x1,%ebx
  401da3:	48 83 c6 28          	add    $0x28,%rsi
  401da7:	3b 1d 77 58 00 00    	cmp    0x5877(%rip),%ebx        # 407624 <maxSections>
  401dad:	7c d1                	jl     401d80 <_pei386_runtime_relocator+0x110>
  401daf:	e9 de fe ff ff       	jmpq   401c92 <_pei386_runtime_relocator+0x22>
  401db4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401db7:	85 c9                	test   %ecx,%ecx
  401db9:	0f 85 51 ff ff ff    	jne    401d10 <_pei386_runtime_relocator+0xa0>
  401dbf:	8b 56 08             	mov    0x8(%rsi),%edx
  401dc2:	85 d2                	test   %edx,%edx
  401dc4:	75 1d                	jne    401de3 <_pei386_runtime_relocator+0x173>
  401dc6:	8b 56 0c             	mov    0xc(%rsi),%edx
  401dc9:	48 83 c6 0c          	add    $0xc,%rsi
  401dcd:	0f 1f 00             	nopl   (%rax)
  401dd0:	85 d2                	test   %edx,%edx
  401dd2:	0f 85 38 ff ff ff    	jne    401d10 <_pei386_runtime_relocator+0xa0>
  401dd8:	8b 46 04             	mov    0x4(%rsi),%eax
  401ddb:	85 c0                	test   %eax,%eax
  401ddd:	0f 85 2d ff ff ff    	jne    401d10 <_pei386_runtime_relocator+0xa0>
  401de3:	8b 56 08             	mov    0x8(%rsi),%edx
  401de6:	83 fa 01             	cmp    $0x1,%edx
  401de9:	0f 85 2f 01 00 00    	jne    401f1e <_pei386_runtime_relocator+0x2ae>
  401def:	4c 8b 2d 4a 25 00 00 	mov    0x254a(%rip),%r13        # 404340 <.refptr.__image_base__>
  401df6:	48 83 c6 0c          	add    $0xc,%rsi
  401dfa:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401e01:	ff ff ff 
  401e04:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  401e08:	4c 39 e6             	cmp    %r12,%rsi
  401e0b:	72 48                	jb     401e55 <_pei386_runtime_relocator+0x1e5>
  401e0d:	e9 80 fe ff ff       	jmpq   401c92 <_pei386_runtime_relocator+0x22>
  401e12:	0f 86 b8 00 00 00    	jbe    401ed0 <_pei386_runtime_relocator+0x260>
  401e18:	83 fa 20             	cmp    $0x20,%edx
  401e1b:	0f 84 7f 00 00 00    	je     401ea0 <_pei386_runtime_relocator+0x230>
  401e21:	83 fa 40             	cmp    $0x40,%edx
  401e24:	0f 85 e0 00 00 00    	jne    401f0a <_pei386_runtime_relocator+0x29a>
  401e2a:	48 8b 11             	mov    (%rcx),%rdx
  401e2d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401e33:	4c 89 f7             	mov    %r14,%rdi
  401e36:	48 29 c2             	sub    %rax,%rdx
  401e39:	4c 01 ca             	add    %r9,%rdx
  401e3c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401e40:	4c 89 f2             	mov    %r14,%rdx
  401e43:	e8 58 fc ff ff       	callq  401aa0 <__write_memory.part.0>
  401e48:	48 83 c6 0c          	add    $0xc,%rsi
  401e4c:	4c 39 e6             	cmp    %r12,%rsi
  401e4f:	0f 83 12 ff ff ff    	jae    401d67 <_pei386_runtime_relocator+0xf7>
  401e55:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401e58:	8b 06                	mov    (%rsi),%eax
  401e5a:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  401e5e:	4c 01 e9             	add    %r13,%rcx
  401e61:	4c 01 e8             	add    %r13,%rax
  401e64:	83 fa 10             	cmp    $0x10,%edx
  401e67:	4c 8b 08             	mov    (%rax),%r9
  401e6a:	75 a6                	jne    401e12 <_pei386_runtime_relocator+0x1a2>
  401e6c:	44 0f b7 01          	movzwl (%rcx),%r8d
  401e70:	4c 89 f2             	mov    %r14,%rdx
  401e73:	4c 89 f7             	mov    %r14,%rdi
  401e76:	4d 89 c2             	mov    %r8,%r10
  401e79:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401e80:	66 45 85 c0          	test   %r8w,%r8w
  401e84:	4d 0f 48 c2          	cmovs  %r10,%r8
  401e88:	49 29 c0             	sub    %rax,%r8
  401e8b:	4d 01 c8             	add    %r9,%r8
  401e8e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401e92:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401e98:	e8 03 fc ff ff       	callq  401aa0 <__write_memory.part.0>
  401e9d:	eb a9                	jmp    401e48 <_pei386_runtime_relocator+0x1d8>
  401e9f:	90                   	nop
  401ea0:	8b 11                	mov    (%rcx),%edx
  401ea2:	4c 89 f7             	mov    %r14,%rdi
  401ea5:	49 89 d0             	mov    %rdx,%r8
  401ea8:	4c 09 fa             	or     %r15,%rdx
  401eab:	45 85 c0             	test   %r8d,%r8d
  401eae:	49 0f 49 d0          	cmovns %r8,%rdx
  401eb2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401eb8:	48 29 c2             	sub    %rax,%rdx
  401ebb:	4c 01 ca             	add    %r9,%rdx
  401ebe:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401ec2:	4c 89 f2             	mov    %r14,%rdx
  401ec5:	e8 d6 fb ff ff       	callq  401aa0 <__write_memory.part.0>
  401eca:	e9 79 ff ff ff       	jmpq   401e48 <_pei386_runtime_relocator+0x1d8>
  401ecf:	90                   	nop
  401ed0:	83 fa 08             	cmp    $0x8,%edx
  401ed3:	75 35                	jne    401f0a <_pei386_runtime_relocator+0x29a>
  401ed5:	44 0f b6 01          	movzbl (%rcx),%r8d
  401ed9:	4c 89 f2             	mov    %r14,%rdx
  401edc:	4c 89 f7             	mov    %r14,%rdi
  401edf:	4d 89 c2             	mov    %r8,%r10
  401ee2:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401ee9:	45 84 c0             	test   %r8b,%r8b
  401eec:	4d 0f 48 c2          	cmovs  %r10,%r8
  401ef0:	49 29 c0             	sub    %rax,%r8
  401ef3:	4d 01 c8             	add    %r9,%r8
  401ef6:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401efa:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401f00:	e8 9b fb ff ff       	callq  401aa0 <__write_memory.part.0>
  401f05:	e9 3e ff ff ff       	jmpq   401e48 <_pei386_runtime_relocator+0x1d8>
  401f0a:	48 8d 0d 87 23 00 00 	lea    0x2387(%rip),%rcx        # 404298 <.rdata+0xd8>
  401f11:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401f18:	00 
  401f19:	e8 02 0d 00 00       	callq  402c20 <__report_error>
  401f1e:	48 8d 0d 3b 23 00 00 	lea    0x233b(%rip),%rcx        # 404260 <.rdata+0xa0>
  401f25:	e8 f6 0c 00 00       	callq  402c20 <__report_error>
  401f2a:	90                   	nop
  401f2b:	90                   	nop
  401f2c:	90                   	nop
  401f2d:	90                   	nop
  401f2e:	90                   	nop
  401f2f:	90                   	nop

0000000000401f30 <__mingw_SEH_error_handler>:
  401f30:	48 83 ec 28          	sub    $0x28,%rsp
  401f34:	8b 01                	mov    (%rcx),%eax
  401f36:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401f3b:	77 63                	ja     401fa0 <__mingw_SEH_error_handler+0x70>
  401f3d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401f42:	73 7b                	jae    401fbf <__mingw_SEH_error_handler+0x8f>
  401f44:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  401f49:	0f 84 05 01 00 00    	je     402054 <__mingw_SEH_error_handler+0x124>
  401f4f:	0f 87 cb 00 00 00    	ja     402020 <__mingw_SEH_error_handler+0xf0>
  401f55:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  401f5a:	0f 84 f4 00 00 00    	je     402054 <__mingw_SEH_error_handler+0x124>
  401f60:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401f65:	0f 85 c3 00 00 00    	jne    40202e <__mingw_SEH_error_handler+0xfe>
  401f6b:	31 d2                	xor    %edx,%edx
  401f6d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401f72:	e8 e1 0a 00 00       	callq  402a58 <signal>
  401f77:	48 83 f8 01          	cmp    $0x1,%rax
  401f7b:	0f 84 2f 01 00 00    	je     4020b0 <__mingw_SEH_error_handler+0x180>
  401f81:	48 85 c0             	test   %rax,%rax
  401f84:	0f 84 3c 01 00 00    	je     4020c6 <__mingw_SEH_error_handler+0x196>
  401f8a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401f8f:	ff d0                	callq  *%rax
  401f91:	31 c0                	xor    %eax,%eax
  401f93:	48 83 c4 28          	add    $0x28,%rsp
  401f97:	c3                   	retq   
  401f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401f9f:	00 
  401fa0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401fa5:	0f 84 b5 00 00 00    	je     402060 <__mingw_SEH_error_handler+0x130>
  401fab:	77 37                	ja     401fe4 <__mingw_SEH_error_handler+0xb4>
  401fad:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401fb2:	0f 84 9c 00 00 00    	je     402054 <__mingw_SEH_error_handler+0x124>
  401fb8:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401fbd:	75 6f                	jne    40202e <__mingw_SEH_error_handler+0xfe>
  401fbf:	31 d2                	xor    %edx,%edx
  401fc1:	b9 08 00 00 00       	mov    $0x8,%ecx
  401fc6:	e8 8d 0a 00 00       	callq  402a58 <signal>
  401fcb:	48 83 f8 01          	cmp    $0x1,%rax
  401fcf:	74 6f                	je     402040 <__mingw_SEH_error_handler+0x110>
  401fd1:	48 85 c0             	test   %rax,%rax
  401fd4:	74 58                	je     40202e <__mingw_SEH_error_handler+0xfe>
  401fd6:	b9 08 00 00 00       	mov    $0x8,%ecx
  401fdb:	ff d0                	callq  *%rax
  401fdd:	31 c0                	xor    %eax,%eax
  401fdf:	48 83 c4 28          	add    $0x28,%rsp
  401fe3:	c3                   	retq   
  401fe4:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  401fe9:	74 69                	je     402054 <__mingw_SEH_error_handler+0x124>
  401feb:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  401ff0:	75 3c                	jne    40202e <__mingw_SEH_error_handler+0xfe>
  401ff2:	31 d2                	xor    %edx,%edx
  401ff4:	b9 04 00 00 00       	mov    $0x4,%ecx
  401ff9:	e8 5a 0a 00 00       	callq  402a58 <signal>
  401ffe:	48 83 f8 01          	cmp    $0x1,%rax
  402002:	0f 84 88 00 00 00    	je     402090 <__mingw_SEH_error_handler+0x160>
  402008:	48 85 c0             	test   %rax,%rax
  40200b:	0f 84 b5 00 00 00    	je     4020c6 <__mingw_SEH_error_handler+0x196>
  402011:	b9 04 00 00 00       	mov    $0x4,%ecx
  402016:	ff d0                	callq  *%rax
  402018:	31 c0                	xor    %eax,%eax
  40201a:	48 83 c4 28          	add    $0x28,%rsp
  40201e:	c3                   	retq   
  40201f:	90                   	nop
  402020:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402025:	74 cb                	je     401ff2 <__mingw_SEH_error_handler+0xc2>
  402027:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  40202c:	74 26                	je     402054 <__mingw_SEH_error_handler+0x124>
  40202e:	b8 01 00 00 00       	mov    $0x1,%eax
  402033:	48 83 c4 28          	add    $0x28,%rsp
  402037:	c3                   	retq   
  402038:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40203f:	00 
  402040:	ba 01 00 00 00       	mov    $0x1,%edx
  402045:	b9 08 00 00 00       	mov    $0x8,%ecx
  40204a:	e8 09 0a 00 00       	callq  402a58 <signal>
  40204f:	e8 1c fa ff ff       	callq  401a70 <_fpreset>
  402054:	31 c0                	xor    %eax,%eax
  402056:	48 83 c4 28          	add    $0x28,%rsp
  40205a:	c3                   	retq   
  40205b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402060:	31 d2                	xor    %edx,%edx
  402062:	b9 08 00 00 00       	mov    $0x8,%ecx
  402067:	e8 ec 09 00 00       	callq  402a58 <signal>
  40206c:	48 83 f8 01          	cmp    $0x1,%rax
  402070:	0f 85 5b ff ff ff    	jne    401fd1 <__mingw_SEH_error_handler+0xa1>
  402076:	ba 01 00 00 00       	mov    $0x1,%edx
  40207b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402080:	e8 d3 09 00 00       	callq  402a58 <signal>
  402085:	31 c0                	xor    %eax,%eax
  402087:	e9 07 ff ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>
  40208c:	0f 1f 40 00          	nopl   0x0(%rax)
  402090:	ba 01 00 00 00       	mov    $0x1,%edx
  402095:	b9 04 00 00 00       	mov    $0x4,%ecx
  40209a:	e8 b9 09 00 00       	callq  402a58 <signal>
  40209f:	31 c0                	xor    %eax,%eax
  4020a1:	e9 ed fe ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>
  4020a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4020ad:	00 00 00 
  4020b0:	ba 01 00 00 00       	mov    $0x1,%edx
  4020b5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4020ba:	e8 99 09 00 00       	callq  402a58 <signal>
  4020bf:	31 c0                	xor    %eax,%eax
  4020c1:	e9 cd fe ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>
  4020c6:	b8 04 00 00 00       	mov    $0x4,%eax
  4020cb:	e9 c3 fe ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>

00000000004020d0 <__mingw_init_ehandler>:
  4020d0:	41 54                	push   %r12
  4020d2:	55                   	push   %rbp
  4020d3:	57                   	push   %rdi
  4020d4:	56                   	push   %rsi
  4020d5:	53                   	push   %rbx
  4020d6:	48 83 ec 20          	sub    $0x20,%rsp
  4020da:	e8 91 07 00 00       	callq  402870 <_GetPEImageBase>
  4020df:	48 89 c5             	mov    %rax,%rbp
  4020e2:	8b 05 60 55 00 00    	mov    0x5560(%rip),%eax        # 407648 <was_here.95013>
  4020e8:	85 c0                	test   %eax,%eax
  4020ea:	75 25                	jne    402111 <__mingw_init_ehandler+0x41>
  4020ec:	48 85 ed             	test   %rbp,%rbp
  4020ef:	74 20                	je     402111 <__mingw_init_ehandler+0x41>
  4020f1:	48 8d 0d d8 21 00 00 	lea    0x21d8(%rip),%rcx        # 4042d0 <.rdata>
  4020f8:	c7 05 46 55 00 00 01 	movl   $0x1,0x5546(%rip)        # 407648 <was_here.95013>
  4020ff:	00 00 00 
  402102:	e8 a9 05 00 00       	callq  4026b0 <_FindPESectionByName>
  402107:	48 85 c0             	test   %rax,%rax
  40210a:	74 14                	je     402120 <__mingw_init_ehandler+0x50>
  40210c:	b8 01 00 00 00       	mov    $0x1,%eax
  402111:	48 83 c4 20          	add    $0x20,%rsp
  402115:	5b                   	pop    %rbx
  402116:	5e                   	pop    %rsi
  402117:	5f                   	pop    %rdi
  402118:	5d                   	pop    %rbp
  402119:	41 5c                	pop    %r12
  40211b:	c3                   	retq   
  40211c:	0f 1f 40 00          	nopl   0x0(%rax)
  402120:	48 8d 1d 39 56 00 00 	lea    0x5639(%rip),%rbx        # 407760 <emu_pdata>
  402127:	b9 30 00 00 00       	mov    $0x30,%ecx
  40212c:	31 f6                	xor    %esi,%esi
  40212e:	48 8d 15 2b 55 00 00 	lea    0x552b(%rip),%rdx        # 407660 <emu_xdata>
  402135:	48 89 df             	mov    %rbx,%rdi
  402138:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40213b:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 401f30 <__mingw_SEH_error_handler>
  402142:	b9 20 00 00 00       	mov    $0x20,%ecx
  402147:	48 89 d7             	mov    %rdx,%rdi
  40214a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40214d:	49 29 ec             	sub    %rbp,%r12
  402150:	48 89 d7             	mov    %rdx,%rdi
  402153:	eb 2e                	jmp    402183 <__mingw_init_ehandler+0xb3>
  402155:	c6 07 09             	movb   $0x9,(%rdi)
  402158:	48 83 c6 01          	add    $0x1,%rsi
  40215c:	48 83 c3 0c          	add    $0xc,%rbx
  402160:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  402164:	8b 48 0c             	mov    0xc(%rax),%ecx
  402167:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  40216a:	03 48 08             	add    0x8(%rax),%ecx
  40216d:	48 89 f8             	mov    %rdi,%rax
  402170:	48 83 c7 08          	add    $0x8,%rdi
  402174:	48 29 e8             	sub    %rbp,%rax
  402177:	89 43 fc             	mov    %eax,-0x4(%rbx)
  40217a:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  40217d:	48 83 fe 20          	cmp    $0x20,%rsi
  402181:	74 32                	je     4021b5 <__mingw_init_ehandler+0xe5>
  402183:	48 89 f1             	mov    %rsi,%rcx
  402186:	e8 75 06 00 00       	callq  402800 <_FindPESectionExec>
  40218b:	48 85 c0             	test   %rax,%rax
  40218e:	75 c5                	jne    402155 <__mingw_init_ehandler+0x85>
  402190:	48 85 f6             	test   %rsi,%rsi
  402193:	89 f2                	mov    %esi,%edx
  402195:	0f 84 71 ff ff ff    	je     40210c <__mingw_init_ehandler+0x3c>
  40219b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4021a0:	48 8d 0d b9 55 00 00 	lea    0x55b9(%rip),%rcx        # 407760 <emu_pdata>
  4021a7:	49 89 e8             	mov    %rbp,%r8
  4021aa:	ff 15 7c 60 00 00    	callq  *0x607c(%rip)        # 40822c <__imp_RtlAddFunctionTable>
  4021b0:	e9 57 ff ff ff       	jmpq   40210c <__mingw_init_ehandler+0x3c>
  4021b5:	ba 20 00 00 00       	mov    $0x20,%edx
  4021ba:	eb e4                	jmp    4021a0 <__mingw_init_ehandler+0xd0>
  4021bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004021c0 <_gnu_exception_handler>:
  4021c0:	53                   	push   %rbx
  4021c1:	48 83 ec 20          	sub    $0x20,%rsp
  4021c5:	48 8b 11             	mov    (%rcx),%rdx
  4021c8:	8b 02                	mov    (%rdx),%eax
  4021ca:	48 89 cb             	mov    %rcx,%rbx
  4021cd:	89 c1                	mov    %eax,%ecx
  4021cf:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4021d5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4021db:	0f 84 bf 00 00 00    	je     4022a0 <_gnu_exception_handler+0xe0>
  4021e1:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4021e6:	77 68                	ja     402250 <_gnu_exception_handler+0x90>
  4021e8:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4021ed:	73 7c                	jae    40226b <_gnu_exception_handler+0xab>
  4021ef:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4021f4:	0f 84 b0 00 00 00    	je     4022aa <_gnu_exception_handler+0xea>
  4021fa:	0f 87 f4 00 00 00    	ja     4022f4 <_gnu_exception_handler+0x134>
  402200:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402205:	0f 84 9f 00 00 00    	je     4022aa <_gnu_exception_handler+0xea>
  40220b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402210:	75 1f                	jne    402231 <_gnu_exception_handler+0x71>
  402212:	31 d2                	xor    %edx,%edx
  402214:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402219:	e8 3a 08 00 00       	callq  402a58 <signal>
  40221e:	48 83 f8 01          	cmp    $0x1,%rax
  402222:	0f 84 51 01 00 00    	je     402379 <_gnu_exception_handler+0x1b9>
  402228:	48 85 c0             	test   %rax,%rax
  40222b:	0f 85 0f 01 00 00    	jne    402340 <_gnu_exception_handler+0x180>
  402231:	48 8b 05 08 54 00 00 	mov    0x5408(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  402238:	48 85 c0             	test   %rax,%rax
  40223b:	0f 84 10 01 00 00    	je     402351 <_gnu_exception_handler+0x191>
  402241:	48 89 d9             	mov    %rbx,%rcx
  402244:	48 83 c4 20          	add    $0x20,%rsp
  402248:	5b                   	pop    %rbx
  402249:	48 ff e0             	rex.W jmpq *%rax
  40224c:	0f 1f 40 00          	nopl   0x0(%rax)
  402250:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402255:	0f 84 b5 00 00 00    	je     402310 <_gnu_exception_handler+0x150>
  40225b:	77 58                	ja     4022b5 <_gnu_exception_handler+0xf5>
  40225d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402262:	74 46                	je     4022aa <_gnu_exception_handler+0xea>
  402264:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  402269:	75 c6                	jne    402231 <_gnu_exception_handler+0x71>
  40226b:	31 d2                	xor    %edx,%edx
  40226d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402272:	e8 e1 07 00 00       	callq  402a58 <signal>
  402277:	48 83 f8 01          	cmp    $0x1,%rax
  40227b:	0f 84 df 00 00 00    	je     402360 <_gnu_exception_handler+0x1a0>
  402281:	48 85 c0             	test   %rax,%rax
  402284:	74 ab                	je     402231 <_gnu_exception_handler+0x71>
  402286:	b9 08 00 00 00       	mov    $0x8,%ecx
  40228b:	ff d0                	callq  *%rax
  40228d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402292:	48 83 c4 20          	add    $0x20,%rsp
  402296:	5b                   	pop    %rbx
  402297:	c3                   	retq   
  402298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40229f:	00 
  4022a0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4022a4:	0f 85 37 ff ff ff    	jne    4021e1 <_gnu_exception_handler+0x21>
  4022aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022af:	48 83 c4 20          	add    $0x20,%rsp
  4022b3:	5b                   	pop    %rbx
  4022b4:	c3                   	retq   
  4022b5:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4022ba:	74 ee                	je     4022aa <_gnu_exception_handler+0xea>
  4022bc:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4022c1:	0f 85 6a ff ff ff    	jne    402231 <_gnu_exception_handler+0x71>
  4022c7:	31 d2                	xor    %edx,%edx
  4022c9:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022ce:	e8 85 07 00 00       	callq  402a58 <signal>
  4022d3:	48 83 f8 01          	cmp    $0x1,%rax
  4022d7:	0f 84 b3 00 00 00    	je     402390 <_gnu_exception_handler+0x1d0>
  4022dd:	48 85 c0             	test   %rax,%rax
  4022e0:	0f 84 4b ff ff ff    	je     402231 <_gnu_exception_handler+0x71>
  4022e6:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022eb:	ff d0                	callq  *%rax
  4022ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022f2:	eb 9e                	jmp    402292 <_gnu_exception_handler+0xd2>
  4022f4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4022f9:	74 cc                	je     4022c7 <_gnu_exception_handler+0x107>
  4022fb:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402300:	0f 85 2b ff ff ff    	jne    402231 <_gnu_exception_handler+0x71>
  402306:	eb a2                	jmp    4022aa <_gnu_exception_handler+0xea>
  402308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40230f:	00 
  402310:	31 d2                	xor    %edx,%edx
  402312:	b9 08 00 00 00       	mov    $0x8,%ecx
  402317:	e8 3c 07 00 00       	callq  402a58 <signal>
  40231c:	48 83 f8 01          	cmp    $0x1,%rax
  402320:	0f 85 5b ff ff ff    	jne    402281 <_gnu_exception_handler+0xc1>
  402326:	ba 01 00 00 00       	mov    $0x1,%edx
  40232b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402330:	e8 23 07 00 00       	callq  402a58 <signal>
  402335:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40233a:	e9 53 ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  40233f:	90                   	nop
  402340:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402345:	ff d0                	callq  *%rax
  402347:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40234c:	e9 41 ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  402351:	31 c0                	xor    %eax,%eax
  402353:	e9 3a ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  402358:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40235f:	00 
  402360:	ba 01 00 00 00       	mov    $0x1,%edx
  402365:	b9 08 00 00 00       	mov    $0x8,%ecx
  40236a:	e8 e9 06 00 00       	callq  402a58 <signal>
  40236f:	e8 fc f6 ff ff       	callq  401a70 <_fpreset>
  402374:	e9 31 ff ff ff       	jmpq   4022aa <_gnu_exception_handler+0xea>
  402379:	ba 01 00 00 00       	mov    $0x1,%edx
  40237e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402383:	e8 d0 06 00 00       	callq  402a58 <signal>
  402388:	83 c8 ff             	or     $0xffffffff,%eax
  40238b:	e9 02 ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  402390:	ba 01 00 00 00       	mov    $0x1,%edx
  402395:	b9 04 00 00 00       	mov    $0x4,%ecx
  40239a:	e8 b9 06 00 00       	callq  402a58 <signal>
  40239f:	83 c8 ff             	or     $0xffffffff,%eax
  4023a2:	e9 eb fe ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  4023a7:	90                   	nop
  4023a8:	90                   	nop
  4023a9:	90                   	nop
  4023aa:	90                   	nop
  4023ab:	90                   	nop
  4023ac:	90                   	nop
  4023ad:	90                   	nop
  4023ae:	90                   	nop
  4023af:	90                   	nop

00000000004023b0 <__mingwthr_run_key_dtors.part.0>:
  4023b0:	55                   	push   %rbp
  4023b1:	57                   	push   %rdi
  4023b2:	56                   	push   %rsi
  4023b3:	53                   	push   %rbx
  4023b4:	48 83 ec 28          	sub    $0x28,%rsp
  4023b8:	48 8d 0d 41 55 00 00 	lea    0x5541(%rip),%rcx        # 407900 <__mingwthr_cs>
  4023bf:	ff 15 0f 5e 00 00    	callq  *0x5e0f(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  4023c5:	48 8b 1d 14 55 00 00 	mov    0x5514(%rip),%rbx        # 4078e0 <key_dtor_list>
  4023cc:	48 85 db             	test   %rbx,%rbx
  4023cf:	74 33                	je     402404 <__mingwthr_run_key_dtors.part.0+0x54>
  4023d1:	48 8b 2d 8c 5e 00 00 	mov    0x5e8c(%rip),%rbp        # 408264 <__imp_TlsGetValue>
  4023d8:	48 8b 3d 15 5e 00 00 	mov    0x5e15(%rip),%rdi        # 4081f4 <__imp_GetLastError>
  4023df:	90                   	nop
  4023e0:	8b 0b                	mov    (%rbx),%ecx
  4023e2:	ff d5                	callq  *%rbp
  4023e4:	48 89 c6             	mov    %rax,%rsi
  4023e7:	ff d7                	callq  *%rdi
  4023e9:	85 c0                	test   %eax,%eax
  4023eb:	75 0e                	jne    4023fb <__mingwthr_run_key_dtors.part.0+0x4b>
  4023ed:	48 85 f6             	test   %rsi,%rsi
  4023f0:	74 09                	je     4023fb <__mingwthr_run_key_dtors.part.0+0x4b>
  4023f2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4023f6:	48 89 f1             	mov    %rsi,%rcx
  4023f9:	ff d0                	callq  *%rax
  4023fb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4023ff:	48 85 db             	test   %rbx,%rbx
  402402:	75 dc                	jne    4023e0 <__mingwthr_run_key_dtors.part.0+0x30>
  402404:	48 8d 0d f5 54 00 00 	lea    0x54f5(%rip),%rcx        # 407900 <__mingwthr_cs>
  40240b:	48 83 c4 28          	add    $0x28,%rsp
  40240f:	5b                   	pop    %rbx
  402410:	5e                   	pop    %rsi
  402411:	5f                   	pop    %rdi
  402412:	5d                   	pop    %rbp
  402413:	48 ff 25 02 5e 00 00 	rex.W jmpq *0x5e02(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40241a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402420 <___w64_mingwthr_add_key_dtor>:
  402420:	55                   	push   %rbp
  402421:	57                   	push   %rdi
  402422:	56                   	push   %rsi
  402423:	53                   	push   %rbx
  402424:	48 83 ec 28          	sub    $0x28,%rsp
  402428:	8b 05 ba 54 00 00    	mov    0x54ba(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40242e:	31 f6                	xor    %esi,%esi
  402430:	85 c0                	test   %eax,%eax
  402432:	89 cd                	mov    %ecx,%ebp
  402434:	48 89 d7             	mov    %rdx,%rdi
  402437:	75 0b                	jne    402444 <___w64_mingwthr_add_key_dtor+0x24>
  402439:	89 f0                	mov    %esi,%eax
  40243b:	48 83 c4 28          	add    $0x28,%rsp
  40243f:	5b                   	pop    %rbx
  402440:	5e                   	pop    %rsi
  402441:	5f                   	pop    %rdi
  402442:	5d                   	pop    %rbp
  402443:	c3                   	retq   
  402444:	ba 18 00 00 00       	mov    $0x18,%edx
  402449:	b9 01 00 00 00       	mov    $0x1,%ecx
  40244e:	e8 3d 06 00 00       	callq  402a90 <calloc>
  402453:	48 85 c0             	test   %rax,%rax
  402456:	48 89 c3             	mov    %rax,%rbx
  402459:	74 3d                	je     402498 <___w64_mingwthr_add_key_dtor+0x78>
  40245b:	89 28                	mov    %ebp,(%rax)
  40245d:	48 8d 0d 9c 54 00 00 	lea    0x549c(%rip),%rcx        # 407900 <__mingwthr_cs>
  402464:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402468:	ff 15 66 5d 00 00    	callq  *0x5d66(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  40246e:	48 8b 05 6b 54 00 00 	mov    0x546b(%rip),%rax        # 4078e0 <key_dtor_list>
  402475:	48 8d 0d 84 54 00 00 	lea    0x5484(%rip),%rcx        # 407900 <__mingwthr_cs>
  40247c:	48 89 1d 5d 54 00 00 	mov    %rbx,0x545d(%rip)        # 4078e0 <key_dtor_list>
  402483:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402487:	ff 15 8f 5d 00 00    	callq  *0x5d8f(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40248d:	89 f0                	mov    %esi,%eax
  40248f:	48 83 c4 28          	add    $0x28,%rsp
  402493:	5b                   	pop    %rbx
  402494:	5e                   	pop    %rsi
  402495:	5f                   	pop    %rdi
  402496:	5d                   	pop    %rbp
  402497:	c3                   	retq   
  402498:	be ff ff ff ff       	mov    $0xffffffff,%esi
  40249d:	eb 9a                	jmp    402439 <___w64_mingwthr_add_key_dtor+0x19>
  40249f:	90                   	nop

00000000004024a0 <___w64_mingwthr_remove_key_dtor>:
  4024a0:	53                   	push   %rbx
  4024a1:	48 83 ec 20          	sub    $0x20,%rsp
  4024a5:	8b 05 3d 54 00 00    	mov    0x543d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4024ab:	85 c0                	test   %eax,%eax
  4024ad:	89 cb                	mov    %ecx,%ebx
  4024af:	75 0f                	jne    4024c0 <___w64_mingwthr_remove_key_dtor+0x20>
  4024b1:	31 c0                	xor    %eax,%eax
  4024b3:	48 83 c4 20          	add    $0x20,%rsp
  4024b7:	5b                   	pop    %rbx
  4024b8:	c3                   	retq   
  4024b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4024c0:	48 8d 0d 39 54 00 00 	lea    0x5439(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024c7:	ff 15 07 5d 00 00    	callq  *0x5d07(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  4024cd:	48 8b 05 0c 54 00 00 	mov    0x540c(%rip),%rax        # 4078e0 <key_dtor_list>
  4024d4:	48 85 c0             	test   %rax,%rax
  4024d7:	74 1a                	je     4024f3 <___w64_mingwthr_remove_key_dtor+0x53>
  4024d9:	8b 10                	mov    (%rax),%edx
  4024db:	39 d3                	cmp    %edx,%ebx
  4024dd:	75 0b                	jne    4024ea <___w64_mingwthr_remove_key_dtor+0x4a>
  4024df:	eb 4f                	jmp    402530 <___w64_mingwthr_remove_key_dtor+0x90>
  4024e1:	8b 11                	mov    (%rcx),%edx
  4024e3:	39 da                	cmp    %ebx,%edx
  4024e5:	74 29                	je     402510 <___w64_mingwthr_remove_key_dtor+0x70>
  4024e7:	48 89 c8             	mov    %rcx,%rax
  4024ea:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4024ee:	48 85 c9             	test   %rcx,%rcx
  4024f1:	75 ee                	jne    4024e1 <___w64_mingwthr_remove_key_dtor+0x41>
  4024f3:	48 8d 0d 06 54 00 00 	lea    0x5406(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024fa:	ff 15 1c 5d 00 00    	callq  *0x5d1c(%rip)        # 40821c <__imp_LeaveCriticalSection>
  402500:	31 c0                	xor    %eax,%eax
  402502:	48 83 c4 20          	add    $0x20,%rsp
  402506:	5b                   	pop    %rbx
  402507:	c3                   	retq   
  402508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40250f:	00 
  402510:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402514:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402518:	e8 5b 05 00 00       	callq  402a78 <free>
  40251d:	48 8d 0d dc 53 00 00 	lea    0x53dc(%rip),%rcx        # 407900 <__mingwthr_cs>
  402524:	ff 15 f2 5c 00 00    	callq  *0x5cf2(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40252a:	eb d4                	jmp    402500 <___w64_mingwthr_remove_key_dtor+0x60>
  40252c:	0f 1f 40 00          	nopl   0x0(%rax)
  402530:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402534:	48 89 c1             	mov    %rax,%rcx
  402537:	48 89 15 a2 53 00 00 	mov    %rdx,0x53a2(%rip)        # 4078e0 <key_dtor_list>
  40253e:	eb d8                	jmp    402518 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402540 <__mingw_TLScallback>:
  402540:	53                   	push   %rbx
  402541:	48 83 ec 20          	sub    $0x20,%rsp
  402545:	83 fa 01             	cmp    $0x1,%edx
  402548:	0f 84 92 00 00 00    	je     4025e0 <__mingw_TLScallback+0xa0>
  40254e:	72 30                	jb     402580 <__mingw_TLScallback+0x40>
  402550:	83 fa 02             	cmp    $0x2,%edx
  402553:	74 1b                	je     402570 <__mingw_TLScallback+0x30>
  402555:	83 fa 03             	cmp    $0x3,%edx
  402558:	75 1b                	jne    402575 <__mingw_TLScallback+0x35>
  40255a:	8b 05 88 53 00 00    	mov    0x5388(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402560:	85 c0                	test   %eax,%eax
  402562:	74 11                	je     402575 <__mingw_TLScallback+0x35>
  402564:	e8 47 fe ff ff       	callq  4023b0 <__mingwthr_run_key_dtors.part.0>
  402569:	eb 0a                	jmp    402575 <__mingw_TLScallback+0x35>
  40256b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402570:	e8 fb f4 ff ff       	callq  401a70 <_fpreset>
  402575:	b8 01 00 00 00       	mov    $0x1,%eax
  40257a:	48 83 c4 20          	add    $0x20,%rsp
  40257e:	5b                   	pop    %rbx
  40257f:	c3                   	retq   
  402580:	8b 05 62 53 00 00    	mov    0x5362(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402586:	85 c0                	test   %eax,%eax
  402588:	0f 85 82 00 00 00    	jne    402610 <__mingw_TLScallback+0xd0>
  40258e:	8b 05 54 53 00 00    	mov    0x5354(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402594:	83 f8 01             	cmp    $0x1,%eax
  402597:	75 dc                	jne    402575 <__mingw_TLScallback+0x35>
  402599:	48 8b 0d 40 53 00 00 	mov    0x5340(%rip),%rcx        # 4078e0 <key_dtor_list>
  4025a0:	48 85 c9             	test   %rcx,%rcx
  4025a3:	74 11                	je     4025b6 <__mingw_TLScallback+0x76>
  4025a5:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  4025a9:	e8 ca 04 00 00       	callq  402a78 <free>
  4025ae:	48 85 db             	test   %rbx,%rbx
  4025b1:	48 89 d9             	mov    %rbx,%rcx
  4025b4:	75 ef                	jne    4025a5 <__mingw_TLScallback+0x65>
  4025b6:	48 8d 0d 43 53 00 00 	lea    0x5343(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025bd:	48 c7 05 18 53 00 00 	movq   $0x0,0x5318(%rip)        # 4078e0 <key_dtor_list>
  4025c4:	00 00 00 00 
  4025c8:	c7 05 16 53 00 00 00 	movl   $0x0,0x5316(%rip)        # 4078e8 <__mingwthr_cs_init>
  4025cf:	00 00 00 
  4025d2:	ff 15 f4 5b 00 00    	callq  *0x5bf4(%rip)        # 4081cc <__IAT_start__>
  4025d8:	eb 9b                	jmp    402575 <__mingw_TLScallback+0x35>
  4025da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4025e0:	8b 05 02 53 00 00    	mov    0x5302(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025e6:	85 c0                	test   %eax,%eax
  4025e8:	74 16                	je     402600 <__mingw_TLScallback+0xc0>
  4025ea:	c7 05 f4 52 00 00 01 	movl   $0x1,0x52f4(%rip)        # 4078e8 <__mingwthr_cs_init>
  4025f1:	00 00 00 
  4025f4:	b8 01 00 00 00       	mov    $0x1,%eax
  4025f9:	48 83 c4 20          	add    $0x20,%rsp
  4025fd:	5b                   	pop    %rbx
  4025fe:	c3                   	retq   
  4025ff:	90                   	nop
  402600:	48 8d 0d f9 52 00 00 	lea    0x52f9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402607:	ff 15 07 5c 00 00    	callq  *0x5c07(%rip)        # 408214 <__imp_InitializeCriticalSection>
  40260d:	eb db                	jmp    4025ea <__mingw_TLScallback+0xaa>
  40260f:	90                   	nop
  402610:	e8 9b fd ff ff       	callq  4023b0 <__mingwthr_run_key_dtors.part.0>
  402615:	e9 74 ff ff ff       	jmpq   40258e <__mingw_TLScallback+0x4e>
  40261a:	90                   	nop
  40261b:	90                   	nop
  40261c:	90                   	nop
  40261d:	90                   	nop
  40261e:	90                   	nop
  40261f:	90                   	nop

0000000000402620 <_ValidateImageBase.part.0>:
  402620:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402624:	48 01 c1             	add    %rax,%rcx
  402627:	31 c0                	xor    %eax,%eax
  402629:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40262f:	74 01                	je     402632 <_ValidateImageBase.part.0+0x12>
  402631:	c3                   	retq   
  402632:	31 c0                	xor    %eax,%eax
  402634:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40263a:	0f 94 c0             	sete   %al
  40263d:	c3                   	retq   
  40263e:	66 90                	xchg   %ax,%ax

0000000000402640 <_ValidateImageBase>:
  402640:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402645:	74 09                	je     402650 <_ValidateImageBase+0x10>
  402647:	31 c0                	xor    %eax,%eax
  402649:	c3                   	retq   
  40264a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402650:	eb ce                	jmp    402620 <_ValidateImageBase.part.0>
  402652:	0f 1f 40 00          	nopl   0x0(%rax)
  402656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40265d:	00 00 00 

0000000000402660 <_FindPESection>:
  402660:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402664:	48 01 c1             	add    %rax,%rcx
  402667:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40266b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402670:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402674:	85 c9                	test   %ecx,%ecx
  402676:	74 29                	je     4026a1 <_FindPESection+0x41>
  402678:	83 e9 01             	sub    $0x1,%ecx
  40267b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40267f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402684:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402688:	49 39 d0             	cmp    %rdx,%r8
  40268b:	4c 89 c1             	mov    %r8,%rcx
  40268e:	77 08                	ja     402698 <_FindPESection+0x38>
  402690:	03 48 08             	add    0x8(%rax),%ecx
  402693:	48 39 d1             	cmp    %rdx,%rcx
  402696:	77 0b                	ja     4026a3 <_FindPESection+0x43>
  402698:	48 83 c0 28          	add    $0x28,%rax
  40269c:	4c 39 c8             	cmp    %r9,%rax
  40269f:	75 e3                	jne    402684 <_FindPESection+0x24>
  4026a1:	31 c0                	xor    %eax,%eax
  4026a3:	c3                   	retq   
  4026a4:	66 90                	xchg   %ax,%ax
  4026a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4026ad:	00 00 00 

00000000004026b0 <_FindPESectionByName>:
  4026b0:	57                   	push   %rdi
  4026b1:	56                   	push   %rsi
  4026b2:	53                   	push   %rbx
  4026b3:	48 83 ec 20          	sub    $0x20,%rsp
  4026b7:	48 89 ce             	mov    %rcx,%rsi
  4026ba:	e8 91 03 00 00       	callq  402a50 <strlen>
  4026bf:	48 83 f8 08          	cmp    $0x8,%rax
  4026c3:	77 6b                	ja     402730 <_FindPESectionByName+0x80>
  4026c5:	48 8b 15 74 1c 00 00 	mov    0x1c74(%rip),%rdx        # 404340 <.refptr.__image_base__>
  4026cc:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4026d1:	75 5d                	jne    402730 <_FindPESectionByName+0x80>
  4026d3:	48 89 d1             	mov    %rdx,%rcx
  4026d6:	e8 45 ff ff ff       	callq  402620 <_ValidateImageBase.part.0>
  4026db:	85 c0                	test   %eax,%eax
  4026dd:	74 51                	je     402730 <_FindPESectionByName+0x80>
  4026df:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  4026e3:	48 01 d1             	add    %rdx,%rcx
  4026e6:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4026ea:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  4026ef:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4026f3:	85 c0                	test   %eax,%eax
  4026f5:	74 39                	je     402730 <_FindPESectionByName+0x80>
  4026f7:	83 e8 01             	sub    $0x1,%eax
  4026fa:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4026fe:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402703:	eb 09                	jmp    40270e <_FindPESectionByName+0x5e>
  402705:	48 83 c3 28          	add    $0x28,%rbx
  402709:	48 39 fb             	cmp    %rdi,%rbx
  40270c:	74 22                	je     402730 <_FindPESectionByName+0x80>
  40270e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402714:	48 89 f2             	mov    %rsi,%rdx
  402717:	48 89 d9             	mov    %rbx,%rcx
  40271a:	e8 29 03 00 00       	callq  402a48 <strncmp>
  40271f:	85 c0                	test   %eax,%eax
  402721:	75 e2                	jne    402705 <_FindPESectionByName+0x55>
  402723:	48 89 d8             	mov    %rbx,%rax
  402726:	48 83 c4 20          	add    $0x20,%rsp
  40272a:	5b                   	pop    %rbx
  40272b:	5e                   	pop    %rsi
  40272c:	5f                   	pop    %rdi
  40272d:	c3                   	retq   
  40272e:	66 90                	xchg   %ax,%ax
  402730:	31 db                	xor    %ebx,%ebx
  402732:	48 89 d8             	mov    %rbx,%rax
  402735:	48 83 c4 20          	add    $0x20,%rsp
  402739:	5b                   	pop    %rbx
  40273a:	5e                   	pop    %rsi
  40273b:	5f                   	pop    %rdi
  40273c:	c3                   	retq   
  40273d:	0f 1f 00             	nopl   (%rax)

0000000000402740 <__mingw_GetSectionForAddress>:
  402740:	48 83 ec 28          	sub    $0x28,%rsp
  402744:	4c 8b 05 f5 1b 00 00 	mov    0x1bf5(%rip),%r8        # 404340 <.refptr.__image_base__>
  40274b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402751:	48 89 ca             	mov    %rcx,%rdx
  402754:	75 57                	jne    4027ad <__mingw_GetSectionForAddress+0x6d>
  402756:	4c 89 c1             	mov    %r8,%rcx
  402759:	e8 c2 fe ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40275e:	85 c0                	test   %eax,%eax
  402760:	74 4b                	je     4027ad <__mingw_GetSectionForAddress+0x6d>
  402762:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402766:	48 89 d1             	mov    %rdx,%rcx
  402769:	4c 29 c1             	sub    %r8,%rcx
  40276c:	49 01 c0             	add    %rax,%r8
  40276f:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402774:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402779:	85 d2                	test   %edx,%edx
  40277b:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402780:	74 2b                	je     4027ad <__mingw_GetSectionForAddress+0x6d>
  402782:	83 ea 01             	sub    $0x1,%edx
  402785:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402789:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  40278e:	66 90                	xchg   %ax,%ax
  402790:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402794:	4c 39 c1             	cmp    %r8,%rcx
  402797:	4c 89 c2             	mov    %r8,%rdx
  40279a:	72 08                	jb     4027a4 <__mingw_GetSectionForAddress+0x64>
  40279c:	03 50 08             	add    0x8(%rax),%edx
  40279f:	48 39 d1             	cmp    %rdx,%rcx
  4027a2:	72 0b                	jb     4027af <__mingw_GetSectionForAddress+0x6f>
  4027a4:	48 83 c0 28          	add    $0x28,%rax
  4027a8:	4c 39 c8             	cmp    %r9,%rax
  4027ab:	75 e3                	jne    402790 <__mingw_GetSectionForAddress+0x50>
  4027ad:	31 c0                	xor    %eax,%eax
  4027af:	48 83 c4 28          	add    $0x28,%rsp
  4027b3:	c3                   	retq   
  4027b4:	66 90                	xchg   %ax,%ax
  4027b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027bd:	00 00 00 

00000000004027c0 <__mingw_GetSectionCount>:
  4027c0:	48 83 ec 28          	sub    $0x28,%rsp
  4027c4:	48 8b 15 75 1b 00 00 	mov    0x1b75(%rip),%rdx        # 404340 <.refptr.__image_base__>
  4027cb:	45 31 c0             	xor    %r8d,%r8d
  4027ce:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4027d3:	74 0b                	je     4027e0 <__mingw_GetSectionCount+0x20>
  4027d5:	44 89 c0             	mov    %r8d,%eax
  4027d8:	48 83 c4 28          	add    $0x28,%rsp
  4027dc:	c3                   	retq   
  4027dd:	0f 1f 00             	nopl   (%rax)
  4027e0:	48 89 d1             	mov    %rdx,%rcx
  4027e3:	e8 38 fe ff ff       	callq  402620 <_ValidateImageBase.part.0>
  4027e8:	85 c0                	test   %eax,%eax
  4027ea:	74 e9                	je     4027d5 <__mingw_GetSectionCount+0x15>
  4027ec:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  4027f0:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  4027f6:	44 89 c0             	mov    %r8d,%eax
  4027f9:	48 83 c4 28          	add    $0x28,%rsp
  4027fd:	c3                   	retq   
  4027fe:	66 90                	xchg   %ax,%ax

0000000000402800 <_FindPESectionExec>:
  402800:	48 83 ec 28          	sub    $0x28,%rsp
  402804:	4c 8b 05 35 1b 00 00 	mov    0x1b35(%rip),%r8        # 404340 <.refptr.__image_base__>
  40280b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402811:	48 89 ca             	mov    %rcx,%rdx
  402814:	75 52                	jne    402868 <_FindPESectionExec+0x68>
  402816:	4c 89 c1             	mov    %r8,%rcx
  402819:	e8 02 fe ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40281e:	85 c0                	test   %eax,%eax
  402820:	74 46                	je     402868 <_FindPESectionExec+0x68>
  402822:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  402826:	4c 01 c1             	add    %r8,%rcx
  402829:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40282d:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402832:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402836:	85 c9                	test   %ecx,%ecx
  402838:	74 2e                	je     402868 <_FindPESectionExec+0x68>
  40283a:	83 e9 01             	sub    $0x1,%ecx
  40283d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402841:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  402846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40284d:	00 00 00 
  402850:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  402854:	74 09                	je     40285f <_FindPESectionExec+0x5f>
  402856:	48 85 d2             	test   %rdx,%rdx
  402859:	74 0f                	je     40286a <_FindPESectionExec+0x6a>
  40285b:	48 83 ea 01          	sub    $0x1,%rdx
  40285f:	48 83 c0 28          	add    $0x28,%rax
  402863:	48 39 c8             	cmp    %rcx,%rax
  402866:	75 e8                	jne    402850 <_FindPESectionExec+0x50>
  402868:	31 c0                	xor    %eax,%eax
  40286a:	48 83 c4 28          	add    $0x28,%rsp
  40286e:	c3                   	retq   
  40286f:	90                   	nop

0000000000402870 <_GetPEImageBase>:
  402870:	48 83 ec 28          	sub    $0x28,%rsp
  402874:	48 8b 15 c5 1a 00 00 	mov    0x1ac5(%rip),%rdx        # 404340 <.refptr.__image_base__>
  40287b:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402880:	75 1e                	jne    4028a0 <_GetPEImageBase+0x30>
  402882:	48 89 d1             	mov    %rdx,%rcx
  402885:	e8 96 fd ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40288a:	85 c0                	test   %eax,%eax
  40288c:	b8 00 00 00 00       	mov    $0x0,%eax
  402891:	48 0f 45 c2          	cmovne %rdx,%rax
  402895:	48 83 c4 28          	add    $0x28,%rsp
  402899:	c3                   	retq   
  40289a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4028a0:	31 c0                	xor    %eax,%eax
  4028a2:	48 83 c4 28          	add    $0x28,%rsp
  4028a6:	c3                   	retq   
  4028a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4028ae:	00 00 

00000000004028b0 <_IsNonwritableInCurrentImage>:
  4028b0:	48 83 ec 28          	sub    $0x28,%rsp
  4028b4:	4c 8b 05 85 1a 00 00 	mov    0x1a85(%rip),%r8        # 404340 <.refptr.__image_base__>
  4028bb:	31 c0                	xor    %eax,%eax
  4028bd:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4028c3:	48 89 ca             	mov    %rcx,%rdx
  4028c6:	74 08                	je     4028d0 <_IsNonwritableInCurrentImage+0x20>
  4028c8:	48 83 c4 28          	add    $0x28,%rsp
  4028cc:	c3                   	retq   
  4028cd:	0f 1f 00             	nopl   (%rax)
  4028d0:	4c 89 c1             	mov    %r8,%rcx
  4028d3:	e8 48 fd ff ff       	callq  402620 <_ValidateImageBase.part.0>
  4028d8:	85 c0                	test   %eax,%eax
  4028da:	74 ec                	je     4028c8 <_IsNonwritableInCurrentImage+0x18>
  4028dc:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  4028e0:	48 89 d1             	mov    %rdx,%rcx
  4028e3:	4c 29 c1             	sub    %r8,%rcx
  4028e6:	49 01 c0             	add    %rax,%r8
  4028e9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4028ee:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4028f3:	85 d2                	test   %edx,%edx
  4028f5:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4028fa:	74 31                	je     40292d <_IsNonwritableInCurrentImage+0x7d>
  4028fc:	83 ea 01             	sub    $0x1,%edx
  4028ff:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402903:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402908:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40290f:	00 
  402910:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402914:	4c 39 c1             	cmp    %r8,%rcx
  402917:	4c 89 c2             	mov    %r8,%rdx
  40291a:	72 08                	jb     402924 <_IsNonwritableInCurrentImage+0x74>
  40291c:	03 50 08             	add    0x8(%rax),%edx
  40291f:	48 39 d1             	cmp    %rdx,%rcx
  402922:	72 10                	jb     402934 <_IsNonwritableInCurrentImage+0x84>
  402924:	48 83 c0 28          	add    $0x28,%rax
  402928:	4c 39 c8             	cmp    %r9,%rax
  40292b:	75 e3                	jne    402910 <_IsNonwritableInCurrentImage+0x60>
  40292d:	31 c0                	xor    %eax,%eax
  40292f:	48 83 c4 28          	add    $0x28,%rsp
  402933:	c3                   	retq   
  402934:	8b 40 24             	mov    0x24(%rax),%eax
  402937:	f7 d0                	not    %eax
  402939:	c1 e8 1f             	shr    $0x1f,%eax
  40293c:	48 83 c4 28          	add    $0x28,%rsp
  402940:	c3                   	retq   
  402941:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40294d:	00 00 00 

0000000000402950 <__mingw_enum_import_library_names>:
  402950:	48 83 ec 28          	sub    $0x28,%rsp
  402954:	4c 8b 1d e5 19 00 00 	mov    0x19e5(%rip),%r11        # 404340 <.refptr.__image_base__>
  40295b:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402961:	41 89 c9             	mov    %ecx,%r9d
  402964:	75 58                	jne    4029be <__mingw_enum_import_library_names+0x6e>
  402966:	4c 89 d9             	mov    %r11,%rcx
  402969:	e8 b2 fc ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40296e:	85 c0                	test   %eax,%eax
  402970:	74 4c                	je     4029be <__mingw_enum_import_library_names+0x6e>
  402972:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  402976:	4c 01 d8             	add    %r11,%rax
  402979:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  40297f:	85 d2                	test   %edx,%edx
  402981:	74 3b                	je     4029be <__mingw_enum_import_library_names+0x6e>
  402983:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  402987:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  40298c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  402990:	85 c0                	test   %eax,%eax
  402992:	74 2a                	je     4029be <__mingw_enum_import_library_names+0x6e>
  402994:	83 e8 01             	sub    $0x1,%eax
  402997:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40299b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  4029a0:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  4029a4:	4c 39 d2             	cmp    %r10,%rdx
  4029a7:	4d 89 d0             	mov    %r10,%r8
  4029aa:	72 09                	jb     4029b5 <__mingw_enum_import_library_names+0x65>
  4029ac:	44 03 41 08          	add    0x8(%rcx),%r8d
  4029b0:	4c 39 c2             	cmp    %r8,%rdx
  4029b3:	72 10                	jb     4029c5 <__mingw_enum_import_library_names+0x75>
  4029b5:	48 83 c1 28          	add    $0x28,%rcx
  4029b9:	48 39 c1             	cmp    %rax,%rcx
  4029bc:	75 e2                	jne    4029a0 <__mingw_enum_import_library_names+0x50>
  4029be:	31 c0                	xor    %eax,%eax
  4029c0:	48 83 c4 28          	add    $0x28,%rsp
  4029c4:	c3                   	retq   
  4029c5:	4c 01 da             	add    %r11,%rdx
  4029c8:	75 0e                	jne    4029d8 <__mingw_enum_import_library_names+0x88>
  4029ca:	eb f2                	jmp    4029be <__mingw_enum_import_library_names+0x6e>
  4029cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4029d0:	41 83 e9 01          	sub    $0x1,%r9d
  4029d4:	48 83 c2 14          	add    $0x14,%rdx
  4029d8:	8b 4a 04             	mov    0x4(%rdx),%ecx
  4029db:	85 c9                	test   %ecx,%ecx
  4029dd:	75 07                	jne    4029e6 <__mingw_enum_import_library_names+0x96>
  4029df:	8b 42 0c             	mov    0xc(%rdx),%eax
  4029e2:	85 c0                	test   %eax,%eax
  4029e4:	74 d8                	je     4029be <__mingw_enum_import_library_names+0x6e>
  4029e6:	45 85 c9             	test   %r9d,%r9d
  4029e9:	7f e5                	jg     4029d0 <__mingw_enum_import_library_names+0x80>
  4029eb:	8b 42 0c             	mov    0xc(%rdx),%eax
  4029ee:	4c 01 d8             	add    %r11,%rax
  4029f1:	48 83 c4 28          	add    $0x28,%rsp
  4029f5:	c3                   	retq   
  4029f6:	90                   	nop
  4029f7:	90                   	nop
  4029f8:	90                   	nop
  4029f9:	90                   	nop
  4029fa:	90                   	nop
  4029fb:	90                   	nop
  4029fc:	90                   	nop
  4029fd:	90                   	nop
  4029fe:	90                   	nop
  4029ff:	90                   	nop

0000000000402a00 <___chkstk_ms>:
  402a00:	51                   	push   %rcx
  402a01:	50                   	push   %rax
  402a02:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a08:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402a0d:	72 19                	jb     402a28 <___chkstk_ms+0x28>
  402a0f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402a16:	48 83 09 00          	orq    $0x0,(%rcx)
  402a1a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402a20:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a26:	77 e7                	ja     402a0f <___chkstk_ms+0xf>
  402a28:	48 29 c1             	sub    %rax,%rcx
  402a2b:	48 83 09 00          	orq    $0x0,(%rcx)
  402a2f:	58                   	pop    %rax
  402a30:	59                   	pop    %rcx
  402a31:	c3                   	retq   
  402a32:	90                   	nop
  402a33:	90                   	nop
  402a34:	90                   	nop
  402a35:	90                   	nop
  402a36:	90                   	nop
  402a37:	90                   	nop
  402a38:	90                   	nop
  402a39:	90                   	nop
  402a3a:	90                   	nop
  402a3b:	90                   	nop
  402a3c:	90                   	nop
  402a3d:	90                   	nop
  402a3e:	90                   	nop
  402a3f:	90                   	nop

0000000000402a40 <vfprintf>:
  402a40:	ff 25 06 59 00 00    	jmpq   *0x5906(%rip)        # 40834c <__imp_vfprintf>
  402a46:	90                   	nop
  402a47:	90                   	nop

0000000000402a48 <strncmp>:
  402a48:	ff 25 f6 58 00 00    	jmpq   *0x58f6(%rip)        # 408344 <__imp_strncmp>
  402a4e:	90                   	nop
  402a4f:	90                   	nop

0000000000402a50 <strlen>:
  402a50:	ff 25 e6 58 00 00    	jmpq   *0x58e6(%rip)        # 40833c <__imp_strlen>
  402a56:	90                   	nop
  402a57:	90                   	nop

0000000000402a58 <signal>:
  402a58:	ff 25 d6 58 00 00    	jmpq   *0x58d6(%rip)        # 408334 <__imp_signal>
  402a5e:	90                   	nop
  402a5f:	90                   	nop

0000000000402a60 <memcpy>:
  402a60:	ff 25 c6 58 00 00    	jmpq   *0x58c6(%rip)        # 40832c <__imp_memcpy>
  402a66:	90                   	nop
  402a67:	90                   	nop

0000000000402a68 <malloc>:
  402a68:	ff 25 b6 58 00 00    	jmpq   *0x58b6(%rip)        # 408324 <__imp_malloc>
  402a6e:	90                   	nop
  402a6f:	90                   	nop

0000000000402a70 <fwrite>:
  402a70:	ff 25 a6 58 00 00    	jmpq   *0x58a6(%rip)        # 40831c <__imp_fwrite>
  402a76:	90                   	nop
  402a77:	90                   	nop

0000000000402a78 <free>:
  402a78:	ff 25 96 58 00 00    	jmpq   *0x5896(%rip)        # 408314 <__imp_free>
  402a7e:	90                   	nop
  402a7f:	90                   	nop

0000000000402a80 <fprintf>:
  402a80:	ff 25 86 58 00 00    	jmpq   *0x5886(%rip)        # 40830c <__imp_fprintf>
  402a86:	90                   	nop
  402a87:	90                   	nop

0000000000402a88 <exit>:
  402a88:	ff 25 76 58 00 00    	jmpq   *0x5876(%rip)        # 408304 <__imp_exit>
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <calloc>:
  402a90:	ff 25 66 58 00 00    	jmpq   *0x5866(%rip)        # 4082fc <__imp_calloc>
  402a96:	90                   	nop
  402a97:	90                   	nop

0000000000402a98 <abort>:
  402a98:	ff 25 56 58 00 00    	jmpq   *0x5856(%rip)        # 4082f4 <__imp_abort>
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <_onexit>:
  402aa0:	ff 25 46 58 00 00    	jmpq   *0x5846(%rip)        # 4082ec <__imp__onexit>
  402aa6:	90                   	nop
  402aa7:	90                   	nop

0000000000402aa8 <_initterm>:
  402aa8:	ff 25 36 58 00 00    	jmpq   *0x5836(%rip)        # 4082e4 <__imp__initterm>
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <_cexit>:
  402ab0:	ff 25 1e 58 00 00    	jmpq   *0x581e(%rip)        # 4082d4 <__imp__cexit>
  402ab6:	90                   	nop
  402ab7:	90                   	nop

0000000000402ab8 <_amsg_exit>:
  402ab8:	ff 25 0e 58 00 00    	jmpq   *0x580e(%rip)        # 4082cc <__imp__amsg_exit>
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <__setusermatherr>:
  402ac0:	ff 25 f6 57 00 00    	jmpq   *0x57f6(%rip)        # 4082bc <__imp___setusermatherr>
  402ac6:	90                   	nop
  402ac7:	90                   	nop

0000000000402ac8 <__set_app_type>:
  402ac8:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 4082b4 <__imp___set_app_type>
  402ace:	90                   	nop
  402acf:	90                   	nop

0000000000402ad0 <__lconv_init>:
  402ad0:	ff 25 d6 57 00 00    	jmpq   *0x57d6(%rip)        # 4082ac <__imp___lconv_init>
  402ad6:	90                   	nop
  402ad7:	90                   	nop

0000000000402ad8 <__getmainargs>:
  402ad8:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 408294 <__imp___getmainargs>
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <__C_specific_handler>:
  402ae0:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 40828c <__imp___C_specific_handler>
  402ae6:	90                   	nop
  402ae7:	90                   	nop
  402ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402aef:	00 

0000000000402af0 <__acrt_iob_func>:
  402af0:	53                   	push   %rbx
  402af1:	48 83 ec 20          	sub    $0x20,%rsp
  402af5:	89 cb                	mov    %ecx,%ebx
  402af7:	e8 54 00 00 00       	callq  402b50 <__iob_func>
  402afc:	89 d9                	mov    %ebx,%ecx
  402afe:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402b02:	48 c1 e2 04          	shl    $0x4,%rdx
  402b06:	48 01 d0             	add    %rdx,%rax
  402b09:	48 83 c4 20          	add    $0x20,%rsp
  402b0d:	5b                   	pop    %rbx
  402b0e:	c3                   	retq   
  402b0f:	90                   	nop

0000000000402b10 <_get_invalid_parameter_handler>:
  402b10:	48 8b 05 39 4e 00 00 	mov    0x4e39(%rip),%rax        # 407950 <handler>
  402b17:	c3                   	retq   
  402b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b1f:	00 

0000000000402b20 <_set_invalid_parameter_handler>:
  402b20:	48 89 c8             	mov    %rcx,%rax
  402b23:	48 87 05 26 4e 00 00 	xchg   %rax,0x4e26(%rip)        # 407950 <handler>
  402b2a:	c3                   	retq   
  402b2b:	90                   	nop
  402b2c:	90                   	nop
  402b2d:	90                   	nop
  402b2e:	90                   	nop
  402b2f:	90                   	nop

0000000000402b30 <__p__acmdln>:
  402b30:	48 8b 05 29 18 00 00 	mov    0x1829(%rip),%rax        # 404360 <.refptr.__imp__acmdln>
  402b37:	48 8b 00             	mov    (%rax),%rax
  402b3a:	c3                   	retq   
  402b3b:	90                   	nop
  402b3c:	90                   	nop
  402b3d:	90                   	nop
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <__p__fmode>:
  402b40:	48 8b 05 29 18 00 00 	mov    0x1829(%rip),%rax        # 404370 <.refptr.__imp__fmode>
  402b47:	48 8b 00             	mov    (%rax),%rax
  402b4a:	c3                   	retq   
  402b4b:	90                   	nop
  402b4c:	90                   	nop
  402b4d:	90                   	nop
  402b4e:	90                   	nop
  402b4f:	90                   	nop

0000000000402b50 <__iob_func>:
  402b50:	ff 25 4e 57 00 00    	jmpq   *0x574e(%rip)        # 4082a4 <__imp___iob_func>
  402b56:	90                   	nop
  402b57:	90                   	nop
  402b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b5f:	00 

0000000000402b60 <VirtualQuery>:
  402b60:	ff 25 16 57 00 00    	jmpq   *0x5716(%rip)        # 40827c <__imp_VirtualQuery>
  402b66:	90                   	nop
  402b67:	90                   	nop

0000000000402b68 <VirtualProtect>:
  402b68:	ff 25 06 57 00 00    	jmpq   *0x5706(%rip)        # 408274 <__imp_VirtualProtect>
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <UnhandledExceptionFilter>:
  402b70:	ff 25 f6 56 00 00    	jmpq   *0x56f6(%rip)        # 40826c <__imp_UnhandledExceptionFilter>
  402b76:	90                   	nop
  402b77:	90                   	nop

0000000000402b78 <TlsGetValue>:
  402b78:	ff 25 e6 56 00 00    	jmpq   *0x56e6(%rip)        # 408264 <__imp_TlsGetValue>
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <TerminateProcess>:
  402b80:	ff 25 d6 56 00 00    	jmpq   *0x56d6(%rip)        # 40825c <__imp_TerminateProcess>
  402b86:	90                   	nop
  402b87:	90                   	nop

0000000000402b88 <Sleep>:
  402b88:	ff 25 c6 56 00 00    	jmpq   *0x56c6(%rip)        # 408254 <__imp_Sleep>
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <SetUnhandledExceptionFilter>:
  402b90:	ff 25 b6 56 00 00    	jmpq   *0x56b6(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  402b96:	90                   	nop
  402b97:	90                   	nop

0000000000402b98 <RtlVirtualUnwind>:
  402b98:	ff 25 a6 56 00 00    	jmpq   *0x56a6(%rip)        # 408244 <__imp_RtlVirtualUnwind>
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <RtlLookupFunctionEntry>:
  402ba0:	ff 25 96 56 00 00    	jmpq   *0x5696(%rip)        # 40823c <__imp_RtlLookupFunctionEntry>
  402ba6:	90                   	nop
  402ba7:	90                   	nop

0000000000402ba8 <RtlCaptureContext>:
  402ba8:	ff 25 86 56 00 00    	jmpq   *0x5686(%rip)        # 408234 <__imp_RtlCaptureContext>
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <RtlAddFunctionTable>:
  402bb0:	ff 25 76 56 00 00    	jmpq   *0x5676(%rip)        # 40822c <__imp_RtlAddFunctionTable>
  402bb6:	90                   	nop
  402bb7:	90                   	nop

0000000000402bb8 <QueryPerformanceCounter>:
  402bb8:	ff 25 66 56 00 00    	jmpq   *0x5666(%rip)        # 408224 <__imp_QueryPerformanceCounter>
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <LeaveCriticalSection>:
  402bc0:	ff 25 56 56 00 00    	jmpq   *0x5656(%rip)        # 40821c <__imp_LeaveCriticalSection>
  402bc6:	90                   	nop
  402bc7:	90                   	nop

0000000000402bc8 <InitializeCriticalSection>:
  402bc8:	ff 25 46 56 00 00    	jmpq   *0x5646(%rip)        # 408214 <__imp_InitializeCriticalSection>
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <GetTickCount>:
  402bd0:	ff 25 36 56 00 00    	jmpq   *0x5636(%rip)        # 40820c <__imp_GetTickCount>
  402bd6:	90                   	nop
  402bd7:	90                   	nop

0000000000402bd8 <GetSystemTimeAsFileTime>:
  402bd8:	ff 25 26 56 00 00    	jmpq   *0x5626(%rip)        # 408204 <__imp_GetSystemTimeAsFileTime>
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <GetStartupInfoA>:
  402be0:	ff 25 16 56 00 00    	jmpq   *0x5616(%rip)        # 4081fc <__imp_GetStartupInfoA>
  402be6:	90                   	nop
  402be7:	90                   	nop

0000000000402be8 <GetLastError>:
  402be8:	ff 25 06 56 00 00    	jmpq   *0x5606(%rip)        # 4081f4 <__imp_GetLastError>
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <GetCurrentThreadId>:
  402bf0:	ff 25 f6 55 00 00    	jmpq   *0x55f6(%rip)        # 4081ec <__imp_GetCurrentThreadId>
  402bf6:	90                   	nop
  402bf7:	90                   	nop

0000000000402bf8 <GetCurrentProcessId>:
  402bf8:	ff 25 e6 55 00 00    	jmpq   *0x55e6(%rip)        # 4081e4 <__imp_GetCurrentProcessId>
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <GetCurrentProcess>:
  402c00:	ff 25 d6 55 00 00    	jmpq   *0x55d6(%rip)        # 4081dc <__imp_GetCurrentProcess>
  402c06:	90                   	nop
  402c07:	90                   	nop

0000000000402c08 <EnterCriticalSection>:
  402c08:	ff 25 c6 55 00 00    	jmpq   *0x55c6(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  402c0e:	90                   	nop
  402c0f:	90                   	nop

0000000000402c10 <DeleteCriticalSection>:
  402c10:	ff 25 b6 55 00 00    	jmpq   *0x55b6(%rip)        # 4081cc <__IAT_start__>
  402c16:	90                   	nop
  402c17:	90                   	nop
  402c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c1f:	00 

0000000000402c20 <__report_error>:
  402c20:	56                   	push   %rsi
  402c21:	53                   	push   %rbx
  402c22:	48 83 ec 38          	sub    $0x38,%rsp
  402c26:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  402c2b:	48 89 cb             	mov    %rcx,%rbx
  402c2e:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c33:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  402c38:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  402c3d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  402c42:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402c47:	e8 a4 fe ff ff       	callq  402af0 <__acrt_iob_func>
  402c4c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  402c52:	ba 01 00 00 00       	mov    $0x1,%edx
  402c57:	48 8d 0d 62 15 00 00 	lea    0x1562(%rip),%rcx        # 4041c0 <.rdata>
  402c5e:	49 89 c1             	mov    %rax,%r9
  402c61:	e8 0a fe ff ff       	callq  402a70 <fwrite>
  402c66:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  402c6b:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c70:	e8 7b fe ff ff       	callq  402af0 <__acrt_iob_func>
  402c75:	48 89 da             	mov    %rbx,%rdx
  402c78:	48 89 c1             	mov    %rax,%rcx
  402c7b:	49 89 f0             	mov    %rsi,%r8
  402c7e:	e8 bd fd ff ff       	callq  402a40 <vfprintf>
  402c83:	e8 10 fe ff ff       	callq  402a98 <abort>
  402c88:	90                   	nop
  402c89:	90                   	nop
  402c8a:	90                   	nop
  402c8b:	90                   	nop
  402c8c:	90                   	nop
  402c8d:	90                   	nop
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <register_frame_ctor>:
  402c90:	e9 9b e8 ff ff       	jmpq   401530 <__gcc_register_frame>
  402c95:	90                   	nop
  402c96:	90                   	nop
  402c97:	90                   	nop
  402c98:	90                   	nop
  402c99:	90                   	nop
  402c9a:	90                   	nop
  402c9b:	90                   	nop
  402c9c:	90                   	nop
  402c9d:	90                   	nop
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <__CTOR_LIST__>:
  402ca0:	ff                   	(bad)  
  402ca1:	ff                   	(bad)  
  402ca2:	ff                   	(bad)  
  402ca3:	ff                   	(bad)  
  402ca4:	ff                   	(bad)  
  402ca5:	ff                   	(bad)  
  402ca6:	ff                   	(bad)  
  402ca7:	ff                   	.byte 0xff

0000000000402ca8 <.ctors.65535>:
  402ca8:	90                   	nop
  402ca9:	2c 40                	sub    $0x40,%al
	...

0000000000402cb8 <__DTOR_LIST__>:
  402cb8:	ff                   	(bad)  
  402cb9:	ff                   	(bad)  
  402cba:	ff                   	(bad)  
  402cbb:	ff                   	(bad)  
  402cbc:	ff                   	(bad)  
  402cbd:	ff                   	(bad)  
  402cbe:	ff                   	(bad)  
  402cbf:	ff 00                	incl   (%rax)
  402cc1:	00 00                	add    %al,(%rax)
  402cc3:	00 00                	add    %al,(%rax)
  402cc5:	00 00                	add    %al,(%rax)
	...

test.o:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 45 34 00 00 	mov    0x3445(%rip),%rax        # 404460 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 46 34 00 00 	mov    0x3446(%rip),%rax        # 404470 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 49 34 00 00 	mov    0x3449(%rip),%rax        # 404480 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 0c 34 00 00 	mov    0x340c(%rip),%rax        # 404450 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 ef 32 00 00 	mov    0x32ef(%rip),%rax        # 404340 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 58                	je     4010b0 <pre_c_init+0xa0>
  401058:	48 8b 05 e1 33 00 00 	mov    0x33e1(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  40105f:	89 15 a3 5f 00 00    	mov    %edx,0x5fa3(%rip)        # 407008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 35                	je     4010a0 <pre_c_init+0x90>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 53 1a 00 00       	callq  402ac8 <__set_app_type>
  401075:	e8 c6 1a 00 00       	callq  402b40 <__p__fmode>
  40107a:	48 8b 15 7f 33 00 00 	mov    0x337f(%rip),%rdx        # 404400 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 d6 05 00 00       	callq  401660 <_setargv>
  40108a:	48 8b 05 5f 32 00 00 	mov    0x325f(%rip),%rax        # 4042f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 1e 1a 00 00       	callq  402ac8 <__set_app_type>
  4010aa:	eb c9                	jmp    401075 <pre_c_init+0x65>
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
  4010b4:	48 01 c8             	add    %rcx,%rax
  4010b7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  4010bd:	75 99                	jne    401058 <pre_c_init+0x48>
  4010bf:	0f b7 48 18          	movzwl 0x18(%rax),%ecx
  4010c3:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010c8:	74 39                	je     401103 <pre_c_init+0xf3>
  4010ca:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010cf:	75 87                	jne    401058 <pre_c_init+0x48>
  4010d1:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d8:	0f 86 7a ff ff ff    	jbe    401058 <pre_c_init+0x48>
  4010de:	8b 88 f8 00 00 00    	mov    0xf8(%rax),%ecx
  4010e4:	31 d2                	xor    %edx,%edx
  4010e6:	85 c9                	test   %ecx,%ecx
  4010e8:	0f 95 c2             	setne  %dl
  4010eb:	e9 68 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  4010f0:	48 8d 0d 79 08 00 00 	lea    0x879(%rip),%rcx        # 401970 <_matherr>
  4010f7:	e8 64 08 00 00       	callq  401960 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401107:	0f 86 4b ff ff ff    	jbe    401058 <pre_c_init+0x48>
  40110d:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401114:	31 d2                	xor    %edx,%edx
  401116:	45 85 c0             	test   %r8d,%r8d
  401119:	0f 95 c2             	setne  %dl
  40111c:	e9 37 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401121:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 f5 32 00 00 	mov    0x32f5(%rip),%rax        # 404430 <.refptr._newmode>
  40113b:	4c 8d 05 ce 5e 00 00 	lea    0x5ece(%rip),%r8        # 407010 <envp>
  401142:	48 8d 15 cf 5e 00 00 	lea    0x5ecf(%rip),%rdx        # 407018 <argv>
  401149:	48 8d 0d d0 5e 00 00 	lea    0x5ed0(%rip),%rcx        # 407020 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 a8 5e 00 00    	mov    %eax,0x5ea8(%rip)        # 407000 <__bss_start__>
  401158:	48 8d 05 a1 5e 00 00 	lea    0x5ea1(%rip),%rax        # 407000 <__bss_start__>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 85 32 00 00 	mov    0x3285(%rip),%rax        # 4043f0 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 65 19 00 00       	callq  402ad8 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	31 c0                	xor    %eax,%eax
  401191:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401196:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40119b:	48 89 d7             	mov    %rdx,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d 98 32 00 00 	mov    0x3298(%rip),%rdi        # 404440 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 bc 02 00 00    	jne    401470 <__tmainCRTStartup+0x2f0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d cc 31 00 00 	mov    0x31cc(%rip),%rbx        # 404390 <.refptr.__native_startup_lock>
  4011c4:	31 ed                	xor    %ebp,%ebp
  4011c6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011ca:	4c 8b 25 83 70 00 00 	mov    0x7083(%rip),%r12        # 408254 <__imp_Sleep>
  4011d1:	eb 11                	jmp    4011e4 <__tmainCRTStartup+0x64>
  4011d3:	48 39 c6             	cmp    %rax,%rsi
  4011d6:	0f 84 34 02 00 00    	je     401410 <__tmainCRTStartup+0x290>
  4011dc:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e1:	41 ff d4             	callq  *%r12
  4011e4:	48 89 e8             	mov    %rbp,%rax
  4011e7:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 e2                	jne    4011d3 <__tmainCRTStartup+0x53>
  4011f1:	48 8b 35 a8 31 00 00 	mov    0x31a8(%rip),%rsi        # 4043a0 <.refptr.__native_startup_state>
  4011f8:	31 ed                	xor    %ebp,%ebp
  4011fa:	8b 06                	mov    (%rsi),%eax
  4011fc:	83 f8 01             	cmp    $0x1,%eax
  4011ff:	0f 84 22 02 00 00    	je     401427 <__tmainCRTStartup+0x2a7>
  401205:	8b 06                	mov    (%rsi),%eax
  401207:	85 c0                	test   %eax,%eax
  401209:	0f 84 71 02 00 00    	je     401480 <__tmainCRTStartup+0x300>
  40120f:	c7 05 eb 5d 00 00 01 	movl   $0x1,0x5deb(%rip)        # 407004 <has_cctor>
  401216:	00 00 00 
  401219:	8b 06                	mov    (%rsi),%eax
  40121b:	83 f8 01             	cmp    $0x1,%eax
  40121e:	0f 84 18 02 00 00    	je     40143c <__tmainCRTStartup+0x2bc>
  401224:	85 ed                	test   %ebp,%ebp
  401226:	0f 84 31 02 00 00    	je     40145d <__tmainCRTStartup+0x2dd>
  40122c:	48 8b 05 fd 30 00 00 	mov    0x30fd(%rip),%rax        # 404330 <.refptr.__dyn_tls_init_callback>
  401233:	48 8b 00             	mov    (%rax),%rax
  401236:	48 85 c0             	test   %rax,%rax
  401239:	74 0c                	je     401247 <__tmainCRTStartup+0xc7>
  40123b:	45 31 c0             	xor    %r8d,%r8d
  40123e:	ba 02 00 00 00       	mov    $0x2,%edx
  401243:	31 c9                	xor    %ecx,%ecx
  401245:	ff d0                	callq  *%rax
  401247:	e8 24 0a 00 00       	callq  401c70 <_pei386_runtime_relocator>
  40124c:	48 8d 0d 6d 0f 00 00 	lea    0xf6d(%rip),%rcx        # 4021c0 <_gnu_exception_handler>
  401253:	ff 15 f3 6f 00 00    	callq  *0x6ff3(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 20 31 00 00 	mov    0x3120(%rip),%rdx        # 404380 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 68 0e 00 00       	callq  4020d0 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 ac 18 00 00       	callq  402b20 <_set_invalid_parameter_handler>
  401274:	e8 f7 07 00 00       	callq  401a70 <_fpreset>
  401279:	48 8b 05 c0 30 00 00 	mov    0x30c0(%rip),%rax        # 404340 <.refptr.__image_base__>
  401280:	48 89 05 e1 66 00 00 	mov    %rax,0x66e1(%rip)        # 407968 <__mingw_winmain_hInstance>
  401287:	e8 a4 18 00 00       	callq  402b30 <__p__acmdln>
  40128c:	31 c9                	xor    %ecx,%ecx
  40128e:	48 8b 00             	mov    (%rax),%rax
  401291:	48 85 c0             	test   %rax,%rax
  401294:	75 1c                	jne    4012b2 <__tmainCRTStartup+0x132>
  401296:	eb 5f                	jmp    4012f7 <__tmainCRTStartup+0x177>
  401298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40129f:	00 
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 2c                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	75 11                	jne    4012e5 <__tmainCRTStartup+0x165>
  4012d4:	eb 1a                	jmp    4012f0 <__tmainCRTStartup+0x170>
  4012d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012dd:	00 00 00 
  4012e0:	80 fa 20             	cmp    $0x20,%dl
  4012e3:	7f 0b                	jg     4012f0 <__tmainCRTStartup+0x170>
  4012e5:	48 83 c0 01          	add    $0x1,%rax
  4012e9:	0f b6 10             	movzbl (%rax),%edx
  4012ec:	84 d2                	test   %dl,%dl
  4012ee:	75 f0                	jne    4012e0 <__tmainCRTStartup+0x160>
  4012f0:	48 89 05 69 66 00 00 	mov    %rax,0x6669(%rip)        # 407960 <__mingw_winmain_lpCmdLine>
  4012f7:	44 8b 07             	mov    (%rdi),%r8d
  4012fa:	45 85 c0             	test   %r8d,%r8d
  4012fd:	74 16                	je     401315 <__tmainCRTStartup+0x195>
  4012ff:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401304:	b8 0a 00 00 00       	mov    $0xa,%eax
  401309:	0f 85 f1 00 00 00    	jne    401400 <__tmainCRTStartup+0x280>
  40130f:	89 05 eb 1c 00 00    	mov    %eax,0x1ceb(%rip)        # 403000 <__data_start__>
  401315:	8b 1d 05 5d 00 00    	mov    0x5d05(%rip),%ebx        # 407020 <argc>
  40131b:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  40131f:	4d 63 e4             	movslq %r12d,%r12
  401322:	49 c1 e4 03          	shl    $0x3,%r12
  401326:	4c 89 e1             	mov    %r12,%rcx
  401329:	e8 3a 17 00 00       	callq  402a68 <malloc>
  40132e:	85 db                	test   %ebx,%ebx
  401330:	48 8b 3d e1 5c 00 00 	mov    0x5ce1(%rip),%rdi        # 407018 <argv>
  401337:	48 89 c5             	mov    %rax,%rbp
  40133a:	7e 4b                	jle    401387 <__tmainCRTStartup+0x207>
  40133c:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40133f:	31 db                	xor    %ebx,%ebx
  401341:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  401348:	00 
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	48 8b 0c 1f          	mov    (%rdi,%rbx,1),%rcx
  401354:	e8 f7 16 00 00       	callq  402a50 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 03 17 00 00       	callq  402a68 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 e3 16 00 00       	callq  402a60 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 5c 00 00 	mov    %rbp,0x5c83(%rip)        # 407018 <argv>
  401395:	e8 96 02 00 00       	callq  401630 <__main>
  40139a:	48 8b 05 af 2f 00 00 	mov    0x2faf(%rip),%rax        # 404350 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 5c 00 00 	mov    0x5c68(%rip),%rdx        # 407010 <envp>
  4013a8:	8b 0d 72 5c 00 00    	mov    0x5c72(%rip),%ecx        # 407020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 5c 00 00 	mov    0x5c55(%rip),%r8        # 407010 <envp>
  4013bb:	48 8b 15 56 5c 00 00 	mov    0x5c56(%rip),%rdx        # 407018 <argv>
  4013c2:	e8 89 01 00 00       	callq  401550 <main>
  4013c7:	8b 0d 3b 5c 00 00    	mov    0x5c3b(%rip),%ecx        # 407008 <managedapp>
  4013cd:	89 05 39 5c 00 00    	mov    %eax,0x5c39(%rip)        # 40700c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 5c 00 00    	mov    0x5c23(%rip),%edx        # 407004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 c6 16 00 00       	callq  402ab0 <_cexit>
  4013ea:	8b 05 1c 5c 00 00    	mov    0x5c1c(%rip),%eax        # 40700c <mainret>
  4013f0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013f7:	5b                   	pop    %rbx
  4013f8:	5e                   	pop    %rsi
  4013f9:	5f                   	pop    %rdi
  4013fa:	5d                   	pop    %rbp
  4013fb:	41 5c                	pop    %r12
  4013fd:	41 5d                	pop    %r13
  4013ff:	c3                   	retq   
  401400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  401405:	e9 05 ff ff ff       	jmpq   40130f <__tmainCRTStartup+0x18f>
  40140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401410:	48 8b 35 89 2f 00 00 	mov    0x2f89(%rip),%rsi        # 4043a0 <.refptr.__native_startup_state>
  401417:	bd 01 00 00 00       	mov    $0x1,%ebp
  40141c:	8b 06                	mov    (%rsi),%eax
  40141e:	83 f8 01             	cmp    $0x1,%eax
  401421:	0f 85 de fd ff ff    	jne    401205 <__tmainCRTStartup+0x85>
  401427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40142c:	e8 87 16 00 00       	callq  402ab8 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 7d 2f 00 00 	mov    0x2f7d(%rip),%rdx        # 4043c0 <.refptr.__xc_z>
  401443:	48 8b 0d 66 2f 00 00 	mov    0x2f66(%rip),%rcx        # 4043b0 <.refptr.__xc_a>
  40144a:	e8 59 16 00 00       	callq  402aa8 <_initterm>
  40144f:	85 ed                	test   %ebp,%ebp
  401451:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401457:	0f 85 cf fd ff ff    	jne    40122c <__tmainCRTStartup+0xac>
  40145d:	31 c0                	xor    %eax,%eax
  40145f:	48 87 03             	xchg   %rax,(%rbx)
  401462:	e9 c5 fd ff ff       	jmpq   40122c <__tmainCRTStartup+0xac>
  401467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40146e:	00 00 
  401470:	48 89 d1             	mov    %rdx,%rcx
  401473:	ff 15 83 6d 00 00    	callq  *0x6d83(%rip)        # 4081fc <__imp_GetStartupInfoA>
  401479:	e9 36 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40147e:	66 90                	xchg   %ax,%ax
  401480:	48 8b 15 59 2f 00 00 	mov    0x2f59(%rip),%rdx        # 4043e0 <.refptr.__xi_z>
  401487:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40148d:	48 8b 0d 3c 2f 00 00 	mov    0x2f3c(%rip),%rcx        # 4043d0 <.refptr.__xi_a>
  401494:	e8 0f 16 00 00       	callq  402aa8 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 e3 15 00 00       	callq  402a88 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 85 2f 00 00 	mov    0x2f85(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 aa 01 00 00       	callq  401670 <__security_init_cookie>
  4014c6:	e8 b5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014cb:	90                   	nop

00000000004014cc <.l_endw>:
  4014cc:	90                   	nop
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	c3                   	retq   
  4014d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4014d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014dd:	00 00 00 

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 55 2f 00 00 	mov    0x2f55(%rip),%rax        # 404440 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 7a 01 00 00       	callq  401670 <__security_init_cookie>
  4014f6:	e8 85 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014fb:	90                   	nop

00000000004014fc <.l_end>:
  4014fc:	90                   	nop
  4014fd:	48 83 c4 28          	add    $0x28,%rsp
  401501:	c3                   	retq   
  401502:	0f 1f 40 00          	nopl   0x0(%rax)
  401506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40150d:	00 00 00 

0000000000401510 <atexit>:
  401510:	48 83 ec 28          	sub    $0x28,%rsp
  401514:	e8 87 15 00 00       	callq  402aa0 <_onexit>
  401519:	48 85 c0             	test   %rax,%rax
  40151c:	0f 94 c0             	sete   %al
  40151f:	0f b6 c0             	movzbl %al,%eax
  401522:	f7 d8                	neg    %eax
  401524:	48 83 c4 28          	add    $0x28,%rsp
  401528:	c3                   	retq   
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401540 <__gcc_deregister_frame>
  401537:	e9 d4 ff ff ff       	jmpq   401510 <atexit>
  40153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401540 <__gcc_deregister_frame>:
  401540:	c3                   	retq   
  401541:	90                   	nop
  401542:	90                   	nop
  401543:	90                   	nop
  401544:	90                   	nop
  401545:	90                   	nop
  401546:	90                   	nop
  401547:	90                   	nop
  401548:	90                   	nop
  401549:	90                   	nop
  40154a:	90                   	nop
  40154b:	90                   	nop
  40154c:	90                   	nop
  40154d:	90                   	nop
  40154e:	90                   	nop
  40154f:	90                   	nop

0000000000401550 <main>:
  401550:	55                   	push   %rbp
  401551:	48 89 e5             	mov    %rsp,%rbp
  401554:	48 83 ec 30          	sub    $0x30,%rsp
  401558:	e8 d3 00 00 00       	callq  401630 <__main>
  40155d:	e8 0e 00 00 00       	callq  401570 <b>
  401562:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401565:	b8 00 00 00 00       	mov    $0x0,%eax
  40156a:	48 83 c4 30          	add    $0x30,%rsp
  40156e:	5d                   	pop    %rbp
  40156f:	c3                   	retq   

0000000000401570 <b>:
  401570:	b8 01 00 00 00       	mov    $0x1,%eax
  401575:	c3                   	retq   
  401576:	90                   	nop
  401577:	90                   	nop
  401578:	90                   	nop
  401579:	90                   	nop
  40157a:	90                   	nop
  40157b:	90                   	nop
  40157c:	90                   	nop
  40157d:	90                   	nop
  40157e:	90                   	nop
  40157f:	90                   	nop

0000000000401580 <__do_global_dtors>:
  401580:	48 83 ec 28          	sub    $0x28,%rsp
  401584:	48 8b 05 85 1a 00 00 	mov    0x1a85(%rip),%rax        # 403010 <p.93846>
  40158b:	48 8b 00             	mov    (%rax),%rax
  40158e:	48 85 c0             	test   %rax,%rax
  401591:	74 1d                	je     4015b0 <__do_global_dtors+0x30>
  401593:	ff d0                	callq  *%rax
  401595:	48 8b 05 74 1a 00 00 	mov    0x1a74(%rip),%rax        # 403010 <p.93846>
  40159c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4015a0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4015a4:	48 89 15 65 1a 00 00 	mov    %rdx,0x1a65(%rip)        # 403010 <p.93846>
  4015ab:	48 85 c0             	test   %rax,%rax
  4015ae:	75 e3                	jne    401593 <__do_global_dtors+0x13>
  4015b0:	48 83 c4 28          	add    $0x28,%rsp
  4015b4:	c3                   	retq   
  4015b5:	90                   	nop
  4015b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4015bd:	00 00 00 

00000000004015c0 <__do_global_ctors>:
  4015c0:	56                   	push   %rsi
  4015c1:	53                   	push   %rbx
  4015c2:	48 83 ec 28          	sub    $0x28,%rsp
  4015c6:	48 8b 0d 33 2d 00 00 	mov    0x2d33(%rip),%rcx        # 404300 <.refptr.__CTOR_LIST__>
  4015cd:	48 8b 11             	mov    (%rcx),%rdx
  4015d0:	83 fa ff             	cmp    $0xffffffff,%edx
  4015d3:	89 d0                	mov    %edx,%eax
  4015d5:	74 39                	je     401610 <__do_global_ctors+0x50>
  4015d7:	85 c0                	test   %eax,%eax
  4015d9:	74 20                	je     4015fb <__do_global_ctors+0x3b>
  4015db:	89 c2                	mov    %eax,%edx
  4015dd:	83 e8 01             	sub    $0x1,%eax
  4015e0:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  4015e4:	48 29 c2             	sub    %rax,%rdx
  4015e7:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  4015ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4015f0:	ff 13                	callq  *(%rbx)
  4015f2:	48 83 eb 08          	sub    $0x8,%rbx
  4015f6:	48 39 f3             	cmp    %rsi,%rbx
  4015f9:	75 f5                	jne    4015f0 <__do_global_ctors+0x30>
  4015fb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401580 <__do_global_dtors>
  401602:	48 83 c4 28          	add    $0x28,%rsp
  401606:	5b                   	pop    %rbx
  401607:	5e                   	pop    %rsi
  401608:	e9 03 ff ff ff       	jmpq   401510 <atexit>
  40160d:	0f 1f 00             	nopl   (%rax)
  401610:	31 c0                	xor    %eax,%eax
  401612:	eb 02                	jmp    401616 <__do_global_ctors+0x56>
  401614:	89 d0                	mov    %edx,%eax
  401616:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40161a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  40161f:	4c 89 c2             	mov    %r8,%rdx
  401622:	75 f0                	jne    401614 <__do_global_ctors+0x54>
  401624:	eb b1                	jmp    4015d7 <__do_global_ctors+0x17>
  401626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40162d:	00 00 00 

0000000000401630 <__main>:
  401630:	8b 05 fa 59 00 00    	mov    0x59fa(%rip),%eax        # 407030 <initialized>
  401636:	85 c0                	test   %eax,%eax
  401638:	74 06                	je     401640 <__main+0x10>
  40163a:	c3                   	retq   
  40163b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401640:	c7 05 e6 59 00 00 01 	movl   $0x1,0x59e6(%rip)        # 407030 <initialized>
  401647:	00 00 00 
  40164a:	e9 71 ff ff ff       	jmpq   4015c0 <__do_global_ctors>
  40164f:	90                   	nop

0000000000401650 <my_lconv_init>:
  401650:	48 ff 25 55 6c 00 00 	rex.W jmpq *0x6c55(%rip)        # 4082ac <__imp___lconv_init>
  401657:	90                   	nop
  401658:	90                   	nop
  401659:	90                   	nop
  40165a:	90                   	nop
  40165b:	90                   	nop
  40165c:	90                   	nop
  40165d:	90                   	nop
  40165e:	90                   	nop
  40165f:	90                   	nop

0000000000401660 <_setargv>:
  401660:	31 c0                	xor    %eax,%eax
  401662:	c3                   	retq   
  401663:	90                   	nop
  401664:	90                   	nop
  401665:	90                   	nop
  401666:	90                   	nop
  401667:	90                   	nop
  401668:	90                   	nop
  401669:	90                   	nop
  40166a:	90                   	nop
  40166b:	90                   	nop
  40166c:	90                   	nop
  40166d:	90                   	nop
  40166e:	90                   	nop
  40166f:	90                   	nop

0000000000401670 <__security_init_cookie>:
  401670:	41 54                	push   %r12
  401672:	55                   	push   %rbp
  401673:	57                   	push   %rdi
  401674:	56                   	push   %rsi
  401675:	53                   	push   %rbx
  401676:	48 83 ec 30          	sub    $0x30,%rsp
  40167a:	48 8b 1d 2f 1a 00 00 	mov    0x1a2f(%rip),%rbx        # 4030b0 <__security_cookie>
  401681:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401688:	2b 00 00 
  40168b:	48 39 c3             	cmp    %rax,%rbx
  40168e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401695:	00 00 
  401697:	74 17                	je     4016b0 <__security_init_cookie+0x40>
  401699:	48 f7 d3             	not    %rbx
  40169c:	48 89 1d 1d 1a 00 00 	mov    %rbx,0x1a1d(%rip)        # 4030c0 <__security_cookie_complement>
  4016a3:	48 83 c4 30          	add    $0x30,%rsp
  4016a7:	5b                   	pop    %rbx
  4016a8:	5e                   	pop    %rsi
  4016a9:	5f                   	pop    %rdi
  4016aa:	5d                   	pop    %rbp
  4016ab:	41 5c                	pop    %r12
  4016ad:	c3                   	retq   
  4016ae:	66 90                	xchg   %ax,%ax
  4016b0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4016b5:	ff 15 49 6b 00 00    	callq  *0x6b49(%rip)        # 408204 <__imp_GetSystemTimeAsFileTime>
  4016bb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4016c0:	ff 15 1e 6b 00 00    	callq  *0x6b1e(%rip)        # 4081e4 <__imp_GetCurrentProcessId>
  4016c6:	41 89 c4             	mov    %eax,%r12d
  4016c9:	ff 15 1d 6b 00 00    	callq  *0x6b1d(%rip)        # 4081ec <__imp_GetCurrentThreadId>
  4016cf:	89 c5                	mov    %eax,%ebp
  4016d1:	ff 15 35 6b 00 00    	callq  *0x6b35(%rip)        # 40820c <__imp_GetTickCount>
  4016d7:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4016dc:	89 c7                	mov    %eax,%edi
  4016de:	ff 15 40 6b 00 00    	callq  *0x6b40(%rip)        # 408224 <__imp_QueryPerformanceCounter>
  4016e4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4016e9:	44 89 e0             	mov    %r12d,%eax
  4016ec:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  4016f3:	ff 00 00 
  4016f6:	48 31 f0             	xor    %rsi,%rax
  4016f9:	89 ee                	mov    %ebp,%esi
  4016fb:	48 31 c6             	xor    %rax,%rsi
  4016fe:	89 f8                	mov    %edi,%eax
  401700:	48 31 f0             	xor    %rsi,%rax
  401703:	48 21 d0             	and    %rdx,%rax
  401706:	48 39 d8             	cmp    %rbx,%rax
  401709:	74 25                	je     401730 <__security_init_cookie+0xc0>
  40170b:	48 89 c2             	mov    %rax,%rdx
  40170e:	48 f7 d2             	not    %rdx
  401711:	48 89 05 98 19 00 00 	mov    %rax,0x1998(%rip)        # 4030b0 <__security_cookie>
  401718:	48 89 15 a1 19 00 00 	mov    %rdx,0x19a1(%rip)        # 4030c0 <__security_cookie_complement>
  40171f:	48 83 c4 30          	add    $0x30,%rsp
  401723:	5b                   	pop    %rbx
  401724:	5e                   	pop    %rsi
  401725:	5f                   	pop    %rdi
  401726:	5d                   	pop    %rbp
  401727:	41 5c                	pop    %r12
  401729:	c3                   	retq   
  40172a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401730:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401737:	d4 ff ff 
  40173a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401741:	2b 00 00 
  401744:	eb cb                	jmp    401711 <__security_init_cookie+0xa1>
  401746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40174d:	00 00 00 

0000000000401750 <__report_gsfailure>:
  401750:	55                   	push   %rbp
  401751:	56                   	push   %rsi
  401752:	53                   	push   %rbx
  401753:	48 89 e5             	mov    %rsp,%rbp
  401756:	48 83 ec 70          	sub    $0x70,%rsp
  40175a:	48 89 ce             	mov    %rcx,%rsi
  40175d:	48 8d 0d fc 58 00 00 	lea    0x58fc(%rip),%rcx        # 407060 <GS_ContextRecord>
  401764:	ff 15 ca 6a 00 00    	callq  *0x6aca(%rip)        # 408234 <__imp_RtlCaptureContext>
  40176a:	48 8b 1d e7 59 00 00 	mov    0x59e7(%rip),%rbx        # 407158 <GS_ContextRecord+0xf8>
  401771:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401775:	45 31 c0             	xor    %r8d,%r8d
  401778:	48 89 d9             	mov    %rbx,%rcx
  40177b:	ff 15 bb 6a 00 00    	callq  *0x6abb(%rip)        # 40823c <__imp_RtlLookupFunctionEntry>
  401781:	48 85 c0             	test   %rax,%rax
  401784:	0f 84 a3 00 00 00    	je     40182d <__report_gsfailure+0xdd>
  40178a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  40178e:	49 89 c1             	mov    %rax,%r9
  401791:	49 89 d8             	mov    %rbx,%r8
  401794:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40179b:	00 00 
  40179d:	48 8d 0d bc 58 00 00 	lea    0x58bc(%rip),%rcx        # 407060 <GS_ContextRecord>
  4017a4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  4017a9:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  4017ad:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4017b2:	31 c9                	xor    %ecx,%ecx
  4017b4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4017b9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4017bd:	ff 15 81 6a 00 00    	callq  *0x6a81(%rip)        # 408244 <__imp_RtlVirtualUnwind>
  4017c3:	48 8b 05 8e 59 00 00 	mov    0x598e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4017ca:	31 c9                	xor    %ecx,%ecx
  4017cc:	48 89 35 0d 59 00 00 	mov    %rsi,0x590d(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4017d3:	48 89 05 76 5d 00 00 	mov    %rax,0x5d76(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4017da:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4017e1:	00 00 00 
  4017e4:	48 89 05 55 5d 00 00 	mov    %rax,0x5d55(%rip)        # 407540 <GS_ExceptionRecord>
  4017eb:	48 8b 05 be 18 00 00 	mov    0x18be(%rip),%rax        # 4030b0 <__security_cookie>
  4017f2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4017f6:	48 8b 05 c3 18 00 00 	mov    0x18c3(%rip),%rax        # 4030c0 <__security_cookie_complement>
  4017fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401801:	ff 15 45 6a 00 00    	callq  *0x6a45(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  401807:	48 8d 0d f2 27 00 00 	lea    0x27f2(%rip),%rcx        # 404000 <GS_ExceptionPointers>
  40180e:	ff 15 58 6a 00 00    	callq  *0x6a58(%rip)        # 40826c <__imp_UnhandledExceptionFilter>
  401814:	ff 15 c2 69 00 00    	callq  *0x69c2(%rip)        # 4081dc <__imp_GetCurrentProcess>
  40181a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40181f:	48 89 c1             	mov    %rax,%rcx
  401822:	ff 15 34 6a 00 00    	callq  *0x6a34(%rip)        # 40825c <__imp_TerminateProcess>
  401828:	e8 6b 12 00 00       	callq  402a98 <abort>
  40182d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401831:	48 89 05 20 59 00 00 	mov    %rax,0x5920(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401838:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40183c:	48 89 05 b5 58 00 00 	mov    %rax,0x58b5(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401843:	e9 7b ff ff ff       	jmpq   4017c3 <__report_gsfailure+0x73>
  401848:	90                   	nop
  401849:	90                   	nop
  40184a:	90                   	nop
  40184b:	90                   	nop
  40184c:	90                   	nop
  40184d:	90                   	nop
  40184e:	90                   	nop
  40184f:	90                   	nop

0000000000401850 <__dyn_tls_dtor>:
  401850:	48 83 ec 28          	sub    $0x28,%rsp
  401854:	83 fa 03             	cmp    $0x3,%edx
  401857:	74 17                	je     401870 <__dyn_tls_dtor+0x20>
  401859:	85 d2                	test   %edx,%edx
  40185b:	74 13                	je     401870 <__dyn_tls_dtor+0x20>
  40185d:	b8 01 00 00 00       	mov    $0x1,%eax
  401862:	48 83 c4 28          	add    $0x28,%rsp
  401866:	c3                   	retq   
  401867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40186e:	00 00 
  401870:	e8 cb 0c 00 00       	callq  402540 <__mingw_TLScallback>
  401875:	b8 01 00 00 00       	mov    $0x1,%eax
  40187a:	48 83 c4 28          	add    $0x28,%rsp
  40187e:	c3                   	retq   
  40187f:	90                   	nop

0000000000401880 <__dyn_tls_init>:
  401880:	56                   	push   %rsi
  401881:	53                   	push   %rbx
  401882:	48 83 ec 28          	sub    $0x28,%rsp
  401886:	48 8b 05 53 2a 00 00 	mov    0x2a53(%rip),%rax        # 4042e0 <.refptr._CRT_MT>
  40188d:	83 38 02             	cmpl   $0x2,(%rax)
  401890:	74 06                	je     401898 <__dyn_tls_init+0x18>
  401892:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401898:	83 fa 02             	cmp    $0x2,%edx
  40189b:	74 13                	je     4018b0 <__dyn_tls_init+0x30>
  40189d:	83 fa 01             	cmp    $0x1,%edx
  4018a0:	74 40                	je     4018e2 <__dyn_tls_init+0x62>
  4018a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4018a7:	48 83 c4 28          	add    $0x28,%rsp
  4018ab:	5b                   	pop    %rbx
  4018ac:	5e                   	pop    %rsi
  4018ad:	c3                   	retq   
  4018ae:	66 90                	xchg   %ax,%ax
  4018b0:	48 8d 1d a9 77 00 00 	lea    0x77a9(%rip),%rbx        # 409060 <__xd_z>
  4018b7:	48 8d 35 a2 77 00 00 	lea    0x77a2(%rip),%rsi        # 409060 <__xd_z>
  4018be:	48 39 de             	cmp    %rbx,%rsi
  4018c1:	74 df                	je     4018a2 <__dyn_tls_init+0x22>
  4018c3:	48 8b 03             	mov    (%rbx),%rax
  4018c6:	48 85 c0             	test   %rax,%rax
  4018c9:	74 02                	je     4018cd <__dyn_tls_init+0x4d>
  4018cb:	ff d0                	callq  *%rax
  4018cd:	48 83 c3 08          	add    $0x8,%rbx
  4018d1:	48 39 de             	cmp    %rbx,%rsi
  4018d4:	75 ed                	jne    4018c3 <__dyn_tls_init+0x43>
  4018d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4018db:	48 83 c4 28          	add    $0x28,%rsp
  4018df:	5b                   	pop    %rbx
  4018e0:	5e                   	pop    %rsi
  4018e1:	c3                   	retq   
  4018e2:	e8 59 0c 00 00       	callq  402540 <__mingw_TLScallback>
  4018e7:	b8 01 00 00 00       	mov    $0x1,%eax
  4018ec:	48 83 c4 28          	add    $0x28,%rsp
  4018f0:	5b                   	pop    %rbx
  4018f1:	5e                   	pop    %rsi
  4018f2:	c3                   	retq   
  4018f3:	0f 1f 00             	nopl   (%rax)
  4018f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4018fd:	00 00 00 

0000000000401900 <__tlregdtor>:
  401900:	31 c0                	xor    %eax,%eax
  401902:	c3                   	retq   
  401903:	90                   	nop
  401904:	90                   	nop
  401905:	90                   	nop
  401906:	90                   	nop
  401907:	90                   	nop
  401908:	90                   	nop
  401909:	90                   	nop
  40190a:	90                   	nop
  40190b:	90                   	nop
  40190c:	90                   	nop
  40190d:	90                   	nop
  40190e:	90                   	nop
  40190f:	90                   	nop

0000000000401910 <__mingw_raise_matherr>:
  401910:	48 83 ec 58          	sub    $0x58,%rsp
  401914:	48 8b 05 e5 5c 00 00 	mov    0x5ce5(%rip),%rax        # 407600 <stUserMathErr>
  40191b:	48 85 c0             	test   %rax,%rax
  40191e:	74 2c                	je     40194c <__mingw_raise_matherr+0x3c>
  401920:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401927:	00 00 
  401929:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40192d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401932:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401937:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40193d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401943:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401949:	ff d0                	callq  *%rax
  40194b:	90                   	nop
  40194c:	48 83 c4 58          	add    $0x58,%rsp
  401950:	c3                   	retq   
  401951:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40195d:	00 00 00 

0000000000401960 <__mingw_setusermatherr>:
  401960:	48 89 0d 99 5c 00 00 	mov    %rcx,0x5c99(%rip)        # 407600 <stUserMathErr>
  401967:	e9 54 11 00 00       	jmpq   402ac0 <__setusermatherr>
  40196c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401970 <_matherr>:
  401970:	56                   	push   %rsi
  401971:	53                   	push   %rbx
  401972:	48 83 ec 78          	sub    $0x78,%rsp
  401976:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  40197b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401980:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401986:	83 39 06             	cmpl   $0x6,(%rcx)
  401989:	0f 87 d1 00 00 00    	ja     401a60 <_matherr+0xf0>
  40198f:	8b 01                	mov    (%rcx),%eax
  401991:	48 8d 15 0c 28 00 00 	lea    0x280c(%rip),%rdx        # 4041a4 <.rdata+0x124>
  401998:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40199c:	48 01 d0             	add    %rdx,%rax
  40199f:	ff e0                	jmpq   *%rax
  4019a1:	48 8d 1d d8 26 00 00 	lea    0x26d8(%rip),%rbx        # 404080 <.rdata>
  4019a8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  4019ac:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  4019b2:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  4019b7:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  4019bc:	b9 02 00 00 00       	mov    $0x2,%ecx
  4019c1:	e8 2a 11 00 00       	callq  402af0 <__acrt_iob_func>
  4019c6:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  4019cd:	49 89 f1             	mov    %rsi,%r9
  4019d0:	49 89 d8             	mov    %rbx,%r8
  4019d3:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  4019d9:	48 8d 15 98 27 00 00 	lea    0x2798(%rip),%rdx        # 404178 <.rdata+0xf8>
  4019e0:	48 89 c1             	mov    %rax,%rcx
  4019e3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  4019e9:	e8 92 10 00 00       	callq  402a80 <fprintf>
  4019ee:	90                   	nop
  4019ef:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  4019f4:	31 c0                	xor    %eax,%eax
  4019f6:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  4019fb:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401a01:	48 83 c4 78          	add    $0x78,%rsp
  401a05:	5b                   	pop    %rbx
  401a06:	5e                   	pop    %rsi
  401a07:	c3                   	retq   
  401a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401a0f:	00 
  401a10:	48 8d 1d 88 26 00 00 	lea    0x2688(%rip),%rbx        # 40409f <.rdata+0x1f>
  401a17:	eb 8f                	jmp    4019a8 <_matherr+0x38>
  401a19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a20:	48 8d 1d 99 26 00 00 	lea    0x2699(%rip),%rbx        # 4040c0 <.rdata+0x40>
  401a27:	e9 7c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a2c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a30:	48 8d 1d f9 26 00 00 	lea    0x26f9(%rip),%rbx        # 404130 <.rdata+0xb0>
  401a37:	e9 6c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a40:	48 8d 1d c1 26 00 00 	lea    0x26c1(%rip),%rbx        # 404108 <.rdata+0x88>
  401a47:	e9 5c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a50:	48 8d 1d 89 26 00 00 	lea    0x2689(%rip),%rbx        # 4040e0 <.rdata+0x60>
  401a57:	e9 4c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a5c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a60:	48 8d 1d ff 26 00 00 	lea    0x26ff(%rip),%rbx        # 404166 <.rdata+0xe6>
  401a67:	e9 3c ff ff ff       	jmpq   4019a8 <_matherr+0x38>
  401a6c:	90                   	nop
  401a6d:	90                   	nop
  401a6e:	90                   	nop
  401a6f:	90                   	nop

0000000000401a70 <_fpreset>:
  401a70:	db e3                	fninit 
  401a72:	c3                   	retq   
  401a73:	90                   	nop
  401a74:	90                   	nop
  401a75:	90                   	nop
  401a76:	90                   	nop
  401a77:	90                   	nop
  401a78:	90                   	nop
  401a79:	90                   	nop
  401a7a:	90                   	nop
  401a7b:	90                   	nop
  401a7c:	90                   	nop
  401a7d:	90                   	nop
  401a7e:	90                   	nop
  401a7f:	90                   	nop

0000000000401a80 <_decode_pointer>:
  401a80:	48 89 c8             	mov    %rcx,%rax
  401a83:	c3                   	retq   
  401a84:	66 90                	xchg   %ax,%ax
  401a86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a8d:	00 00 00 

0000000000401a90 <_encode_pointer>:
  401a90:	48 89 c8             	mov    %rcx,%rax
  401a93:	c3                   	retq   
  401a94:	90                   	nop
  401a95:	90                   	nop
  401a96:	90                   	nop
  401a97:	90                   	nop
  401a98:	90                   	nop
  401a99:	90                   	nop
  401a9a:	90                   	nop
  401a9b:	90                   	nop
  401a9c:	90                   	nop
  401a9d:	90                   	nop
  401a9e:	90                   	nop
  401a9f:	90                   	nop

0000000000401aa0 <__write_memory.part.0>:
  401aa0:	41 54                	push   %r12
  401aa2:	55                   	push   %rbp
  401aa3:	57                   	push   %rdi
  401aa4:	56                   	push   %rsi
  401aa5:	53                   	push   %rbx
  401aa6:	48 83 ec 50          	sub    $0x50,%rsp
  401aaa:	48 63 35 73 5b 00 00 	movslq 0x5b73(%rip),%rsi        # 407624 <maxSections>
  401ab1:	85 f6                	test   %esi,%esi
  401ab3:	48 89 cb             	mov    %rcx,%rbx
  401ab6:	48 89 d5             	mov    %rdx,%rbp
  401ab9:	4c 89 c7             	mov    %r8,%rdi
  401abc:	0f 8e 66 01 00 00    	jle    401c28 <__write_memory.part.0+0x188>
  401ac2:	48 8b 05 5f 5b 00 00 	mov    0x5b5f(%rip),%rax        # 407628 <the_secs>
  401ac9:	31 c9                	xor    %ecx,%ecx
  401acb:	48 83 c0 18          	add    $0x18,%rax
  401acf:	90                   	nop
  401ad0:	48 8b 10             	mov    (%rax),%rdx
  401ad3:	48 39 d3             	cmp    %rdx,%rbx
  401ad6:	72 14                	jb     401aec <__write_memory.part.0+0x4c>
  401ad8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401adc:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401ae0:	4c 01 c2             	add    %r8,%rdx
  401ae3:	48 39 d3             	cmp    %rdx,%rbx
  401ae6:	0f 82 89 00 00 00    	jb     401b75 <__write_memory.part.0+0xd5>
  401aec:	83 c1 01             	add    $0x1,%ecx
  401aef:	48 83 c0 28          	add    $0x28,%rax
  401af3:	39 f1                	cmp    %esi,%ecx
  401af5:	75 d9                	jne    401ad0 <__write_memory.part.0+0x30>
  401af7:	48 89 d9             	mov    %rbx,%rcx
  401afa:	e8 41 0c 00 00       	callq  402740 <__mingw_GetSectionForAddress>
  401aff:	48 85 c0             	test   %rax,%rax
  401b02:	49 89 c4             	mov    %rax,%r12
  401b05:	0f 84 52 01 00 00    	je     401c5d <__write_memory.part.0+0x1bd>
  401b0b:	48 8b 05 16 5b 00 00 	mov    0x5b16(%rip),%rax        # 407628 <the_secs>
  401b12:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  401b16:	48 c1 e6 03          	shl    $0x3,%rsi
  401b1a:	48 01 f0             	add    %rsi,%rax
  401b1d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  401b21:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401b27:	e8 44 0d 00 00       	callq  402870 <_GetPEImageBase>
  401b2c:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  401b31:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b36:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b3c:	48 01 c1             	add    %rax,%rcx
  401b3f:	48 8b 05 e2 5a 00 00 	mov    0x5ae2(%rip),%rax        # 407628 <the_secs>
  401b46:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  401b4b:	ff 15 2b 67 00 00    	callq  *0x672b(%rip)        # 40827c <__imp_VirtualQuery>
  401b51:	48 85 c0             	test   %rax,%rax
  401b54:	0f 84 e6 00 00 00    	je     401c40 <__write_memory.part.0+0x1a0>
  401b5a:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b5e:	8d 50 fc             	lea    -0x4(%rax),%edx
  401b61:	83 e2 fb             	and    $0xfffffffb,%edx
  401b64:	74 08                	je     401b6e <__write_memory.part.0+0xce>
  401b66:	83 e8 40             	sub    $0x40,%eax
  401b69:	83 e0 bf             	and    $0xffffffbf,%eax
  401b6c:	75 62                	jne    401bd0 <__write_memory.part.0+0x130>
  401b6e:	83 05 af 5a 00 00 01 	addl   $0x1,0x5aaf(%rip)        # 407624 <maxSections>
  401b75:	83 ff 08             	cmp    $0x8,%edi
  401b78:	73 29                	jae    401ba3 <__write_memory.part.0+0x103>
  401b7a:	40 f6 c7 04          	test   $0x4,%dil
  401b7e:	0f 85 90 00 00 00    	jne    401c14 <__write_memory.part.0+0x174>
  401b84:	85 ff                	test   %edi,%edi
  401b86:	74 10                	je     401b98 <__write_memory.part.0+0xf8>
  401b88:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401b8c:	40 f6 c7 02          	test   $0x2,%dil
  401b90:	88 03                	mov    %al,(%rbx)
  401b92:	0f 85 97 00 00 00    	jne    401c2f <__write_memory.part.0+0x18f>
  401b98:	48 83 c4 50          	add    $0x50,%rsp
  401b9c:	5b                   	pop    %rbx
  401b9d:	5e                   	pop    %rsi
  401b9e:	5f                   	pop    %rdi
  401b9f:	5d                   	pop    %rbp
  401ba0:	41 5c                	pop    %r12
  401ba2:	c3                   	retq   
  401ba3:	89 f8                	mov    %edi,%eax
  401ba5:	83 ef 01             	sub    $0x1,%edi
  401ba8:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  401bad:	83 ff 08             	cmp    $0x8,%edi
  401bb0:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  401bb5:	72 e1                	jb     401b98 <__write_memory.part.0+0xf8>
  401bb7:	83 e7 f8             	and    $0xfffffff8,%edi
  401bba:	31 c0                	xor    %eax,%eax
  401bbc:	89 c2                	mov    %eax,%edx
  401bbe:	83 c0 08             	add    $0x8,%eax
  401bc1:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  401bc6:	39 f8                	cmp    %edi,%eax
  401bc8:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  401bcc:	72 ee                	jb     401bbc <__write_memory.part.0+0x11c>
  401bce:	eb c8                	jmp    401b98 <__write_memory.part.0+0xf8>
  401bd0:	48 03 35 51 5a 00 00 	add    0x5a51(%rip),%rsi        # 407628 <the_secs>
  401bd7:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401bdd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401be2:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401be7:	49 89 f1             	mov    %rsi,%r9
  401bea:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401bee:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  401bf2:	ff 15 7c 66 00 00    	callq  *0x667c(%rip)        # 408274 <__imp_VirtualProtect>
  401bf8:	85 c0                	test   %eax,%eax
  401bfa:	0f 85 6e ff ff ff    	jne    401b6e <__write_memory.part.0+0xce>
  401c00:	ff 15 ee 65 00 00    	callq  *0x65ee(%rip)        # 4081f4 <__imp_GetLastError>
  401c06:	48 8d 0d 2b 26 00 00 	lea    0x262b(%rip),%rcx        # 404238 <.rdata+0x78>
  401c0d:	89 c2                	mov    %eax,%edx
  401c0f:	e8 0c 10 00 00       	callq  402c20 <__report_error>
  401c14:	8b 45 00             	mov    0x0(%rbp),%eax
  401c17:	89 ff                	mov    %edi,%edi
  401c19:	89 03                	mov    %eax,(%rbx)
  401c1b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  401c1f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  401c23:	e9 70 ff ff ff       	jmpq   401b98 <__write_memory.part.0+0xf8>
  401c28:	31 f6                	xor    %esi,%esi
  401c2a:	e9 c8 fe ff ff       	jmpq   401af7 <__write_memory.part.0+0x57>
  401c2f:	89 ff                	mov    %edi,%edi
  401c31:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  401c36:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  401c3b:	e9 58 ff ff ff       	jmpq   401b98 <__write_memory.part.0+0xf8>
  401c40:	48 8b 05 e1 59 00 00 	mov    0x59e1(%rip),%rax        # 407628 <the_secs>
  401c47:	48 8d 0d b2 25 00 00 	lea    0x25b2(%rip),%rcx        # 404200 <.rdata+0x40>
  401c4e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  401c53:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  401c58:	e8 c3 0f 00 00       	callq  402c20 <__report_error>
  401c5d:	48 8d 0d 7c 25 00 00 	lea    0x257c(%rip),%rcx        # 4041e0 <.rdata+0x20>
  401c64:	48 89 da             	mov    %rbx,%rdx
  401c67:	e8 b4 0f 00 00       	callq  402c20 <__report_error>
  401c6c:	90                   	nop
  401c6d:	0f 1f 00             	nopl   (%rax)

0000000000401c70 <_pei386_runtime_relocator>:
  401c70:	55                   	push   %rbp
  401c71:	41 57                	push   %r15
  401c73:	41 56                	push   %r14
  401c75:	41 55                	push   %r13
  401c77:	41 54                	push   %r12
  401c79:	57                   	push   %rdi
  401c7a:	56                   	push   %rsi
  401c7b:	53                   	push   %rbx
  401c7c:	48 83 ec 38          	sub    $0x38,%rsp
  401c80:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401c87:	00 
  401c88:	8b 1d 92 59 00 00    	mov    0x5992(%rip),%ebx        # 407620 <was_init.95174>
  401c8e:	85 db                	test   %ebx,%ebx
  401c90:	74 11                	je     401ca3 <_pei386_runtime_relocator+0x33>
  401c92:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401c96:	5b                   	pop    %rbx
  401c97:	5e                   	pop    %rsi
  401c98:	5f                   	pop    %rdi
  401c99:	41 5c                	pop    %r12
  401c9b:	41 5d                	pop    %r13
  401c9d:	41 5e                	pop    %r14
  401c9f:	41 5f                	pop    %r15
  401ca1:	5d                   	pop    %rbp
  401ca2:	c3                   	retq   
  401ca3:	c7 05 73 59 00 00 01 	movl   $0x1,0x5973(%rip)        # 407620 <was_init.95174>
  401caa:	00 00 00 
  401cad:	e8 0e 0b 00 00       	callq  4027c0 <__mingw_GetSectionCount>
  401cb2:	48 98                	cltq   
  401cb4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401cb8:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  401cbf:	00 
  401cc0:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401cc4:	e8 37 0d 00 00       	callq  402a00 <___chkstk_ms>
  401cc9:	4c 8b 25 40 26 00 00 	mov    0x2640(%rip),%r12        # 404310 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401cd0:	c7 05 4a 59 00 00 00 	movl   $0x0,0x594a(%rip)        # 407624 <maxSections>
  401cd7:	00 00 00 
  401cda:	48 8b 35 3f 26 00 00 	mov    0x263f(%rip),%rsi        # 404320 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401ce1:	48 29 c4             	sub    %rax,%rsp
  401ce4:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401ce9:	48 89 05 38 59 00 00 	mov    %rax,0x5938(%rip)        # 407628 <the_secs>
  401cf0:	4c 89 e0             	mov    %r12,%rax
  401cf3:	48 29 f0             	sub    %rsi,%rax
  401cf6:	48 83 f8 07          	cmp    $0x7,%rax
  401cfa:	7e 96                	jle    401c92 <_pei386_runtime_relocator+0x22>
  401cfc:	48 83 f8 0b          	cmp    $0xb,%rax
  401d00:	8b 16                	mov    (%rsi),%edx
  401d02:	0f 8e c8 00 00 00    	jle    401dd0 <_pei386_runtime_relocator+0x160>
  401d08:	85 d2                	test   %edx,%edx
  401d0a:	0f 84 a4 00 00 00    	je     401db4 <_pei386_runtime_relocator+0x144>
  401d10:	4c 39 e6             	cmp    %r12,%rsi
  401d13:	0f 83 79 ff ff ff    	jae    401c92 <_pei386_runtime_relocator+0x22>
  401d19:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  401d1d:	49 83 c4 07          	add    $0x7,%r12
  401d21:	4c 8b 2d 18 26 00 00 	mov    0x2618(%rip),%r13        # 404340 <.refptr.__image_base__>
  401d28:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401d2c:	4d 29 f4             	sub    %r14,%r12
  401d2f:	49 c1 ec 03          	shr    $0x3,%r12
  401d33:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  401d38:	eb 0a                	jmp    401d44 <_pei386_runtime_relocator+0xd4>
  401d3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401d40:	49 83 c6 08          	add    $0x8,%r14
  401d44:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401d47:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401d4d:	48 89 fa             	mov    %rdi,%rdx
  401d50:	8b 06                	mov    (%rsi),%eax
  401d52:	4c 89 f6             	mov    %r14,%rsi
  401d55:	4c 01 e9             	add    %r13,%rcx
  401d58:	03 01                	add    (%rcx),%eax
  401d5a:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401d5d:	e8 3e fd ff ff       	callq  401aa0 <__write_memory.part.0>
  401d62:	4d 39 e6             	cmp    %r12,%r14
  401d65:	75 d9                	jne    401d40 <_pei386_runtime_relocator+0xd0>
  401d67:	8b 05 b7 58 00 00    	mov    0x58b7(%rip),%eax        # 407624 <maxSections>
  401d6d:	31 f6                	xor    %esi,%esi
  401d6f:	4c 8b 25 fe 64 00 00 	mov    0x64fe(%rip),%r12        # 408274 <__imp_VirtualProtect>
  401d76:	85 c0                	test   %eax,%eax
  401d78:	0f 8e 14 ff ff ff    	jle    401c92 <_pei386_runtime_relocator+0x22>
  401d7e:	66 90                	xchg   %ax,%ax
  401d80:	48 8b 05 a1 58 00 00 	mov    0x58a1(%rip),%rax        # 407628 <the_secs>
  401d87:	48 01 f0             	add    %rsi,%rax
  401d8a:	44 8b 00             	mov    (%rax),%r8d
  401d8d:	45 85 c0             	test   %r8d,%r8d
  401d90:	74 0e                	je     401da0 <_pei386_runtime_relocator+0x130>
  401d92:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401d96:	49 89 f9             	mov    %rdi,%r9
  401d99:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401d9d:	41 ff d4             	callq  *%r12
  401da0:	83 c3 01             	add    $0x1,%ebx
  401da3:	48 83 c6 28          	add    $0x28,%rsi
  401da7:	3b 1d 77 58 00 00    	cmp    0x5877(%rip),%ebx        # 407624 <maxSections>
  401dad:	7c d1                	jl     401d80 <_pei386_runtime_relocator+0x110>
  401daf:	e9 de fe ff ff       	jmpq   401c92 <_pei386_runtime_relocator+0x22>
  401db4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401db7:	85 c9                	test   %ecx,%ecx
  401db9:	0f 85 51 ff ff ff    	jne    401d10 <_pei386_runtime_relocator+0xa0>
  401dbf:	8b 56 08             	mov    0x8(%rsi),%edx
  401dc2:	85 d2                	test   %edx,%edx
  401dc4:	75 1d                	jne    401de3 <_pei386_runtime_relocator+0x173>
  401dc6:	8b 56 0c             	mov    0xc(%rsi),%edx
  401dc9:	48 83 c6 0c          	add    $0xc,%rsi
  401dcd:	0f 1f 00             	nopl   (%rax)
  401dd0:	85 d2                	test   %edx,%edx
  401dd2:	0f 85 38 ff ff ff    	jne    401d10 <_pei386_runtime_relocator+0xa0>
  401dd8:	8b 46 04             	mov    0x4(%rsi),%eax
  401ddb:	85 c0                	test   %eax,%eax
  401ddd:	0f 85 2d ff ff ff    	jne    401d10 <_pei386_runtime_relocator+0xa0>
  401de3:	8b 56 08             	mov    0x8(%rsi),%edx
  401de6:	83 fa 01             	cmp    $0x1,%edx
  401de9:	0f 85 2f 01 00 00    	jne    401f1e <_pei386_runtime_relocator+0x2ae>
  401def:	4c 8b 2d 4a 25 00 00 	mov    0x254a(%rip),%r13        # 404340 <.refptr.__image_base__>
  401df6:	48 83 c6 0c          	add    $0xc,%rsi
  401dfa:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401e01:	ff ff ff 
  401e04:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  401e08:	4c 39 e6             	cmp    %r12,%rsi
  401e0b:	72 48                	jb     401e55 <_pei386_runtime_relocator+0x1e5>
  401e0d:	e9 80 fe ff ff       	jmpq   401c92 <_pei386_runtime_relocator+0x22>
  401e12:	0f 86 b8 00 00 00    	jbe    401ed0 <_pei386_runtime_relocator+0x260>
  401e18:	83 fa 20             	cmp    $0x20,%edx
  401e1b:	0f 84 7f 00 00 00    	je     401ea0 <_pei386_runtime_relocator+0x230>
  401e21:	83 fa 40             	cmp    $0x40,%edx
  401e24:	0f 85 e0 00 00 00    	jne    401f0a <_pei386_runtime_relocator+0x29a>
  401e2a:	48 8b 11             	mov    (%rcx),%rdx
  401e2d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401e33:	4c 89 f7             	mov    %r14,%rdi
  401e36:	48 29 c2             	sub    %rax,%rdx
  401e39:	4c 01 ca             	add    %r9,%rdx
  401e3c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401e40:	4c 89 f2             	mov    %r14,%rdx
  401e43:	e8 58 fc ff ff       	callq  401aa0 <__write_memory.part.0>
  401e48:	48 83 c6 0c          	add    $0xc,%rsi
  401e4c:	4c 39 e6             	cmp    %r12,%rsi
  401e4f:	0f 83 12 ff ff ff    	jae    401d67 <_pei386_runtime_relocator+0xf7>
  401e55:	8b 4e 04             	mov    0x4(%rsi),%ecx
  401e58:	8b 06                	mov    (%rsi),%eax
  401e5a:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  401e5e:	4c 01 e9             	add    %r13,%rcx
  401e61:	4c 01 e8             	add    %r13,%rax
  401e64:	83 fa 10             	cmp    $0x10,%edx
  401e67:	4c 8b 08             	mov    (%rax),%r9
  401e6a:	75 a6                	jne    401e12 <_pei386_runtime_relocator+0x1a2>
  401e6c:	44 0f b7 01          	movzwl (%rcx),%r8d
  401e70:	4c 89 f2             	mov    %r14,%rdx
  401e73:	4c 89 f7             	mov    %r14,%rdi
  401e76:	4d 89 c2             	mov    %r8,%r10
  401e79:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401e80:	66 45 85 c0          	test   %r8w,%r8w
  401e84:	4d 0f 48 c2          	cmovs  %r10,%r8
  401e88:	49 29 c0             	sub    %rax,%r8
  401e8b:	4d 01 c8             	add    %r9,%r8
  401e8e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401e92:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401e98:	e8 03 fc ff ff       	callq  401aa0 <__write_memory.part.0>
  401e9d:	eb a9                	jmp    401e48 <_pei386_runtime_relocator+0x1d8>
  401e9f:	90                   	nop
  401ea0:	8b 11                	mov    (%rcx),%edx
  401ea2:	4c 89 f7             	mov    %r14,%rdi
  401ea5:	49 89 d0             	mov    %rdx,%r8
  401ea8:	4c 09 fa             	or     %r15,%rdx
  401eab:	45 85 c0             	test   %r8d,%r8d
  401eae:	49 0f 49 d0          	cmovns %r8,%rdx
  401eb2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401eb8:	48 29 c2             	sub    %rax,%rdx
  401ebb:	4c 01 ca             	add    %r9,%rdx
  401ebe:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401ec2:	4c 89 f2             	mov    %r14,%rdx
  401ec5:	e8 d6 fb ff ff       	callq  401aa0 <__write_memory.part.0>
  401eca:	e9 79 ff ff ff       	jmpq   401e48 <_pei386_runtime_relocator+0x1d8>
  401ecf:	90                   	nop
  401ed0:	83 fa 08             	cmp    $0x8,%edx
  401ed3:	75 35                	jne    401f0a <_pei386_runtime_relocator+0x29a>
  401ed5:	44 0f b6 01          	movzbl (%rcx),%r8d
  401ed9:	4c 89 f2             	mov    %r14,%rdx
  401edc:	4c 89 f7             	mov    %r14,%rdi
  401edf:	4d 89 c2             	mov    %r8,%r10
  401ee2:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401ee9:	45 84 c0             	test   %r8b,%r8b
  401eec:	4d 0f 48 c2          	cmovs  %r10,%r8
  401ef0:	49 29 c0             	sub    %rax,%r8
  401ef3:	4d 01 c8             	add    %r9,%r8
  401ef6:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401efa:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401f00:	e8 9b fb ff ff       	callq  401aa0 <__write_memory.part.0>
  401f05:	e9 3e ff ff ff       	jmpq   401e48 <_pei386_runtime_relocator+0x1d8>
  401f0a:	48 8d 0d 87 23 00 00 	lea    0x2387(%rip),%rcx        # 404298 <.rdata+0xd8>
  401f11:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401f18:	00 
  401f19:	e8 02 0d 00 00       	callq  402c20 <__report_error>
  401f1e:	48 8d 0d 3b 23 00 00 	lea    0x233b(%rip),%rcx        # 404260 <.rdata+0xa0>
  401f25:	e8 f6 0c 00 00       	callq  402c20 <__report_error>
  401f2a:	90                   	nop
  401f2b:	90                   	nop
  401f2c:	90                   	nop
  401f2d:	90                   	nop
  401f2e:	90                   	nop
  401f2f:	90                   	nop

0000000000401f30 <__mingw_SEH_error_handler>:
  401f30:	48 83 ec 28          	sub    $0x28,%rsp
  401f34:	8b 01                	mov    (%rcx),%eax
  401f36:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  401f3b:	77 63                	ja     401fa0 <__mingw_SEH_error_handler+0x70>
  401f3d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  401f42:	73 7b                	jae    401fbf <__mingw_SEH_error_handler+0x8f>
  401f44:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  401f49:	0f 84 05 01 00 00    	je     402054 <__mingw_SEH_error_handler+0x124>
  401f4f:	0f 87 cb 00 00 00    	ja     402020 <__mingw_SEH_error_handler+0xf0>
  401f55:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  401f5a:	0f 84 f4 00 00 00    	je     402054 <__mingw_SEH_error_handler+0x124>
  401f60:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  401f65:	0f 85 c3 00 00 00    	jne    40202e <__mingw_SEH_error_handler+0xfe>
  401f6b:	31 d2                	xor    %edx,%edx
  401f6d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401f72:	e8 e1 0a 00 00       	callq  402a58 <signal>
  401f77:	48 83 f8 01          	cmp    $0x1,%rax
  401f7b:	0f 84 2f 01 00 00    	je     4020b0 <__mingw_SEH_error_handler+0x180>
  401f81:	48 85 c0             	test   %rax,%rax
  401f84:	0f 84 3c 01 00 00    	je     4020c6 <__mingw_SEH_error_handler+0x196>
  401f8a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  401f8f:	ff d0                	callq  *%rax
  401f91:	31 c0                	xor    %eax,%eax
  401f93:	48 83 c4 28          	add    $0x28,%rsp
  401f97:	c3                   	retq   
  401f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401f9f:	00 
  401fa0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  401fa5:	0f 84 b5 00 00 00    	je     402060 <__mingw_SEH_error_handler+0x130>
  401fab:	77 37                	ja     401fe4 <__mingw_SEH_error_handler+0xb4>
  401fad:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  401fb2:	0f 84 9c 00 00 00    	je     402054 <__mingw_SEH_error_handler+0x124>
  401fb8:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  401fbd:	75 6f                	jne    40202e <__mingw_SEH_error_handler+0xfe>
  401fbf:	31 d2                	xor    %edx,%edx
  401fc1:	b9 08 00 00 00       	mov    $0x8,%ecx
  401fc6:	e8 8d 0a 00 00       	callq  402a58 <signal>
  401fcb:	48 83 f8 01          	cmp    $0x1,%rax
  401fcf:	74 6f                	je     402040 <__mingw_SEH_error_handler+0x110>
  401fd1:	48 85 c0             	test   %rax,%rax
  401fd4:	74 58                	je     40202e <__mingw_SEH_error_handler+0xfe>
  401fd6:	b9 08 00 00 00       	mov    $0x8,%ecx
  401fdb:	ff d0                	callq  *%rax
  401fdd:	31 c0                	xor    %eax,%eax
  401fdf:	48 83 c4 28          	add    $0x28,%rsp
  401fe3:	c3                   	retq   
  401fe4:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  401fe9:	74 69                	je     402054 <__mingw_SEH_error_handler+0x124>
  401feb:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  401ff0:	75 3c                	jne    40202e <__mingw_SEH_error_handler+0xfe>
  401ff2:	31 d2                	xor    %edx,%edx
  401ff4:	b9 04 00 00 00       	mov    $0x4,%ecx
  401ff9:	e8 5a 0a 00 00       	callq  402a58 <signal>
  401ffe:	48 83 f8 01          	cmp    $0x1,%rax
  402002:	0f 84 88 00 00 00    	je     402090 <__mingw_SEH_error_handler+0x160>
  402008:	48 85 c0             	test   %rax,%rax
  40200b:	0f 84 b5 00 00 00    	je     4020c6 <__mingw_SEH_error_handler+0x196>
  402011:	b9 04 00 00 00       	mov    $0x4,%ecx
  402016:	ff d0                	callq  *%rax
  402018:	31 c0                	xor    %eax,%eax
  40201a:	48 83 c4 28          	add    $0x28,%rsp
  40201e:	c3                   	retq   
  40201f:	90                   	nop
  402020:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402025:	74 cb                	je     401ff2 <__mingw_SEH_error_handler+0xc2>
  402027:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  40202c:	74 26                	je     402054 <__mingw_SEH_error_handler+0x124>
  40202e:	b8 01 00 00 00       	mov    $0x1,%eax
  402033:	48 83 c4 28          	add    $0x28,%rsp
  402037:	c3                   	retq   
  402038:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40203f:	00 
  402040:	ba 01 00 00 00       	mov    $0x1,%edx
  402045:	b9 08 00 00 00       	mov    $0x8,%ecx
  40204a:	e8 09 0a 00 00       	callq  402a58 <signal>
  40204f:	e8 1c fa ff ff       	callq  401a70 <_fpreset>
  402054:	31 c0                	xor    %eax,%eax
  402056:	48 83 c4 28          	add    $0x28,%rsp
  40205a:	c3                   	retq   
  40205b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402060:	31 d2                	xor    %edx,%edx
  402062:	b9 08 00 00 00       	mov    $0x8,%ecx
  402067:	e8 ec 09 00 00       	callq  402a58 <signal>
  40206c:	48 83 f8 01          	cmp    $0x1,%rax
  402070:	0f 85 5b ff ff ff    	jne    401fd1 <__mingw_SEH_error_handler+0xa1>
  402076:	ba 01 00 00 00       	mov    $0x1,%edx
  40207b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402080:	e8 d3 09 00 00       	callq  402a58 <signal>
  402085:	31 c0                	xor    %eax,%eax
  402087:	e9 07 ff ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>
  40208c:	0f 1f 40 00          	nopl   0x0(%rax)
  402090:	ba 01 00 00 00       	mov    $0x1,%edx
  402095:	b9 04 00 00 00       	mov    $0x4,%ecx
  40209a:	e8 b9 09 00 00       	callq  402a58 <signal>
  40209f:	31 c0                	xor    %eax,%eax
  4020a1:	e9 ed fe ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>
  4020a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4020ad:	00 00 00 
  4020b0:	ba 01 00 00 00       	mov    $0x1,%edx
  4020b5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4020ba:	e8 99 09 00 00       	callq  402a58 <signal>
  4020bf:	31 c0                	xor    %eax,%eax
  4020c1:	e9 cd fe ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>
  4020c6:	b8 04 00 00 00       	mov    $0x4,%eax
  4020cb:	e9 c3 fe ff ff       	jmpq   401f93 <__mingw_SEH_error_handler+0x63>

00000000004020d0 <__mingw_init_ehandler>:
  4020d0:	41 54                	push   %r12
  4020d2:	55                   	push   %rbp
  4020d3:	57                   	push   %rdi
  4020d4:	56                   	push   %rsi
  4020d5:	53                   	push   %rbx
  4020d6:	48 83 ec 20          	sub    $0x20,%rsp
  4020da:	e8 91 07 00 00       	callq  402870 <_GetPEImageBase>
  4020df:	48 89 c5             	mov    %rax,%rbp
  4020e2:	8b 05 60 55 00 00    	mov    0x5560(%rip),%eax        # 407648 <was_here.95013>
  4020e8:	85 c0                	test   %eax,%eax
  4020ea:	75 25                	jne    402111 <__mingw_init_ehandler+0x41>
  4020ec:	48 85 ed             	test   %rbp,%rbp
  4020ef:	74 20                	je     402111 <__mingw_init_ehandler+0x41>
  4020f1:	48 8d 0d d8 21 00 00 	lea    0x21d8(%rip),%rcx        # 4042d0 <.rdata>
  4020f8:	c7 05 46 55 00 00 01 	movl   $0x1,0x5546(%rip)        # 407648 <was_here.95013>
  4020ff:	00 00 00 
  402102:	e8 a9 05 00 00       	callq  4026b0 <_FindPESectionByName>
  402107:	48 85 c0             	test   %rax,%rax
  40210a:	74 14                	je     402120 <__mingw_init_ehandler+0x50>
  40210c:	b8 01 00 00 00       	mov    $0x1,%eax
  402111:	48 83 c4 20          	add    $0x20,%rsp
  402115:	5b                   	pop    %rbx
  402116:	5e                   	pop    %rsi
  402117:	5f                   	pop    %rdi
  402118:	5d                   	pop    %rbp
  402119:	41 5c                	pop    %r12
  40211b:	c3                   	retq   
  40211c:	0f 1f 40 00          	nopl   0x0(%rax)
  402120:	48 8d 1d 39 56 00 00 	lea    0x5639(%rip),%rbx        # 407760 <emu_pdata>
  402127:	b9 30 00 00 00       	mov    $0x30,%ecx
  40212c:	31 f6                	xor    %esi,%esi
  40212e:	48 8d 15 2b 55 00 00 	lea    0x552b(%rip),%rdx        # 407660 <emu_xdata>
  402135:	48 89 df             	mov    %rbx,%rdi
  402138:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40213b:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 401f30 <__mingw_SEH_error_handler>
  402142:	b9 20 00 00 00       	mov    $0x20,%ecx
  402147:	48 89 d7             	mov    %rdx,%rdi
  40214a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40214d:	49 29 ec             	sub    %rbp,%r12
  402150:	48 89 d7             	mov    %rdx,%rdi
  402153:	eb 2e                	jmp    402183 <__mingw_init_ehandler+0xb3>
  402155:	c6 07 09             	movb   $0x9,(%rdi)
  402158:	48 83 c6 01          	add    $0x1,%rsi
  40215c:	48 83 c3 0c          	add    $0xc,%rbx
  402160:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  402164:	8b 48 0c             	mov    0xc(%rax),%ecx
  402167:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  40216a:	03 48 08             	add    0x8(%rax),%ecx
  40216d:	48 89 f8             	mov    %rdi,%rax
  402170:	48 83 c7 08          	add    $0x8,%rdi
  402174:	48 29 e8             	sub    %rbp,%rax
  402177:	89 43 fc             	mov    %eax,-0x4(%rbx)
  40217a:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  40217d:	48 83 fe 20          	cmp    $0x20,%rsi
  402181:	74 32                	je     4021b5 <__mingw_init_ehandler+0xe5>
  402183:	48 89 f1             	mov    %rsi,%rcx
  402186:	e8 75 06 00 00       	callq  402800 <_FindPESectionExec>
  40218b:	48 85 c0             	test   %rax,%rax
  40218e:	75 c5                	jne    402155 <__mingw_init_ehandler+0x85>
  402190:	48 85 f6             	test   %rsi,%rsi
  402193:	89 f2                	mov    %esi,%edx
  402195:	0f 84 71 ff ff ff    	je     40210c <__mingw_init_ehandler+0x3c>
  40219b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4021a0:	48 8d 0d b9 55 00 00 	lea    0x55b9(%rip),%rcx        # 407760 <emu_pdata>
  4021a7:	49 89 e8             	mov    %rbp,%r8
  4021aa:	ff 15 7c 60 00 00    	callq  *0x607c(%rip)        # 40822c <__imp_RtlAddFunctionTable>
  4021b0:	e9 57 ff ff ff       	jmpq   40210c <__mingw_init_ehandler+0x3c>
  4021b5:	ba 20 00 00 00       	mov    $0x20,%edx
  4021ba:	eb e4                	jmp    4021a0 <__mingw_init_ehandler+0xd0>
  4021bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004021c0 <_gnu_exception_handler>:
  4021c0:	53                   	push   %rbx
  4021c1:	48 83 ec 20          	sub    $0x20,%rsp
  4021c5:	48 8b 11             	mov    (%rcx),%rdx
  4021c8:	8b 02                	mov    (%rdx),%eax
  4021ca:	48 89 cb             	mov    %rcx,%rbx
  4021cd:	89 c1                	mov    %eax,%ecx
  4021cf:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4021d5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4021db:	0f 84 bf 00 00 00    	je     4022a0 <_gnu_exception_handler+0xe0>
  4021e1:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4021e6:	77 68                	ja     402250 <_gnu_exception_handler+0x90>
  4021e8:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4021ed:	73 7c                	jae    40226b <_gnu_exception_handler+0xab>
  4021ef:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4021f4:	0f 84 b0 00 00 00    	je     4022aa <_gnu_exception_handler+0xea>
  4021fa:	0f 87 f4 00 00 00    	ja     4022f4 <_gnu_exception_handler+0x134>
  402200:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402205:	0f 84 9f 00 00 00    	je     4022aa <_gnu_exception_handler+0xea>
  40220b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402210:	75 1f                	jne    402231 <_gnu_exception_handler+0x71>
  402212:	31 d2                	xor    %edx,%edx
  402214:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402219:	e8 3a 08 00 00       	callq  402a58 <signal>
  40221e:	48 83 f8 01          	cmp    $0x1,%rax
  402222:	0f 84 51 01 00 00    	je     402379 <_gnu_exception_handler+0x1b9>
  402228:	48 85 c0             	test   %rax,%rax
  40222b:	0f 85 0f 01 00 00    	jne    402340 <_gnu_exception_handler+0x180>
  402231:	48 8b 05 08 54 00 00 	mov    0x5408(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  402238:	48 85 c0             	test   %rax,%rax
  40223b:	0f 84 10 01 00 00    	je     402351 <_gnu_exception_handler+0x191>
  402241:	48 89 d9             	mov    %rbx,%rcx
  402244:	48 83 c4 20          	add    $0x20,%rsp
  402248:	5b                   	pop    %rbx
  402249:	48 ff e0             	rex.W jmpq *%rax
  40224c:	0f 1f 40 00          	nopl   0x0(%rax)
  402250:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402255:	0f 84 b5 00 00 00    	je     402310 <_gnu_exception_handler+0x150>
  40225b:	77 58                	ja     4022b5 <_gnu_exception_handler+0xf5>
  40225d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402262:	74 46                	je     4022aa <_gnu_exception_handler+0xea>
  402264:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  402269:	75 c6                	jne    402231 <_gnu_exception_handler+0x71>
  40226b:	31 d2                	xor    %edx,%edx
  40226d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402272:	e8 e1 07 00 00       	callq  402a58 <signal>
  402277:	48 83 f8 01          	cmp    $0x1,%rax
  40227b:	0f 84 df 00 00 00    	je     402360 <_gnu_exception_handler+0x1a0>
  402281:	48 85 c0             	test   %rax,%rax
  402284:	74 ab                	je     402231 <_gnu_exception_handler+0x71>
  402286:	b9 08 00 00 00       	mov    $0x8,%ecx
  40228b:	ff d0                	callq  *%rax
  40228d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402292:	48 83 c4 20          	add    $0x20,%rsp
  402296:	5b                   	pop    %rbx
  402297:	c3                   	retq   
  402298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40229f:	00 
  4022a0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4022a4:	0f 85 37 ff ff ff    	jne    4021e1 <_gnu_exception_handler+0x21>
  4022aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022af:	48 83 c4 20          	add    $0x20,%rsp
  4022b3:	5b                   	pop    %rbx
  4022b4:	c3                   	retq   
  4022b5:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4022ba:	74 ee                	je     4022aa <_gnu_exception_handler+0xea>
  4022bc:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4022c1:	0f 85 6a ff ff ff    	jne    402231 <_gnu_exception_handler+0x71>
  4022c7:	31 d2                	xor    %edx,%edx
  4022c9:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022ce:	e8 85 07 00 00       	callq  402a58 <signal>
  4022d3:	48 83 f8 01          	cmp    $0x1,%rax
  4022d7:	0f 84 b3 00 00 00    	je     402390 <_gnu_exception_handler+0x1d0>
  4022dd:	48 85 c0             	test   %rax,%rax
  4022e0:	0f 84 4b ff ff ff    	je     402231 <_gnu_exception_handler+0x71>
  4022e6:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022eb:	ff d0                	callq  *%rax
  4022ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022f2:	eb 9e                	jmp    402292 <_gnu_exception_handler+0xd2>
  4022f4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4022f9:	74 cc                	je     4022c7 <_gnu_exception_handler+0x107>
  4022fb:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402300:	0f 85 2b ff ff ff    	jne    402231 <_gnu_exception_handler+0x71>
  402306:	eb a2                	jmp    4022aa <_gnu_exception_handler+0xea>
  402308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40230f:	00 
  402310:	31 d2                	xor    %edx,%edx
  402312:	b9 08 00 00 00       	mov    $0x8,%ecx
  402317:	e8 3c 07 00 00       	callq  402a58 <signal>
  40231c:	48 83 f8 01          	cmp    $0x1,%rax
  402320:	0f 85 5b ff ff ff    	jne    402281 <_gnu_exception_handler+0xc1>
  402326:	ba 01 00 00 00       	mov    $0x1,%edx
  40232b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402330:	e8 23 07 00 00       	callq  402a58 <signal>
  402335:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40233a:	e9 53 ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  40233f:	90                   	nop
  402340:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402345:	ff d0                	callq  *%rax
  402347:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40234c:	e9 41 ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  402351:	31 c0                	xor    %eax,%eax
  402353:	e9 3a ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  402358:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40235f:	00 
  402360:	ba 01 00 00 00       	mov    $0x1,%edx
  402365:	b9 08 00 00 00       	mov    $0x8,%ecx
  40236a:	e8 e9 06 00 00       	callq  402a58 <signal>
  40236f:	e8 fc f6 ff ff       	callq  401a70 <_fpreset>
  402374:	e9 31 ff ff ff       	jmpq   4022aa <_gnu_exception_handler+0xea>
  402379:	ba 01 00 00 00       	mov    $0x1,%edx
  40237e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402383:	e8 d0 06 00 00       	callq  402a58 <signal>
  402388:	83 c8 ff             	or     $0xffffffff,%eax
  40238b:	e9 02 ff ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  402390:	ba 01 00 00 00       	mov    $0x1,%edx
  402395:	b9 04 00 00 00       	mov    $0x4,%ecx
  40239a:	e8 b9 06 00 00       	callq  402a58 <signal>
  40239f:	83 c8 ff             	or     $0xffffffff,%eax
  4023a2:	e9 eb fe ff ff       	jmpq   402292 <_gnu_exception_handler+0xd2>
  4023a7:	90                   	nop
  4023a8:	90                   	nop
  4023a9:	90                   	nop
  4023aa:	90                   	nop
  4023ab:	90                   	nop
  4023ac:	90                   	nop
  4023ad:	90                   	nop
  4023ae:	90                   	nop
  4023af:	90                   	nop

00000000004023b0 <__mingwthr_run_key_dtors.part.0>:
  4023b0:	55                   	push   %rbp
  4023b1:	57                   	push   %rdi
  4023b2:	56                   	push   %rsi
  4023b3:	53                   	push   %rbx
  4023b4:	48 83 ec 28          	sub    $0x28,%rsp
  4023b8:	48 8d 0d 41 55 00 00 	lea    0x5541(%rip),%rcx        # 407900 <__mingwthr_cs>
  4023bf:	ff 15 0f 5e 00 00    	callq  *0x5e0f(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  4023c5:	48 8b 1d 14 55 00 00 	mov    0x5514(%rip),%rbx        # 4078e0 <key_dtor_list>
  4023cc:	48 85 db             	test   %rbx,%rbx
  4023cf:	74 33                	je     402404 <__mingwthr_run_key_dtors.part.0+0x54>
  4023d1:	48 8b 2d 8c 5e 00 00 	mov    0x5e8c(%rip),%rbp        # 408264 <__imp_TlsGetValue>
  4023d8:	48 8b 3d 15 5e 00 00 	mov    0x5e15(%rip),%rdi        # 4081f4 <__imp_GetLastError>
  4023df:	90                   	nop
  4023e0:	8b 0b                	mov    (%rbx),%ecx
  4023e2:	ff d5                	callq  *%rbp
  4023e4:	48 89 c6             	mov    %rax,%rsi
  4023e7:	ff d7                	callq  *%rdi
  4023e9:	85 c0                	test   %eax,%eax
  4023eb:	75 0e                	jne    4023fb <__mingwthr_run_key_dtors.part.0+0x4b>
  4023ed:	48 85 f6             	test   %rsi,%rsi
  4023f0:	74 09                	je     4023fb <__mingwthr_run_key_dtors.part.0+0x4b>
  4023f2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4023f6:	48 89 f1             	mov    %rsi,%rcx
  4023f9:	ff d0                	callq  *%rax
  4023fb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4023ff:	48 85 db             	test   %rbx,%rbx
  402402:	75 dc                	jne    4023e0 <__mingwthr_run_key_dtors.part.0+0x30>
  402404:	48 8d 0d f5 54 00 00 	lea    0x54f5(%rip),%rcx        # 407900 <__mingwthr_cs>
  40240b:	48 83 c4 28          	add    $0x28,%rsp
  40240f:	5b                   	pop    %rbx
  402410:	5e                   	pop    %rsi
  402411:	5f                   	pop    %rdi
  402412:	5d                   	pop    %rbp
  402413:	48 ff 25 02 5e 00 00 	rex.W jmpq *0x5e02(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40241a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402420 <___w64_mingwthr_add_key_dtor>:
  402420:	55                   	push   %rbp
  402421:	57                   	push   %rdi
  402422:	56                   	push   %rsi
  402423:	53                   	push   %rbx
  402424:	48 83 ec 28          	sub    $0x28,%rsp
  402428:	8b 05 ba 54 00 00    	mov    0x54ba(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40242e:	31 f6                	xor    %esi,%esi
  402430:	85 c0                	test   %eax,%eax
  402432:	89 cd                	mov    %ecx,%ebp
  402434:	48 89 d7             	mov    %rdx,%rdi
  402437:	75 0b                	jne    402444 <___w64_mingwthr_add_key_dtor+0x24>
  402439:	89 f0                	mov    %esi,%eax
  40243b:	48 83 c4 28          	add    $0x28,%rsp
  40243f:	5b                   	pop    %rbx
  402440:	5e                   	pop    %rsi
  402441:	5f                   	pop    %rdi
  402442:	5d                   	pop    %rbp
  402443:	c3                   	retq   
  402444:	ba 18 00 00 00       	mov    $0x18,%edx
  402449:	b9 01 00 00 00       	mov    $0x1,%ecx
  40244e:	e8 3d 06 00 00       	callq  402a90 <calloc>
  402453:	48 85 c0             	test   %rax,%rax
  402456:	48 89 c3             	mov    %rax,%rbx
  402459:	74 3d                	je     402498 <___w64_mingwthr_add_key_dtor+0x78>
  40245b:	89 28                	mov    %ebp,(%rax)
  40245d:	48 8d 0d 9c 54 00 00 	lea    0x549c(%rip),%rcx        # 407900 <__mingwthr_cs>
  402464:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402468:	ff 15 66 5d 00 00    	callq  *0x5d66(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  40246e:	48 8b 05 6b 54 00 00 	mov    0x546b(%rip),%rax        # 4078e0 <key_dtor_list>
  402475:	48 8d 0d 84 54 00 00 	lea    0x5484(%rip),%rcx        # 407900 <__mingwthr_cs>
  40247c:	48 89 1d 5d 54 00 00 	mov    %rbx,0x545d(%rip)        # 4078e0 <key_dtor_list>
  402483:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402487:	ff 15 8f 5d 00 00    	callq  *0x5d8f(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40248d:	89 f0                	mov    %esi,%eax
  40248f:	48 83 c4 28          	add    $0x28,%rsp
  402493:	5b                   	pop    %rbx
  402494:	5e                   	pop    %rsi
  402495:	5f                   	pop    %rdi
  402496:	5d                   	pop    %rbp
  402497:	c3                   	retq   
  402498:	be ff ff ff ff       	mov    $0xffffffff,%esi
  40249d:	eb 9a                	jmp    402439 <___w64_mingwthr_add_key_dtor+0x19>
  40249f:	90                   	nop

00000000004024a0 <___w64_mingwthr_remove_key_dtor>:
  4024a0:	53                   	push   %rbx
  4024a1:	48 83 ec 20          	sub    $0x20,%rsp
  4024a5:	8b 05 3d 54 00 00    	mov    0x543d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4024ab:	85 c0                	test   %eax,%eax
  4024ad:	89 cb                	mov    %ecx,%ebx
  4024af:	75 0f                	jne    4024c0 <___w64_mingwthr_remove_key_dtor+0x20>
  4024b1:	31 c0                	xor    %eax,%eax
  4024b3:	48 83 c4 20          	add    $0x20,%rsp
  4024b7:	5b                   	pop    %rbx
  4024b8:	c3                   	retq   
  4024b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4024c0:	48 8d 0d 39 54 00 00 	lea    0x5439(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024c7:	ff 15 07 5d 00 00    	callq  *0x5d07(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  4024cd:	48 8b 05 0c 54 00 00 	mov    0x540c(%rip),%rax        # 4078e0 <key_dtor_list>
  4024d4:	48 85 c0             	test   %rax,%rax
  4024d7:	74 1a                	je     4024f3 <___w64_mingwthr_remove_key_dtor+0x53>
  4024d9:	8b 10                	mov    (%rax),%edx
  4024db:	39 d3                	cmp    %edx,%ebx
  4024dd:	75 0b                	jne    4024ea <___w64_mingwthr_remove_key_dtor+0x4a>
  4024df:	eb 4f                	jmp    402530 <___w64_mingwthr_remove_key_dtor+0x90>
  4024e1:	8b 11                	mov    (%rcx),%edx
  4024e3:	39 da                	cmp    %ebx,%edx
  4024e5:	74 29                	je     402510 <___w64_mingwthr_remove_key_dtor+0x70>
  4024e7:	48 89 c8             	mov    %rcx,%rax
  4024ea:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4024ee:	48 85 c9             	test   %rcx,%rcx
  4024f1:	75 ee                	jne    4024e1 <___w64_mingwthr_remove_key_dtor+0x41>
  4024f3:	48 8d 0d 06 54 00 00 	lea    0x5406(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024fa:	ff 15 1c 5d 00 00    	callq  *0x5d1c(%rip)        # 40821c <__imp_LeaveCriticalSection>
  402500:	31 c0                	xor    %eax,%eax
  402502:	48 83 c4 20          	add    $0x20,%rsp
  402506:	5b                   	pop    %rbx
  402507:	c3                   	retq   
  402508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40250f:	00 
  402510:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402514:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402518:	e8 5b 05 00 00       	callq  402a78 <free>
  40251d:	48 8d 0d dc 53 00 00 	lea    0x53dc(%rip),%rcx        # 407900 <__mingwthr_cs>
  402524:	ff 15 f2 5c 00 00    	callq  *0x5cf2(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40252a:	eb d4                	jmp    402500 <___w64_mingwthr_remove_key_dtor+0x60>
  40252c:	0f 1f 40 00          	nopl   0x0(%rax)
  402530:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402534:	48 89 c1             	mov    %rax,%rcx
  402537:	48 89 15 a2 53 00 00 	mov    %rdx,0x53a2(%rip)        # 4078e0 <key_dtor_list>
  40253e:	eb d8                	jmp    402518 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402540 <__mingw_TLScallback>:
  402540:	53                   	push   %rbx
  402541:	48 83 ec 20          	sub    $0x20,%rsp
  402545:	83 fa 01             	cmp    $0x1,%edx
  402548:	0f 84 92 00 00 00    	je     4025e0 <__mingw_TLScallback+0xa0>
  40254e:	72 30                	jb     402580 <__mingw_TLScallback+0x40>
  402550:	83 fa 02             	cmp    $0x2,%edx
  402553:	74 1b                	je     402570 <__mingw_TLScallback+0x30>
  402555:	83 fa 03             	cmp    $0x3,%edx
  402558:	75 1b                	jne    402575 <__mingw_TLScallback+0x35>
  40255a:	8b 05 88 53 00 00    	mov    0x5388(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402560:	85 c0                	test   %eax,%eax
  402562:	74 11                	je     402575 <__mingw_TLScallback+0x35>
  402564:	e8 47 fe ff ff       	callq  4023b0 <__mingwthr_run_key_dtors.part.0>
  402569:	eb 0a                	jmp    402575 <__mingw_TLScallback+0x35>
  40256b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402570:	e8 fb f4 ff ff       	callq  401a70 <_fpreset>
  402575:	b8 01 00 00 00       	mov    $0x1,%eax
  40257a:	48 83 c4 20          	add    $0x20,%rsp
  40257e:	5b                   	pop    %rbx
  40257f:	c3                   	retq   
  402580:	8b 05 62 53 00 00    	mov    0x5362(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402586:	85 c0                	test   %eax,%eax
  402588:	0f 85 82 00 00 00    	jne    402610 <__mingw_TLScallback+0xd0>
  40258e:	8b 05 54 53 00 00    	mov    0x5354(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402594:	83 f8 01             	cmp    $0x1,%eax
  402597:	75 dc                	jne    402575 <__mingw_TLScallback+0x35>
  402599:	48 8b 0d 40 53 00 00 	mov    0x5340(%rip),%rcx        # 4078e0 <key_dtor_list>
  4025a0:	48 85 c9             	test   %rcx,%rcx
  4025a3:	74 11                	je     4025b6 <__mingw_TLScallback+0x76>
  4025a5:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  4025a9:	e8 ca 04 00 00       	callq  402a78 <free>
  4025ae:	48 85 db             	test   %rbx,%rbx
  4025b1:	48 89 d9             	mov    %rbx,%rcx
  4025b4:	75 ef                	jne    4025a5 <__mingw_TLScallback+0x65>
  4025b6:	48 8d 0d 43 53 00 00 	lea    0x5343(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025bd:	48 c7 05 18 53 00 00 	movq   $0x0,0x5318(%rip)        # 4078e0 <key_dtor_list>
  4025c4:	00 00 00 00 
  4025c8:	c7 05 16 53 00 00 00 	movl   $0x0,0x5316(%rip)        # 4078e8 <__mingwthr_cs_init>
  4025cf:	00 00 00 
  4025d2:	ff 15 f4 5b 00 00    	callq  *0x5bf4(%rip)        # 4081cc <__IAT_start__>
  4025d8:	eb 9b                	jmp    402575 <__mingw_TLScallback+0x35>
  4025da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4025e0:	8b 05 02 53 00 00    	mov    0x5302(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025e6:	85 c0                	test   %eax,%eax
  4025e8:	74 16                	je     402600 <__mingw_TLScallback+0xc0>
  4025ea:	c7 05 f4 52 00 00 01 	movl   $0x1,0x52f4(%rip)        # 4078e8 <__mingwthr_cs_init>
  4025f1:	00 00 00 
  4025f4:	b8 01 00 00 00       	mov    $0x1,%eax
  4025f9:	48 83 c4 20          	add    $0x20,%rsp
  4025fd:	5b                   	pop    %rbx
  4025fe:	c3                   	retq   
  4025ff:	90                   	nop
  402600:	48 8d 0d f9 52 00 00 	lea    0x52f9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402607:	ff 15 07 5c 00 00    	callq  *0x5c07(%rip)        # 408214 <__imp_InitializeCriticalSection>
  40260d:	eb db                	jmp    4025ea <__mingw_TLScallback+0xaa>
  40260f:	90                   	nop
  402610:	e8 9b fd ff ff       	callq  4023b0 <__mingwthr_run_key_dtors.part.0>
  402615:	e9 74 ff ff ff       	jmpq   40258e <__mingw_TLScallback+0x4e>
  40261a:	90                   	nop
  40261b:	90                   	nop
  40261c:	90                   	nop
  40261d:	90                   	nop
  40261e:	90                   	nop
  40261f:	90                   	nop

0000000000402620 <_ValidateImageBase.part.0>:
  402620:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402624:	48 01 c1             	add    %rax,%rcx
  402627:	31 c0                	xor    %eax,%eax
  402629:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40262f:	74 01                	je     402632 <_ValidateImageBase.part.0+0x12>
  402631:	c3                   	retq   
  402632:	31 c0                	xor    %eax,%eax
  402634:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40263a:	0f 94 c0             	sete   %al
  40263d:	c3                   	retq   
  40263e:	66 90                	xchg   %ax,%ax

0000000000402640 <_ValidateImageBase>:
  402640:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402645:	74 09                	je     402650 <_ValidateImageBase+0x10>
  402647:	31 c0                	xor    %eax,%eax
  402649:	c3                   	retq   
  40264a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402650:	eb ce                	jmp    402620 <_ValidateImageBase.part.0>
  402652:	0f 1f 40 00          	nopl   0x0(%rax)
  402656:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40265d:	00 00 00 

0000000000402660 <_FindPESection>:
  402660:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402664:	48 01 c1             	add    %rax,%rcx
  402667:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40266b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402670:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402674:	85 c9                	test   %ecx,%ecx
  402676:	74 29                	je     4026a1 <_FindPESection+0x41>
  402678:	83 e9 01             	sub    $0x1,%ecx
  40267b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40267f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402684:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402688:	49 39 d0             	cmp    %rdx,%r8
  40268b:	4c 89 c1             	mov    %r8,%rcx
  40268e:	77 08                	ja     402698 <_FindPESection+0x38>
  402690:	03 48 08             	add    0x8(%rax),%ecx
  402693:	48 39 d1             	cmp    %rdx,%rcx
  402696:	77 0b                	ja     4026a3 <_FindPESection+0x43>
  402698:	48 83 c0 28          	add    $0x28,%rax
  40269c:	4c 39 c8             	cmp    %r9,%rax
  40269f:	75 e3                	jne    402684 <_FindPESection+0x24>
  4026a1:	31 c0                	xor    %eax,%eax
  4026a3:	c3                   	retq   
  4026a4:	66 90                	xchg   %ax,%ax
  4026a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4026ad:	00 00 00 

00000000004026b0 <_FindPESectionByName>:
  4026b0:	57                   	push   %rdi
  4026b1:	56                   	push   %rsi
  4026b2:	53                   	push   %rbx
  4026b3:	48 83 ec 20          	sub    $0x20,%rsp
  4026b7:	48 89 ce             	mov    %rcx,%rsi
  4026ba:	e8 91 03 00 00       	callq  402a50 <strlen>
  4026bf:	48 83 f8 08          	cmp    $0x8,%rax
  4026c3:	77 6b                	ja     402730 <_FindPESectionByName+0x80>
  4026c5:	48 8b 15 74 1c 00 00 	mov    0x1c74(%rip),%rdx        # 404340 <.refptr.__image_base__>
  4026cc:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4026d1:	75 5d                	jne    402730 <_FindPESectionByName+0x80>
  4026d3:	48 89 d1             	mov    %rdx,%rcx
  4026d6:	e8 45 ff ff ff       	callq  402620 <_ValidateImageBase.part.0>
  4026db:	85 c0                	test   %eax,%eax
  4026dd:	74 51                	je     402730 <_FindPESectionByName+0x80>
  4026df:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  4026e3:	48 01 d1             	add    %rdx,%rcx
  4026e6:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4026ea:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  4026ef:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4026f3:	85 c0                	test   %eax,%eax
  4026f5:	74 39                	je     402730 <_FindPESectionByName+0x80>
  4026f7:	83 e8 01             	sub    $0x1,%eax
  4026fa:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4026fe:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402703:	eb 09                	jmp    40270e <_FindPESectionByName+0x5e>
  402705:	48 83 c3 28          	add    $0x28,%rbx
  402709:	48 39 fb             	cmp    %rdi,%rbx
  40270c:	74 22                	je     402730 <_FindPESectionByName+0x80>
  40270e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402714:	48 89 f2             	mov    %rsi,%rdx
  402717:	48 89 d9             	mov    %rbx,%rcx
  40271a:	e8 29 03 00 00       	callq  402a48 <strncmp>
  40271f:	85 c0                	test   %eax,%eax
  402721:	75 e2                	jne    402705 <_FindPESectionByName+0x55>
  402723:	48 89 d8             	mov    %rbx,%rax
  402726:	48 83 c4 20          	add    $0x20,%rsp
  40272a:	5b                   	pop    %rbx
  40272b:	5e                   	pop    %rsi
  40272c:	5f                   	pop    %rdi
  40272d:	c3                   	retq   
  40272e:	66 90                	xchg   %ax,%ax
  402730:	31 db                	xor    %ebx,%ebx
  402732:	48 89 d8             	mov    %rbx,%rax
  402735:	48 83 c4 20          	add    $0x20,%rsp
  402739:	5b                   	pop    %rbx
  40273a:	5e                   	pop    %rsi
  40273b:	5f                   	pop    %rdi
  40273c:	c3                   	retq   
  40273d:	0f 1f 00             	nopl   (%rax)

0000000000402740 <__mingw_GetSectionForAddress>:
  402740:	48 83 ec 28          	sub    $0x28,%rsp
  402744:	4c 8b 05 f5 1b 00 00 	mov    0x1bf5(%rip),%r8        # 404340 <.refptr.__image_base__>
  40274b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402751:	48 89 ca             	mov    %rcx,%rdx
  402754:	75 57                	jne    4027ad <__mingw_GetSectionForAddress+0x6d>
  402756:	4c 89 c1             	mov    %r8,%rcx
  402759:	e8 c2 fe ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40275e:	85 c0                	test   %eax,%eax
  402760:	74 4b                	je     4027ad <__mingw_GetSectionForAddress+0x6d>
  402762:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402766:	48 89 d1             	mov    %rdx,%rcx
  402769:	4c 29 c1             	sub    %r8,%rcx
  40276c:	49 01 c0             	add    %rax,%r8
  40276f:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402774:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402779:	85 d2                	test   %edx,%edx
  40277b:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402780:	74 2b                	je     4027ad <__mingw_GetSectionForAddress+0x6d>
  402782:	83 ea 01             	sub    $0x1,%edx
  402785:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402789:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  40278e:	66 90                	xchg   %ax,%ax
  402790:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402794:	4c 39 c1             	cmp    %r8,%rcx
  402797:	4c 89 c2             	mov    %r8,%rdx
  40279a:	72 08                	jb     4027a4 <__mingw_GetSectionForAddress+0x64>
  40279c:	03 50 08             	add    0x8(%rax),%edx
  40279f:	48 39 d1             	cmp    %rdx,%rcx
  4027a2:	72 0b                	jb     4027af <__mingw_GetSectionForAddress+0x6f>
  4027a4:	48 83 c0 28          	add    $0x28,%rax
  4027a8:	4c 39 c8             	cmp    %r9,%rax
  4027ab:	75 e3                	jne    402790 <__mingw_GetSectionForAddress+0x50>
  4027ad:	31 c0                	xor    %eax,%eax
  4027af:	48 83 c4 28          	add    $0x28,%rsp
  4027b3:	c3                   	retq   
  4027b4:	66 90                	xchg   %ax,%ax
  4027b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4027bd:	00 00 00 

00000000004027c0 <__mingw_GetSectionCount>:
  4027c0:	48 83 ec 28          	sub    $0x28,%rsp
  4027c4:	48 8b 15 75 1b 00 00 	mov    0x1b75(%rip),%rdx        # 404340 <.refptr.__image_base__>
  4027cb:	45 31 c0             	xor    %r8d,%r8d
  4027ce:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4027d3:	74 0b                	je     4027e0 <__mingw_GetSectionCount+0x20>
  4027d5:	44 89 c0             	mov    %r8d,%eax
  4027d8:	48 83 c4 28          	add    $0x28,%rsp
  4027dc:	c3                   	retq   
  4027dd:	0f 1f 00             	nopl   (%rax)
  4027e0:	48 89 d1             	mov    %rdx,%rcx
  4027e3:	e8 38 fe ff ff       	callq  402620 <_ValidateImageBase.part.0>
  4027e8:	85 c0                	test   %eax,%eax
  4027ea:	74 e9                	je     4027d5 <__mingw_GetSectionCount+0x15>
  4027ec:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  4027f0:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  4027f6:	44 89 c0             	mov    %r8d,%eax
  4027f9:	48 83 c4 28          	add    $0x28,%rsp
  4027fd:	c3                   	retq   
  4027fe:	66 90                	xchg   %ax,%ax

0000000000402800 <_FindPESectionExec>:
  402800:	48 83 ec 28          	sub    $0x28,%rsp
  402804:	4c 8b 05 35 1b 00 00 	mov    0x1b35(%rip),%r8        # 404340 <.refptr.__image_base__>
  40280b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402811:	48 89 ca             	mov    %rcx,%rdx
  402814:	75 52                	jne    402868 <_FindPESectionExec+0x68>
  402816:	4c 89 c1             	mov    %r8,%rcx
  402819:	e8 02 fe ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40281e:	85 c0                	test   %eax,%eax
  402820:	74 46                	je     402868 <_FindPESectionExec+0x68>
  402822:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  402826:	4c 01 c1             	add    %r8,%rcx
  402829:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40282d:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402832:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402836:	85 c9                	test   %ecx,%ecx
  402838:	74 2e                	je     402868 <_FindPESectionExec+0x68>
  40283a:	83 e9 01             	sub    $0x1,%ecx
  40283d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402841:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  402846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40284d:	00 00 00 
  402850:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  402854:	74 09                	je     40285f <_FindPESectionExec+0x5f>
  402856:	48 85 d2             	test   %rdx,%rdx
  402859:	74 0f                	je     40286a <_FindPESectionExec+0x6a>
  40285b:	48 83 ea 01          	sub    $0x1,%rdx
  40285f:	48 83 c0 28          	add    $0x28,%rax
  402863:	48 39 c8             	cmp    %rcx,%rax
  402866:	75 e8                	jne    402850 <_FindPESectionExec+0x50>
  402868:	31 c0                	xor    %eax,%eax
  40286a:	48 83 c4 28          	add    $0x28,%rsp
  40286e:	c3                   	retq   
  40286f:	90                   	nop

0000000000402870 <_GetPEImageBase>:
  402870:	48 83 ec 28          	sub    $0x28,%rsp
  402874:	48 8b 15 c5 1a 00 00 	mov    0x1ac5(%rip),%rdx        # 404340 <.refptr.__image_base__>
  40287b:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402880:	75 1e                	jne    4028a0 <_GetPEImageBase+0x30>
  402882:	48 89 d1             	mov    %rdx,%rcx
  402885:	e8 96 fd ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40288a:	85 c0                	test   %eax,%eax
  40288c:	b8 00 00 00 00       	mov    $0x0,%eax
  402891:	48 0f 45 c2          	cmovne %rdx,%rax
  402895:	48 83 c4 28          	add    $0x28,%rsp
  402899:	c3                   	retq   
  40289a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4028a0:	31 c0                	xor    %eax,%eax
  4028a2:	48 83 c4 28          	add    $0x28,%rsp
  4028a6:	c3                   	retq   
  4028a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4028ae:	00 00 

00000000004028b0 <_IsNonwritableInCurrentImage>:
  4028b0:	48 83 ec 28          	sub    $0x28,%rsp
  4028b4:	4c 8b 05 85 1a 00 00 	mov    0x1a85(%rip),%r8        # 404340 <.refptr.__image_base__>
  4028bb:	31 c0                	xor    %eax,%eax
  4028bd:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4028c3:	48 89 ca             	mov    %rcx,%rdx
  4028c6:	74 08                	je     4028d0 <_IsNonwritableInCurrentImage+0x20>
  4028c8:	48 83 c4 28          	add    $0x28,%rsp
  4028cc:	c3                   	retq   
  4028cd:	0f 1f 00             	nopl   (%rax)
  4028d0:	4c 89 c1             	mov    %r8,%rcx
  4028d3:	e8 48 fd ff ff       	callq  402620 <_ValidateImageBase.part.0>
  4028d8:	85 c0                	test   %eax,%eax
  4028da:	74 ec                	je     4028c8 <_IsNonwritableInCurrentImage+0x18>
  4028dc:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  4028e0:	48 89 d1             	mov    %rdx,%rcx
  4028e3:	4c 29 c1             	sub    %r8,%rcx
  4028e6:	49 01 c0             	add    %rax,%r8
  4028e9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4028ee:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4028f3:	85 d2                	test   %edx,%edx
  4028f5:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4028fa:	74 31                	je     40292d <_IsNonwritableInCurrentImage+0x7d>
  4028fc:	83 ea 01             	sub    $0x1,%edx
  4028ff:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402903:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402908:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40290f:	00 
  402910:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402914:	4c 39 c1             	cmp    %r8,%rcx
  402917:	4c 89 c2             	mov    %r8,%rdx
  40291a:	72 08                	jb     402924 <_IsNonwritableInCurrentImage+0x74>
  40291c:	03 50 08             	add    0x8(%rax),%edx
  40291f:	48 39 d1             	cmp    %rdx,%rcx
  402922:	72 10                	jb     402934 <_IsNonwritableInCurrentImage+0x84>
  402924:	48 83 c0 28          	add    $0x28,%rax
  402928:	4c 39 c8             	cmp    %r9,%rax
  40292b:	75 e3                	jne    402910 <_IsNonwritableInCurrentImage+0x60>
  40292d:	31 c0                	xor    %eax,%eax
  40292f:	48 83 c4 28          	add    $0x28,%rsp
  402933:	c3                   	retq   
  402934:	8b 40 24             	mov    0x24(%rax),%eax
  402937:	f7 d0                	not    %eax
  402939:	c1 e8 1f             	shr    $0x1f,%eax
  40293c:	48 83 c4 28          	add    $0x28,%rsp
  402940:	c3                   	retq   
  402941:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40294d:	00 00 00 

0000000000402950 <__mingw_enum_import_library_names>:
  402950:	48 83 ec 28          	sub    $0x28,%rsp
  402954:	4c 8b 1d e5 19 00 00 	mov    0x19e5(%rip),%r11        # 404340 <.refptr.__image_base__>
  40295b:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402961:	41 89 c9             	mov    %ecx,%r9d
  402964:	75 58                	jne    4029be <__mingw_enum_import_library_names+0x6e>
  402966:	4c 89 d9             	mov    %r11,%rcx
  402969:	e8 b2 fc ff ff       	callq  402620 <_ValidateImageBase.part.0>
  40296e:	85 c0                	test   %eax,%eax
  402970:	74 4c                	je     4029be <__mingw_enum_import_library_names+0x6e>
  402972:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  402976:	4c 01 d8             	add    %r11,%rax
  402979:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  40297f:	85 d2                	test   %edx,%edx
  402981:	74 3b                	je     4029be <__mingw_enum_import_library_names+0x6e>
  402983:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  402987:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  40298c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  402990:	85 c0                	test   %eax,%eax
  402992:	74 2a                	je     4029be <__mingw_enum_import_library_names+0x6e>
  402994:	83 e8 01             	sub    $0x1,%eax
  402997:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40299b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  4029a0:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  4029a4:	4c 39 d2             	cmp    %r10,%rdx
  4029a7:	4d 89 d0             	mov    %r10,%r8
  4029aa:	72 09                	jb     4029b5 <__mingw_enum_import_library_names+0x65>
  4029ac:	44 03 41 08          	add    0x8(%rcx),%r8d
  4029b0:	4c 39 c2             	cmp    %r8,%rdx
  4029b3:	72 10                	jb     4029c5 <__mingw_enum_import_library_names+0x75>
  4029b5:	48 83 c1 28          	add    $0x28,%rcx
  4029b9:	48 39 c1             	cmp    %rax,%rcx
  4029bc:	75 e2                	jne    4029a0 <__mingw_enum_import_library_names+0x50>
  4029be:	31 c0                	xor    %eax,%eax
  4029c0:	48 83 c4 28          	add    $0x28,%rsp
  4029c4:	c3                   	retq   
  4029c5:	4c 01 da             	add    %r11,%rdx
  4029c8:	75 0e                	jne    4029d8 <__mingw_enum_import_library_names+0x88>
  4029ca:	eb f2                	jmp    4029be <__mingw_enum_import_library_names+0x6e>
  4029cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4029d0:	41 83 e9 01          	sub    $0x1,%r9d
  4029d4:	48 83 c2 14          	add    $0x14,%rdx
  4029d8:	8b 4a 04             	mov    0x4(%rdx),%ecx
  4029db:	85 c9                	test   %ecx,%ecx
  4029dd:	75 07                	jne    4029e6 <__mingw_enum_import_library_names+0x96>
  4029df:	8b 42 0c             	mov    0xc(%rdx),%eax
  4029e2:	85 c0                	test   %eax,%eax
  4029e4:	74 d8                	je     4029be <__mingw_enum_import_library_names+0x6e>
  4029e6:	45 85 c9             	test   %r9d,%r9d
  4029e9:	7f e5                	jg     4029d0 <__mingw_enum_import_library_names+0x80>
  4029eb:	8b 42 0c             	mov    0xc(%rdx),%eax
  4029ee:	4c 01 d8             	add    %r11,%rax
  4029f1:	48 83 c4 28          	add    $0x28,%rsp
  4029f5:	c3                   	retq   
  4029f6:	90                   	nop
  4029f7:	90                   	nop
  4029f8:	90                   	nop
  4029f9:	90                   	nop
  4029fa:	90                   	nop
  4029fb:	90                   	nop
  4029fc:	90                   	nop
  4029fd:	90                   	nop
  4029fe:	90                   	nop
  4029ff:	90                   	nop

0000000000402a00 <___chkstk_ms>:
  402a00:	51                   	push   %rcx
  402a01:	50                   	push   %rax
  402a02:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a08:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402a0d:	72 19                	jb     402a28 <___chkstk_ms+0x28>
  402a0f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402a16:	48 83 09 00          	orq    $0x0,(%rcx)
  402a1a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402a20:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a26:	77 e7                	ja     402a0f <___chkstk_ms+0xf>
  402a28:	48 29 c1             	sub    %rax,%rcx
  402a2b:	48 83 09 00          	orq    $0x0,(%rcx)
  402a2f:	58                   	pop    %rax
  402a30:	59                   	pop    %rcx
  402a31:	c3                   	retq   
  402a32:	90                   	nop
  402a33:	90                   	nop
  402a34:	90                   	nop
  402a35:	90                   	nop
  402a36:	90                   	nop
  402a37:	90                   	nop
  402a38:	90                   	nop
  402a39:	90                   	nop
  402a3a:	90                   	nop
  402a3b:	90                   	nop
  402a3c:	90                   	nop
  402a3d:	90                   	nop
  402a3e:	90                   	nop
  402a3f:	90                   	nop

0000000000402a40 <vfprintf>:
  402a40:	ff 25 06 59 00 00    	jmpq   *0x5906(%rip)        # 40834c <__imp_vfprintf>
  402a46:	90                   	nop
  402a47:	90                   	nop

0000000000402a48 <strncmp>:
  402a48:	ff 25 f6 58 00 00    	jmpq   *0x58f6(%rip)        # 408344 <__imp_strncmp>
  402a4e:	90                   	nop
  402a4f:	90                   	nop

0000000000402a50 <strlen>:
  402a50:	ff 25 e6 58 00 00    	jmpq   *0x58e6(%rip)        # 40833c <__imp_strlen>
  402a56:	90                   	nop
  402a57:	90                   	nop

0000000000402a58 <signal>:
  402a58:	ff 25 d6 58 00 00    	jmpq   *0x58d6(%rip)        # 408334 <__imp_signal>
  402a5e:	90                   	nop
  402a5f:	90                   	nop

0000000000402a60 <memcpy>:
  402a60:	ff 25 c6 58 00 00    	jmpq   *0x58c6(%rip)        # 40832c <__imp_memcpy>
  402a66:	90                   	nop
  402a67:	90                   	nop

0000000000402a68 <malloc>:
  402a68:	ff 25 b6 58 00 00    	jmpq   *0x58b6(%rip)        # 408324 <__imp_malloc>
  402a6e:	90                   	nop
  402a6f:	90                   	nop

0000000000402a70 <fwrite>:
  402a70:	ff 25 a6 58 00 00    	jmpq   *0x58a6(%rip)        # 40831c <__imp_fwrite>
  402a76:	90                   	nop
  402a77:	90                   	nop

0000000000402a78 <free>:
  402a78:	ff 25 96 58 00 00    	jmpq   *0x5896(%rip)        # 408314 <__imp_free>
  402a7e:	90                   	nop
  402a7f:	90                   	nop

0000000000402a80 <fprintf>:
  402a80:	ff 25 86 58 00 00    	jmpq   *0x5886(%rip)        # 40830c <__imp_fprintf>
  402a86:	90                   	nop
  402a87:	90                   	nop

0000000000402a88 <exit>:
  402a88:	ff 25 76 58 00 00    	jmpq   *0x5876(%rip)        # 408304 <__imp_exit>
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <calloc>:
  402a90:	ff 25 66 58 00 00    	jmpq   *0x5866(%rip)        # 4082fc <__imp_calloc>
  402a96:	90                   	nop
  402a97:	90                   	nop

0000000000402a98 <abort>:
  402a98:	ff 25 56 58 00 00    	jmpq   *0x5856(%rip)        # 4082f4 <__imp_abort>
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <_onexit>:
  402aa0:	ff 25 46 58 00 00    	jmpq   *0x5846(%rip)        # 4082ec <__imp__onexit>
  402aa6:	90                   	nop
  402aa7:	90                   	nop

0000000000402aa8 <_initterm>:
  402aa8:	ff 25 36 58 00 00    	jmpq   *0x5836(%rip)        # 4082e4 <__imp__initterm>
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <_cexit>:
  402ab0:	ff 25 1e 58 00 00    	jmpq   *0x581e(%rip)        # 4082d4 <__imp__cexit>
  402ab6:	90                   	nop
  402ab7:	90                   	nop

0000000000402ab8 <_amsg_exit>:
  402ab8:	ff 25 0e 58 00 00    	jmpq   *0x580e(%rip)        # 4082cc <__imp__amsg_exit>
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <__setusermatherr>:
  402ac0:	ff 25 f6 57 00 00    	jmpq   *0x57f6(%rip)        # 4082bc <__imp___setusermatherr>
  402ac6:	90                   	nop
  402ac7:	90                   	nop

0000000000402ac8 <__set_app_type>:
  402ac8:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 4082b4 <__imp___set_app_type>
  402ace:	90                   	nop
  402acf:	90                   	nop

0000000000402ad0 <__lconv_init>:
  402ad0:	ff 25 d6 57 00 00    	jmpq   *0x57d6(%rip)        # 4082ac <__imp___lconv_init>
  402ad6:	90                   	nop
  402ad7:	90                   	nop

0000000000402ad8 <__getmainargs>:
  402ad8:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 408294 <__imp___getmainargs>
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <__C_specific_handler>:
  402ae0:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 40828c <__imp___C_specific_handler>
  402ae6:	90                   	nop
  402ae7:	90                   	nop
  402ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402aef:	00 

0000000000402af0 <__acrt_iob_func>:
  402af0:	53                   	push   %rbx
  402af1:	48 83 ec 20          	sub    $0x20,%rsp
  402af5:	89 cb                	mov    %ecx,%ebx
  402af7:	e8 54 00 00 00       	callq  402b50 <__iob_func>
  402afc:	89 d9                	mov    %ebx,%ecx
  402afe:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402b02:	48 c1 e2 04          	shl    $0x4,%rdx
  402b06:	48 01 d0             	add    %rdx,%rax
  402b09:	48 83 c4 20          	add    $0x20,%rsp
  402b0d:	5b                   	pop    %rbx
  402b0e:	c3                   	retq   
  402b0f:	90                   	nop

0000000000402b10 <_get_invalid_parameter_handler>:
  402b10:	48 8b 05 39 4e 00 00 	mov    0x4e39(%rip),%rax        # 407950 <handler>
  402b17:	c3                   	retq   
  402b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b1f:	00 

0000000000402b20 <_set_invalid_parameter_handler>:
  402b20:	48 89 c8             	mov    %rcx,%rax
  402b23:	48 87 05 26 4e 00 00 	xchg   %rax,0x4e26(%rip)        # 407950 <handler>
  402b2a:	c3                   	retq   
  402b2b:	90                   	nop
  402b2c:	90                   	nop
  402b2d:	90                   	nop
  402b2e:	90                   	nop
  402b2f:	90                   	nop

0000000000402b30 <__p__acmdln>:
  402b30:	48 8b 05 29 18 00 00 	mov    0x1829(%rip),%rax        # 404360 <.refptr.__imp__acmdln>
  402b37:	48 8b 00             	mov    (%rax),%rax
  402b3a:	c3                   	retq   
  402b3b:	90                   	nop
  402b3c:	90                   	nop
  402b3d:	90                   	nop
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <__p__fmode>:
  402b40:	48 8b 05 29 18 00 00 	mov    0x1829(%rip),%rax        # 404370 <.refptr.__imp__fmode>
  402b47:	48 8b 00             	mov    (%rax),%rax
  402b4a:	c3                   	retq   
  402b4b:	90                   	nop
  402b4c:	90                   	nop
  402b4d:	90                   	nop
  402b4e:	90                   	nop
  402b4f:	90                   	nop

0000000000402b50 <__iob_func>:
  402b50:	ff 25 4e 57 00 00    	jmpq   *0x574e(%rip)        # 4082a4 <__imp___iob_func>
  402b56:	90                   	nop
  402b57:	90                   	nop
  402b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b5f:	00 

0000000000402b60 <VirtualQuery>:
  402b60:	ff 25 16 57 00 00    	jmpq   *0x5716(%rip)        # 40827c <__imp_VirtualQuery>
  402b66:	90                   	nop
  402b67:	90                   	nop

0000000000402b68 <VirtualProtect>:
  402b68:	ff 25 06 57 00 00    	jmpq   *0x5706(%rip)        # 408274 <__imp_VirtualProtect>
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <UnhandledExceptionFilter>:
  402b70:	ff 25 f6 56 00 00    	jmpq   *0x56f6(%rip)        # 40826c <__imp_UnhandledExceptionFilter>
  402b76:	90                   	nop
  402b77:	90                   	nop

0000000000402b78 <TlsGetValue>:
  402b78:	ff 25 e6 56 00 00    	jmpq   *0x56e6(%rip)        # 408264 <__imp_TlsGetValue>
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <TerminateProcess>:
  402b80:	ff 25 d6 56 00 00    	jmpq   *0x56d6(%rip)        # 40825c <__imp_TerminateProcess>
  402b86:	90                   	nop
  402b87:	90                   	nop

0000000000402b88 <Sleep>:
  402b88:	ff 25 c6 56 00 00    	jmpq   *0x56c6(%rip)        # 408254 <__imp_Sleep>
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <SetUnhandledExceptionFilter>:
  402b90:	ff 25 b6 56 00 00    	jmpq   *0x56b6(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  402b96:	90                   	nop
  402b97:	90                   	nop

0000000000402b98 <RtlVirtualUnwind>:
  402b98:	ff 25 a6 56 00 00    	jmpq   *0x56a6(%rip)        # 408244 <__imp_RtlVirtualUnwind>
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <RtlLookupFunctionEntry>:
  402ba0:	ff 25 96 56 00 00    	jmpq   *0x5696(%rip)        # 40823c <__imp_RtlLookupFunctionEntry>
  402ba6:	90                   	nop
  402ba7:	90                   	nop

0000000000402ba8 <RtlCaptureContext>:
  402ba8:	ff 25 86 56 00 00    	jmpq   *0x5686(%rip)        # 408234 <__imp_RtlCaptureContext>
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <RtlAddFunctionTable>:
  402bb0:	ff 25 76 56 00 00    	jmpq   *0x5676(%rip)        # 40822c <__imp_RtlAddFunctionTable>
  402bb6:	90                   	nop
  402bb7:	90                   	nop

0000000000402bb8 <QueryPerformanceCounter>:
  402bb8:	ff 25 66 56 00 00    	jmpq   *0x5666(%rip)        # 408224 <__imp_QueryPerformanceCounter>
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <LeaveCriticalSection>:
  402bc0:	ff 25 56 56 00 00    	jmpq   *0x5656(%rip)        # 40821c <__imp_LeaveCriticalSection>
  402bc6:	90                   	nop
  402bc7:	90                   	nop

0000000000402bc8 <InitializeCriticalSection>:
  402bc8:	ff 25 46 56 00 00    	jmpq   *0x5646(%rip)        # 408214 <__imp_InitializeCriticalSection>
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <GetTickCount>:
  402bd0:	ff 25 36 56 00 00    	jmpq   *0x5636(%rip)        # 40820c <__imp_GetTickCount>
  402bd6:	90                   	nop
  402bd7:	90                   	nop

0000000000402bd8 <GetSystemTimeAsFileTime>:
  402bd8:	ff 25 26 56 00 00    	jmpq   *0x5626(%rip)        # 408204 <__imp_GetSystemTimeAsFileTime>
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <GetStartupInfoA>:
  402be0:	ff 25 16 56 00 00    	jmpq   *0x5616(%rip)        # 4081fc <__imp_GetStartupInfoA>
  402be6:	90                   	nop
  402be7:	90                   	nop

0000000000402be8 <GetLastError>:
  402be8:	ff 25 06 56 00 00    	jmpq   *0x5606(%rip)        # 4081f4 <__imp_GetLastError>
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <GetCurrentThreadId>:
  402bf0:	ff 25 f6 55 00 00    	jmpq   *0x55f6(%rip)        # 4081ec <__imp_GetCurrentThreadId>
  402bf6:	90                   	nop
  402bf7:	90                   	nop

0000000000402bf8 <GetCurrentProcessId>:
  402bf8:	ff 25 e6 55 00 00    	jmpq   *0x55e6(%rip)        # 4081e4 <__imp_GetCurrentProcessId>
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <GetCurrentProcess>:
  402c00:	ff 25 d6 55 00 00    	jmpq   *0x55d6(%rip)        # 4081dc <__imp_GetCurrentProcess>
  402c06:	90                   	nop
  402c07:	90                   	nop

0000000000402c08 <EnterCriticalSection>:
  402c08:	ff 25 c6 55 00 00    	jmpq   *0x55c6(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  402c0e:	90                   	nop
  402c0f:	90                   	nop

0000000000402c10 <DeleteCriticalSection>:
  402c10:	ff 25 b6 55 00 00    	jmpq   *0x55b6(%rip)        # 4081cc <__IAT_start__>
  402c16:	90                   	nop
  402c17:	90                   	nop
  402c18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c1f:	00 

0000000000402c20 <__report_error>:
  402c20:	56                   	push   %rsi
  402c21:	53                   	push   %rbx
  402c22:	48 83 ec 38          	sub    $0x38,%rsp
  402c26:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  402c2b:	48 89 cb             	mov    %rcx,%rbx
  402c2e:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c33:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  402c38:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  402c3d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  402c42:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402c47:	e8 a4 fe ff ff       	callq  402af0 <__acrt_iob_func>
  402c4c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  402c52:	ba 01 00 00 00       	mov    $0x1,%edx
  402c57:	48 8d 0d 62 15 00 00 	lea    0x1562(%rip),%rcx        # 4041c0 <.rdata>
  402c5e:	49 89 c1             	mov    %rax,%r9
  402c61:	e8 0a fe ff ff       	callq  402a70 <fwrite>
  402c66:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  402c6b:	b9 02 00 00 00       	mov    $0x2,%ecx
  402c70:	e8 7b fe ff ff       	callq  402af0 <__acrt_iob_func>
  402c75:	48 89 da             	mov    %rbx,%rdx
  402c78:	48 89 c1             	mov    %rax,%rcx
  402c7b:	49 89 f0             	mov    %rsi,%r8
  402c7e:	e8 bd fd ff ff       	callq  402a40 <vfprintf>
  402c83:	e8 10 fe ff ff       	callq  402a98 <abort>
  402c88:	90                   	nop
  402c89:	90                   	nop
  402c8a:	90                   	nop
  402c8b:	90                   	nop
  402c8c:	90                   	nop
  402c8d:	90                   	nop
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <register_frame_ctor>:
  402c90:	e9 9b e8 ff ff       	jmpq   401530 <__gcc_register_frame>
  402c95:	90                   	nop
  402c96:	90                   	nop
  402c97:	90                   	nop
  402c98:	90                   	nop
  402c99:	90                   	nop
  402c9a:	90                   	nop
  402c9b:	90                   	nop
  402c9c:	90                   	nop
  402c9d:	90                   	nop
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <__CTOR_LIST__>:
  402ca0:	ff                   	(bad)  
  402ca1:	ff                   	(bad)  
  402ca2:	ff                   	(bad)  
  402ca3:	ff                   	(bad)  
  402ca4:	ff                   	(bad)  
  402ca5:	ff                   	(bad)  
  402ca6:	ff                   	(bad)  
  402ca7:	ff                   	.byte 0xff

0000000000402ca8 <.ctors.65535>:
  402ca8:	90                   	nop
  402ca9:	2c 40                	sub    $0x40,%al
	...

0000000000402cb8 <__DTOR_LIST__>:
  402cb8:	ff                   	(bad)  
  402cb9:	ff                   	(bad)  
  402cba:	ff                   	(bad)  
  402cbb:	ff                   	(bad)  
  402cbc:	ff                   	(bad)  
  402cbd:	ff                   	(bad)  
  402cbe:	ff                   	(bad)  
  402cbf:	ff 00                	incl   (%rax)
  402cc1:	00 00                	add    %al,(%rax)
  402cc3:	00 00                	add    %al,(%rax)
  402cc5:	00 00                	add    %al,(%rax)
	...
