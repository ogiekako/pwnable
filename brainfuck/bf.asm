
./bf:     file format elf32-i386

;
Disassembly of section .interp:

08048154 <.interp>:
 8048154:	2f                   	das    
 8048155:	6c                   	insb   (%dx),%es:(%edi)
 8048156:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 804815d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 8048164:	2e 32 00             	xor    %cs:(%eax),%al

Disassembly of section .note.ABI-tag:

08048168 <.note.ABI-tag>:
 8048168:	04 00                	add    $0x0,%al
 804816a:	00 00                	add    %al,(%eax)
 804816c:	10 00                	adc    %al,(%eax)
 804816e:	00 00                	add    %al,(%eax)
 8048170:	01 00                	add    %eax,(%eax)
 8048172:	00 00                	add    %al,(%eax)
 8048174:	47                   	inc    %edi
 8048175:	4e                   	dec    %esi
 8048176:	55                   	push   %ebp
 8048177:	00 00                	add    %al,(%eax)
 8048179:	00 00                	add    %al,(%eax)
 804817b:	00 02                	add    %al,(%edx)
 804817d:	00 00                	add    %al,(%eax)
 804817f:	00 06                	add    %al,(%esi)
 8048181:	00 00                	add    %al,(%eax)
 8048183:	00 18                	add    %bl,(%eax)
 8048185:	00 00                	add    %al,(%eax)
	...

Disassembly of section .note.gnu.build-id:

08048188 <.note.gnu.build-id>:
 8048188:	04 00                	add    $0x0,%al
 804818a:	00 00                	add    %al,(%eax)
 804818c:	14 00                	adc    $0x0,%al
 804818e:	00 00                	add    %al,(%eax)
 8048190:	03 00                	add    (%eax),%eax
 8048192:	00 00                	add    %al,(%eax)
 8048194:	47                   	inc    %edi
 8048195:	4e                   	dec    %esi
 8048196:	55                   	push   %ebp
 8048197:	00 19                	add    %bl,(%ecx)
 8048199:	0d 45 83 2c 27       	or     $0x272c8345,%eax
 804819e:	1d e2 54 48 ce       	sbb    $0xce4854e2,%eax
 80481a3:	fe                   	(bad)  
 80481a4:	52                   	push   %edx
 80481a5:	fb                   	sti    
 80481a6:	d1 5e a9             	rcrl   -0x57(%esi)
 80481a9:	ed                   	in     (%dx),%eax
 80481aa:	5e                   	pop    %esi
 80481ab:	65                   	gs

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	03 00                	add    (%eax),%eax
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	0b 00                	or     (%eax),%eax
 80481b2:	00 00                	add    %al,(%eax)
 80481b4:	01 00                	add    %eax,(%eax)
 80481b6:	00 00                	add    %al,(%eax)
 80481b8:	05 00 00 00 80       	add    $0x80000000,%eax
 80481bd:	2b 00                	sub    (%eax),%eax
 80481bf:	20 0b                	and    %cl,(%ebx)
 80481c1:	00 00                	add    %al,(%eax)
 80481c3:	00 0c 00             	add    %cl,(%eax,%eax,1)
 80481c6:	00 00                	add    %al,(%eax)
 80481c8:	00 00                	add    %al,(%eax)
 80481ca:	00 00                	add    %al,(%eax)
 80481cc:	29 1d 8c 1c ac 4b    	sub    %ebx,0x4bac1c8c
 80481d2:	e3 c0                	jecxz  8048194 <_init-0x278>
 80481d4:	67 55                	addr16 push %ebp
 80481d6:	61                   	popa   
 80481d7:	10                   	.byte 0x10

Disassembly of section .dynsym:

080481d8 <.dynsym>:
	...
 80481e8:	52                   	push   %edx
	...
 80481f1:	00 00                	add    %al,(%eax)
 80481f3:	00 12                	add    %dl,(%edx)
 80481f5:	00 00                	add    %al,(%eax)
 80481f7:	00 3e                	add    %bh,(%esi)
	...
 8048201:	00 00                	add    %al,(%eax)
 8048203:	00 12                	add    %dl,(%edx)
 8048205:	00 00                	add    %al,(%eax)
 8048207:	00 1f                	add    %bl,(%edi)
	...
 8048211:	00 00                	add    %al,(%eax)
 8048213:	00 12                	add    %dl,(%edx)
 8048215:	00 00                	add    %al,(%eax)
 8048217:	00 1a                	add    %bl,(%edx)
	...
 8048221:	00 00                	add    %al,(%eax)
 8048223:	00 12                	add    %dl,(%edx)
 8048225:	00 00                	add    %al,(%eax)
 8048227:	00 7b 00             	add    %bh,0x0(%ebx)
	...
 8048232:	00 00                	add    %al,(%eax)
 8048234:	20 00                	and    %al,(%eax)
 8048236:	00 00                	add    %al,(%eax)
 8048238:	44                   	inc    %esp
	...
 8048241:	00 00                	add    %al,(%eax)
 8048243:	00 12                	add    %dl,(%edx)
 8048245:	00 00                	add    %al,(%eax)
 8048247:	00 69 00             	add    %ch,0x0(%ecx)
	...
 8048252:	00 00                	add    %al,(%eax)
 8048254:	12 00                	adc    (%eax),%al
 8048256:	00 00                	add    %al,(%eax)
 8048258:	61                   	popa   
	...
 8048261:	00 00                	add    %al,(%eax)
 8048263:	00 12                	add    %dl,(%edx)
 8048265:	00 00                	add    %al,(%eax)
 8048267:	00 4b 00             	add    %cl,0x0(%ebx)
	...
 8048272:	00 00                	add    %al,(%eax)
 8048274:	12 00                	adc    (%eax),%al
 8048276:	00 00                	add    %al,(%eax)
 8048278:	30 00                	xor    %al,(%eax)
	...
 8048282:	00 00                	add    %al,(%eax)
 8048284:	12 00                	adc    (%eax),%al
 8048286:	00 00                	add    %al,(%eax)
 8048288:	5a                   	pop    %edx
 8048289:	00 00                	add    %al,(%eax)
 804828b:	00 60 a0             	add    %ah,-0x60(%eax)
 804828e:	04 08                	add    $0x8,%al
 8048290:	04 00                	add    $0x0,%al
 8048292:	00 00                	add    %al,(%eax)
 8048294:	11 00                	adc    %eax,(%eax)
 8048296:	19 00                	sbb    %eax,(%eax)
 8048298:	0b 00                	or     (%eax),%eax
 804829a:	00 00                	add    %al,(%eax)
 804829c:	2c 88                	sub    $0x88,%al
 804829e:	04 08                	add    $0x8,%al
 80482a0:	04 00                	add    $0x0,%al
 80482a2:	00 00                	add    %al,(%eax)
 80482a4:	11 00                	adc    %eax,(%eax)
 80482a6:	0f 00                	(bad)  
 80482a8:	38 00                	cmp    %al,(%eax)
 80482aa:	00 00                	add    %al,(%eax)
 80482ac:	40                   	inc    %eax
 80482ad:	a0 04 08 04 00       	mov    0x40804,%al
 80482b2:	00 00                	add    %al,(%eax)
 80482b4:	11 00                	adc    %eax,(%eax)
 80482b6:	19 00                	sbb    %eax,(%eax)

Disassembly of section .dynstr:

080482b8 <.dynstr>:
 80482b8:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 80482bc:	63 2e                	arpl   %bp,(%esi)
 80482be:	73 6f                	jae    804832f <_init-0xdd>
 80482c0:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 80482c5:	4f                   	dec    %edi
 80482c6:	5f                   	pop    %edi
 80482c7:	73 74                	jae    804833d <_init-0xcf>
 80482c9:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 80482d0:	64 
 80482d1:	00 70 75             	add    %dh,0x75(%eax)
 80482d4:	74 73                	je     8048349 <_init-0xc3>
 80482d6:	00 5f 5f             	add    %bl,0x5f(%edi)
 80482d9:	73 74                	jae    804834f <_init-0xbd>
 80482db:	61                   	popa   
 80482dc:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
 80482df:	63 68 6b             	arpl   %bp,0x6b(%eax)
 80482e2:	5f                   	pop    %edi
 80482e3:	66 61                	popaw  
 80482e5:	69 6c 00 70 75 74 63 	imul   $0x68637475,0x70(%eax,%eax,1),%ebp
 80482ec:	68 
 80482ed:	61                   	popa   
 80482ee:	72 00                	jb     80482f0 <_init-0x11c>
 80482f0:	73 74                	jae    8048366 <_init-0xa6>
 80482f2:	64 69 6e 00 66 67 65 	imul   $0x74656766,%fs:0x0(%esi),%ebp
 80482f9:	74 
 80482fa:	73 00                	jae    80482fc <_init-0x110>
 80482fc:	73 74                	jae    8048372 <_init-0x9a>
 80482fe:	72 6c                	jb     804836c <_init-0xa0>
 8048300:	65 6e                	outsb  %gs:(%esi),(%dx)
 8048302:	00 6d 65             	add    %ch,0x65(%ebp)
 8048305:	6d                   	insl   (%dx),%es:(%edi)
 8048306:	73 65                	jae    804836d <_init-0x9f>
 8048308:	74 00                	je     804830a <_init-0x102>
 804830a:	67 65 74 63          	addr16 gs je 8048371 <_init-0x9b>
 804830e:	68 61 72 00 73       	push   $0x73007261
 8048313:	74 64                	je     8048379 <_init-0x93>
 8048315:	6f                   	outsl  %ds:(%esi),(%dx)
 8048316:	75 74                	jne    804838c <_init-0x80>
 8048318:	00 73 65             	add    %dh,0x65(%ebx)
 804831b:	74 76                	je     8048393 <_init-0x79>
 804831d:	62 75 66             	bound  %esi,0x66(%ebp)
 8048320:	00 5f 5f             	add    %bl,0x5f(%edi)
 8048323:	6c                   	insb   (%dx),%es:(%edi)
 8048324:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 804832b:	72 74                	jb     80483a1 <_init-0x6b>
 804832d:	5f                   	pop    %edi
 804832e:	6d                   	insl   (%dx),%es:(%edi)
 804832f:	61                   	popa   
 8048330:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%esi),%ebp
 8048337:	6f                   	outsl  %ds:(%esi),(%dx)
 8048338:	6e                   	outsb  %ds:(%esi),(%dx)
 8048339:	5f                   	pop    %edi
 804833a:	73 74                	jae    80483b0 <_init-0x5c>
 804833c:	61                   	popa   
 804833d:	72 74                	jb     80483b3 <_init-0x59>
 804833f:	5f                   	pop    %edi
 8048340:	5f                   	pop    %edi
 8048341:	00 47 4c             	add    %al,0x4c(%edi)
 8048344:	49                   	dec    %ecx
 8048345:	42                   	inc    %edx
 8048346:	43                   	inc    %ebx
 8048347:	5f                   	pop    %edi
 8048348:	32 2e                	xor    (%esi),%ch
 804834a:	34 00                	xor    $0x0,%al
 804834c:	47                   	inc    %edi
 804834d:	4c                   	dec    %esp
 804834e:	49                   	dec    %ecx
 804834f:	42                   	inc    %edx
 8048350:	43                   	inc    %ebx
 8048351:	5f                   	pop    %edi
 8048352:	32 2e                	xor    (%esi),%ch
 8048354:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

08048356 <.gnu.version>:
 8048356:	00 00                	add    %al,(%eax)
 8048358:	02 00                	add    (%eax),%al
 804835a:	02 00                	add    (%eax),%al
 804835c:	03 00                	add    (%eax),%eax
 804835e:	02 00                	add    (%eax),%al
 8048360:	00 00                	add    %al,(%eax)
 8048362:	02 00                	add    (%eax),%al
 8048364:	02 00                	add    (%eax),%al
 8048366:	02 00                	add    (%eax),%al
 8048368:	02 00                	add    (%eax),%al
 804836a:	02 00                	add    (%eax),%al
 804836c:	02 00                	add    (%eax),%al
 804836e:	01 00                	add    %eax,(%eax)
 8048370:	02 00                	add    (%eax),%al

Disassembly of section .gnu.version_r:

08048374 <.gnu.version_r>:
 8048374:	01 00                	add    %eax,(%eax)
 8048376:	02 00                	add    (%eax),%al
 8048378:	01 00                	add    %eax,(%eax)
 804837a:	00 00                	add    %al,(%eax)
 804837c:	10 00                	adc    %al,(%eax)
 804837e:	00 00                	add    %al,(%eax)
 8048380:	00 00                	add    %al,(%eax)
 8048382:	00 00                	add    %al,(%eax)
 8048384:	14 69                	adc    $0x69,%al
 8048386:	69 0d 00 00 03 00 8a 	imul   $0x8a,0x30000,%ecx
 804838d:	00 00 00 
 8048390:	10 00                	adc    %al,(%eax)
 8048392:	00 00                	add    %al,(%eax)
 8048394:	10 69 69             	adc    %ch,0x69(%ecx)
 8048397:	0d 00 00 02 00       	or     $0x20000,%eax
 804839c:	94                   	xchg   %eax,%esp
 804839d:	00 00                	add    %al,(%eax)
 804839f:	00 00                	add    %al,(%eax)
 80483a1:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

080483a4 <.rel.dyn>:
 80483a4:	fc                   	cld    
 80483a5:	9f                   	lahf   
 80483a6:	04 08                	add    $0x8,%al
 80483a8:	06                   	push   %es
 80483a9:	05 00 00 40 a0       	add    $0xa0400000,%eax
 80483ae:	04 08                	add    $0x8,%al
 80483b0:	05 0d 00 00 60       	add    $0x6000000d,%eax
 80483b5:	a0 04 08 05 0b       	mov    0xb050804,%al
	...

Disassembly of section .rel.plt:

080483bc <.rel.plt>:
 80483bc:	0c a0                	or     $0xa0,%al
 80483be:	04 08                	add    $0x8,%al
 80483c0:	07                   	pop    %es
 80483c1:	01 00                	add    %eax,(%eax)
 80483c3:	00 10                	add    %dl,(%eax)
 80483c5:	a0 04 08 07 02       	mov    0x2070804,%al
 80483ca:	00 00                	add    %al,(%eax)
 80483cc:	14 a0                	adc    $0xa0,%al
 80483ce:	04 08                	add    $0x8,%al
 80483d0:	07                   	pop    %es
 80483d1:	03 00                	add    (%eax),%eax
 80483d3:	00 18                	add    %bl,(%eax)
 80483d5:	a0 04 08 07 04       	mov    0x4070804,%al
 80483da:	00 00                	add    %al,(%eax)
 80483dc:	1c a0                	sbb    $0xa0,%al
 80483de:	04 08                	add    $0x8,%al
 80483e0:	07                   	pop    %es
 80483e1:	05 00 00 20 a0       	add    $0xa0200000,%eax
 80483e6:	04 08                	add    $0x8,%al
 80483e8:	07                   	pop    %es
 80483e9:	06                   	push   %es
 80483ea:	00 00                	add    %al,(%eax)
 80483ec:	24 a0                	and    $0xa0,%al
 80483ee:	04 08                	add    $0x8,%al
 80483f0:	07                   	pop    %es
 80483f1:	07                   	pop    %es
 80483f2:	00 00                	add    %al,(%eax)
 80483f4:	28 a0 04 08 07 08    	sub    %ah,0x8070804(%eax)
 80483fa:	00 00                	add    %al,(%eax)
 80483fc:	2c a0                	sub    $0xa0,%al
 80483fe:	04 08                	add    $0x8,%al
 8048400:	07                   	pop    %es
 8048401:	09 00                	or     %eax,(%eax)
 8048403:	00 30                	add    %dh,(%eax)
 8048405:	a0 04 08 07 0a       	mov    0xa070804,%al
	...

Disassembly of section .init:

0804840c <_init>:
 804840c:	53                   	push   %ebx
 804840d:	83 ec 08             	sub    $0x8,%esp
 8048410:	e8 fb 00 00 00       	call   8048510 <__x86.get_pc_thunk.bx>
 8048415:	81 c3 eb 1b 00 00    	add    $0x1beb,%ebx
 804841b:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048421:	85 c0                	test   %eax,%eax
 8048423:	74 05                	je     804842a <_init+0x1e>
 8048425:	e8 56 00 00 00       	call   8048480 <__gmon_start__@plt>
 804842a:	83 c4 08             	add    $0x8,%esp
 804842d:	5b                   	pop    %ebx
 804842e:	c3                   	ret    

Disassembly of section .plt:

08048430 <getchar@plt-0x10>:
 8048430:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048436:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804843c:	00 00                	add    %al,(%eax)
	...

08048440 <getchar@plt>:
 8048440:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048446:	68 00 00 00 00       	push   $0x0
 804844b:	e9 e0 ff ff ff       	jmp    8048430 <_init+0x24>

08048450 <fgets@plt>:
 8048450:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048456:	68 08 00 00 00       	push   $0x8
 804845b:	e9 d0 ff ff ff       	jmp    8048430 <_init+0x24>

08048460 <__stack_chk_fail@plt>:
 8048460:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048466:	68 10 00 00 00       	push   $0x10
 804846b:	e9 c0 ff ff ff       	jmp    8048430 <_init+0x24>

08048470 <puts@plt>:
 8048470:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048476:	68 18 00 00 00       	push   $0x18
 804847b:	e9 b0 ff ff ff       	jmp    8048430 <_init+0x24>

08048480 <__gmon_start__@plt>:
 8048480:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048486:	68 20 00 00 00       	push   $0x20
 804848b:	e9 a0 ff ff ff       	jmp    8048430 <_init+0x24>

08048490 <strlen@plt>:
 8048490:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048496:	68 28 00 00 00       	push   $0x28
 804849b:	e9 90 ff ff ff       	jmp    8048430 <_init+0x24>

080484a0 <__libc_start_main@plt>:
 80484a0:	ff 25 24 a0 04 08    	jmp    *0x804a024
 80484a6:	68 30 00 00 00       	push   $0x30
 80484ab:	e9 80 ff ff ff       	jmp    8048430 <_init+0x24>

080484b0 <setvbuf@plt>:
 80484b0:	ff 25 28 a0 04 08    	jmp    *0x804a028
 80484b6:	68 38 00 00 00       	push   $0x38
 80484bb:	e9 70 ff ff ff       	jmp    8048430 <_init+0x24>

080484c0 <memset@plt>:
 80484c0:	ff 25 2c a0 04 08    	jmp    *0x804a02c
 80484c6:	68 40 00 00 00       	push   $0x40
 80484cb:	e9 60 ff ff ff       	jmp    8048430 <_init+0x24>

080484d0 <putchar@plt>:
 80484d0:	ff 25 30 a0 04 08    	jmp    *0x804a030
 80484d6:	68 48 00 00 00       	push   $0x48
 80484db:	e9 50 ff ff ff       	jmp    8048430 <_init+0x24>

Disassembly of section .text:

080484e0 <_start>:
 80484e0:	31 ed                	xor    %ebp,%ebp
 80484e2:	5e                   	pop    %esi
 80484e3:	89 e1                	mov    %esp,%ecx
 80484e5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484e8:	50                   	push   %eax
 80484e9:	54                   	push   %esp
 80484ea:	52                   	push   %edx
 80484eb:	68 10 88 04 08       	push   $0x8048810
 80484f0:	68 a0 87 04 08       	push   $0x80487a0
 80484f5:	51                   	push   %ecx
 80484f6:	56                   	push   %esi
 80484f7:	68 71 86 04 08       	push   $0x8048671
 80484fc:	e8 9f ff ff ff       	call   80484a0 <__libc_start_main@plt>
 8048501:	f4                   	hlt    
 8048502:	66 90                	xchg   %ax,%ax
 8048504:	66 90                	xchg   %ax,%ax
 8048506:	66 90                	xchg   %ax,%ax
 8048508:	66 90                	xchg   %ax,%ax
 804850a:	66 90                	xchg   %ax,%ax
 804850c:	66 90                	xchg   %ax,%ax
 804850e:	66 90                	xchg   %ax,%ax

08048510 <__x86.get_pc_thunk.bx>:
 8048510:	8b 1c 24             	mov    (%esp),%ebx
 8048513:	c3                   	ret    
 8048514:	66 90                	xchg   %ax,%ax
 8048516:	66 90                	xchg   %ax,%ax
 8048518:	66 90                	xchg   %ax,%ax
 804851a:	66 90                	xchg   %ax,%ax
 804851c:	66 90                	xchg   %ax,%ax
 804851e:	66 90                	xchg   %ax,%ax

08048520 <deregister_tm_clones>:
 8048520:	b8 3f a0 04 08       	mov    $0x804a03f,%eax
 8048525:	2d 3c a0 04 08       	sub    $0x804a03c,%eax
 804852a:	83 f8 06             	cmp    $0x6,%eax
 804852d:	77 02                	ja     8048531 <deregister_tm_clones+0x11>
 804852f:	f3 c3                	repz ret 
 8048531:	b8 00 00 00 00       	mov    $0x0,%eax
 8048536:	85 c0                	test   %eax,%eax
 8048538:	74 f5                	je     804852f <deregister_tm_clones+0xf>
 804853a:	55                   	push   %ebp
 804853b:	89 e5                	mov    %esp,%ebp
 804853d:	83 ec 18             	sub    $0x18,%esp
 8048540:	c7 04 24 3c a0 04 08 	movl   $0x804a03c,(%esp)
 8048547:	ff d0                	call   *%eax
 8048549:	c9                   	leave  
 804854a:	c3                   	ret    
 804854b:	90                   	nop
 804854c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048550 <register_tm_clones>:
 8048550:	b8 3c a0 04 08       	mov    $0x804a03c,%eax
 8048555:	2d 3c a0 04 08       	sub    $0x804a03c,%eax
 804855a:	c1 f8 02             	sar    $0x2,%eax
 804855d:	89 c2                	mov    %eax,%edx
 804855f:	c1 ea 1f             	shr    $0x1f,%edx
 8048562:	01 d0                	add    %edx,%eax
 8048564:	d1 f8                	sar    %eax
 8048566:	75 02                	jne    804856a <register_tm_clones+0x1a>
 8048568:	f3 c3                	repz ret 
 804856a:	ba 00 00 00 00       	mov    $0x0,%edx
 804856f:	85 d2                	test   %edx,%edx
 8048571:	74 f5                	je     8048568 <register_tm_clones+0x18>
 8048573:	55                   	push   %ebp
 8048574:	89 e5                	mov    %esp,%ebp
 8048576:	83 ec 18             	sub    $0x18,%esp
 8048579:	89 44 24 04          	mov    %eax,0x4(%esp)
 804857d:	c7 04 24 3c a0 04 08 	movl   $0x804a03c,(%esp)
 8048584:	ff d2                	call   *%edx
 8048586:	c9                   	leave  
 8048587:	c3                   	ret    
 8048588:	90                   	nop
 8048589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048590 <__do_global_dtors_aux>:
 8048590:	80 3d 64 a0 04 08 00 	cmpb   $0x0,0x804a064
 8048597:	75 13                	jne    80485ac <__do_global_dtors_aux+0x1c>
 8048599:	55                   	push   %ebp
 804859a:	89 e5                	mov    %esp,%ebp
 804859c:	83 ec 08             	sub    $0x8,%esp
 804859f:	e8 7c ff ff ff       	call   8048520 <deregister_tm_clones>
 80485a4:	c6 05 64 a0 04 08 01 	movb   $0x1,0x804a064
 80485ab:	c9                   	leave  
 80485ac:	f3 c3                	repz ret 
 80485ae:	66 90                	xchg   %ax,%ax

080485b0 <frame_dummy>:
 80485b0:	a1 10 9f 04 08       	mov    0x8049f10,%eax
 80485b5:	85 c0                	test   %eax,%eax
 80485b7:	74 1e                	je     80485d7 <frame_dummy+0x27>
 80485b9:	b8 00 00 00 00       	mov    $0x0,%eax
 80485be:	85 c0                	test   %eax,%eax
 80485c0:	74 15                	je     80485d7 <frame_dummy+0x27>
 80485c2:	55                   	push   %ebp
 80485c3:	89 e5                	mov    %esp,%ebp
 80485c5:	83 ec 18             	sub    $0x18,%esp
 80485c8:	c7 04 24 10 9f 04 08 	movl   $0x8049f10,(%esp)
 80485cf:	ff d0                	call   *%eax
 80485d1:	c9                   	leave  
 80485d2:	e9 79 ff ff ff       	jmp    8048550 <register_tm_clones>
 80485d7:	e9 74 ff ff ff       	jmp    8048550 <register_tm_clones>

080485dc <do_brainfuck>:
 80485dc:	55                   	push   %ebp
 80485dd:	89 e5                	mov    %esp,%ebp
 80485df:	53                   	push   %ebx
 80485e0:	83 ec 24             	sub    $0x24,%esp
 80485e3:	8b 45 08             	mov    0x8(%ebp),%eax
 80485e6:	88 45 f4             	mov    %al,-0xc(%ebp)
 80485e9:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
 80485ed:	83 e8 2b             	sub    $0x2b,%eax
 80485f0:	83 f8 30             	cmp    $0x30,%eax
 80485f3:	77 76                	ja     804866b <do_brainfuck+0x8f>
 80485f5:	8b 04 85 48 88 04 08 	mov    0x8048848(,%eax,4),%eax
 80485fc:	ff e0                	jmp    *%eax
 80485fe:	a1 80 a0 04 08       	mov    0x804a080,%eax ; >
 8048603:	83 c0 01             	add    $0x1,%eax
 8048606:	a3 80 a0 04 08       	mov    %eax,0x804a080
 804860b:	eb 5e                	jmp    804866b <do_brainfuck+0x8f>
 804860d:	a1 80 a0 04 08       	mov    0x804a080,%eax ; <
 8048612:	83 e8 01             	sub    $0x1,%eax
 8048615:	a3 80 a0 04 08       	mov    %eax,0x804a080
 804861a:	eb 4f                	jmp    804866b <do_brainfuck+0x8f>
 804861c:	a1 80 a0 04 08       	mov    0x804a080,%eax ; +
 8048621:	0f b6 10             	movzbl (%eax),%edx
 8048624:	83 c2 01             	add    $0x1,%edx
 8048627:	88 10                	mov    %dl,(%eax)
 8048629:	eb 40                	jmp    804866b <do_brainfuck+0x8f>
 804862b:	a1 80 a0 04 08       	mov    0x804a080,%eax ; -
 8048630:	0f b6 10             	movzbl (%eax),%edx
 8048633:	83 ea 01             	sub    $0x1,%edx
 8048636:	88 10                	mov    %dl,(%eax)
 8048638:	eb 31                	jmp    804866b <do_brainfuck+0x8f>
 804863a:	a1 80 a0 04 08       	mov    0x804a080,%eax ; .
 804863f:	0f b6 00             	movzbl (%eax),%eax
 8048642:	0f be c0             	movsbl %al,%eax
 8048645:	89 04 24             	mov    %eax,(%esp)
 8048648:	e8 83 fe ff ff       	call   80484d0 <putchar@plt>
 804864d:	eb 1c                	jmp    804866b <do_brainfuck+0x8f>
 804864f:	8b 1d 80 a0 04 08    	mov    0x804a080,%ebx ; ,
 8048655:	e8 e6 fd ff ff       	call   8048440 <getchar@plt>
 804865a:	88 03                	mov    %al,(%ebx)
 804865c:	eb 0d                	jmp    804866b <do_brainfuck+0x8f>
 804865e:	c7 04 24 30 88 04 08 	movl   $0x8048830,(%esp)
 8048665:	e8 06 fe ff ff       	call   8048470 <puts@plt>
 804866a:	90                   	nop
 804866b:	83 c4 24             	add    $0x24,%esp
 804866e:	5b                   	pop    %ebx
 804866f:	5d                   	pop    %ebp
 8048670:	c3                   	ret    

08048671 <main>:
 8048671:	55                   	push   %ebp
 8048672:	89 e5                	mov    %esp,%ebp
 8048674:	53                   	push   %ebx
 8048675:	83 e4 f0             	and    $0xfffffff0,%esp
 8048678:	81 ec 30 04 00 00    	sub    $0x430,%esp
 804867e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048681:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048685:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804868b:	89 84 24 2c 04 00 00 	mov    %eax,0x42c(%esp)
 8048692:	31 c0                	xor    %eax,%eax
 8048694:	a1 60 a0 04 08       	mov    0x804a060,%eax
 8048699:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 80486a0:	00 
 80486a1:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
 80486a8:	00 
 80486a9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80486b0:	00 
 80486b1:	89 04 24             	mov    %eax,(%esp)
 80486b4:	e8 f7 fd ff ff       	call   80484b0 <setvbuf@plt>
 80486b9:	a1 40 a0 04 08       	mov    0x804a040,%eax
 80486be:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 80486c5:	00 
 80486c6:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 80486cd:	00 
 80486ce:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80486d5:	00 
 80486d6:	89 04 24             	mov    %eax,(%esp)
 80486d9:	e8 d2 fd ff ff       	call   80484b0 <setvbuf@plt>
 80486de:	c7 05 80 a0 04 08 a0 	movl   $0x804a0a0,0x804a080
 80486e5:	a0 04 08 
 80486e8:	c7 04 24 0c 89 04 08 	movl   $0x804890c,(%esp)
 80486ef:	e8 7c fd ff ff       	call   8048470 <puts@plt>
 80486f4:	c7 04 24 34 89 04 08 	movl   $0x8048934,(%esp)
 80486fb:	e8 70 fd ff ff       	call   8048470 <puts@plt>
 8048700:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
 8048707:	00 
 8048708:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804870f:	00 
 8048710:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8048714:	89 04 24             	mov    %eax,(%esp)
 8048717:	e8 a4 fd ff ff       	call   80484c0 <memset@plt>
 804871c:	a1 40 a0 04 08       	mov    0x804a040,%eax
 8048721:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048725:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
 804872c:	00 
 804872d:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8048731:	89 04 24             	mov    %eax,(%esp)
 8048734:	e8 17 fd ff ff       	call   8048450 <fgets@plt>
 8048739:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%esp)
 8048740:	00 
 8048741:	eb 1d                	jmp    8048760 <main+0xef>
 8048743:	8d 54 24 2c          	lea    0x2c(%esp),%edx
 8048747:	8b 44 24 28          	mov    0x28(%esp),%eax
 804874b:	01 d0                	add    %edx,%eax
 804874d:	0f b6 00             	movzbl (%eax),%eax
 8048750:	0f be c0             	movsbl %al,%eax
 8048753:	89 04 24             	mov    %eax,(%esp)
 8048756:	e8 81 fe ff ff       	call   80485dc <do_brainfuck>
 804875b:	83 44 24 28 01       	addl   $0x1,0x28(%esp)
 8048760:	8b 5c 24 28          	mov    0x28(%esp),%ebx
 8048764:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8048768:	89 04 24             	mov    %eax,(%esp)
 804876b:	e8 20 fd ff ff       	call   8048490 <strlen@plt>
 8048770:	39 c3                	cmp    %eax,%ebx
 8048772:	72 cf                	jb     8048743 <main+0xd2>
 8048774:	b8 00 00 00 00       	mov    $0x0,%eax
 8048779:	8b 94 24 2c 04 00 00 	mov    0x42c(%esp),%edx
 8048780:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8048787:	74 05                	je     804878e <main+0x11d>
 8048789:	e8 d2 fc ff ff       	call   8048460 <__stack_chk_fail@plt>
 804878e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048791:	c9                   	leave  
 8048792:	c3                   	ret    
 8048793:	66 90                	xchg   %ax,%ax
 8048795:	66 90                	xchg   %ax,%ax
 8048797:	66 90                	xchg   %ax,%ax
 8048799:	66 90                	xchg   %ax,%ax
 804879b:	66 90                	xchg   %ax,%ax
 804879d:	66 90                	xchg   %ax,%ax
 804879f:	90                   	nop

080487a0 <__libc_csu_init>:
 80487a0:	55                   	push   %ebp
 80487a1:	57                   	push   %edi
 80487a2:	31 ff                	xor    %edi,%edi
 80487a4:	56                   	push   %esi
 80487a5:	53                   	push   %ebx
 80487a6:	e8 65 fd ff ff       	call   8048510 <__x86.get_pc_thunk.bx>
 80487ab:	81 c3 55 18 00 00    	add    $0x1855,%ebx
 80487b1:	83 ec 1c             	sub    $0x1c,%esp
 80487b4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80487b8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80487be:	e8 49 fc ff ff       	call   804840c <_init>
 80487c3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80487c9:	29 c6                	sub    %eax,%esi
 80487cb:	c1 fe 02             	sar    $0x2,%esi
 80487ce:	85 f6                	test   %esi,%esi
 80487d0:	74 27                	je     80487f9 <__libc_csu_init+0x59>
 80487d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80487d8:	8b 44 24 38          	mov    0x38(%esp),%eax
 80487dc:	89 2c 24             	mov    %ebp,(%esp)
 80487df:	89 44 24 08          	mov    %eax,0x8(%esp)
 80487e3:	8b 44 24 34          	mov    0x34(%esp),%eax
 80487e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80487eb:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80487f2:	83 c7 01             	add    $0x1,%edi
 80487f5:	39 f7                	cmp    %esi,%edi
 80487f7:	75 df                	jne    80487d8 <__libc_csu_init+0x38>
 80487f9:	83 c4 1c             	add    $0x1c,%esp
 80487fc:	5b                   	pop    %ebx
 80487fd:	5e                   	pop    %esi
 80487fe:	5f                   	pop    %edi
 80487ff:	5d                   	pop    %ebp
 8048800:	c3                   	ret    
 8048801:	eb 0d                	jmp    8048810 <__libc_csu_fini>
 8048803:	90                   	nop
 8048804:	90                   	nop
 8048805:	90                   	nop
 8048806:	90                   	nop
 8048807:	90                   	nop
 8048808:	90                   	nop
 8048809:	90                   	nop
 804880a:	90                   	nop
 804880b:	90                   	nop
 804880c:	90                   	nop
 804880d:	90                   	nop
 804880e:	90                   	nop
 804880f:	90                   	nop

08048810 <__libc_csu_fini>:
 8048810:	f3 c3                	repz ret 
 8048812:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

08048814 <_fini>:
 8048814:	53                   	push   %ebx
 8048815:	83 ec 08             	sub    $0x8,%esp
 8048818:	e8 f3 fc ff ff       	call   8048510 <__x86.get_pc_thunk.bx>
 804881d:	81 c3 e3 17 00 00    	add    $0x17e3,%ebx
 8048823:	83 c4 08             	add    $0x8,%esp
 8048826:	5b                   	pop    %ebx
 8048827:	c3                   	ret    

Disassembly of section .rodata:

08048828 <_fp_hw>:
 8048828:	03 00                	add    (%eax),%eax
	...

0804882c <_IO_stdin_used>:
 804882c:	01 00                	add    %eax,(%eax)
 804882e:	02 00                	add    (%eax),%al
 8048830:	5b                   	pop    %ebx
 8048831:	20 61 6e             	and    %ah,0x6e(%ecx)
 8048834:	64 20 5d 20          	and    %bl,%fs:0x20(%ebp)
 8048838:	6e                   	outsb  %ds:(%esi),(%dx)
 8048839:	6f                   	outsl  %ds:(%esi),(%dx)
 804883a:	74 20                	je     804885c <_IO_stdin_used+0x30>
 804883c:	73 75                	jae    80488b3 <_IO_stdin_used+0x87>
 804883e:	70 70                	jo     80488b0 <_IO_stdin_used+0x84>
 8048840:	6f                   	outsl  %ds:(%esi),(%dx)
 8048841:	72 74                	jb     80488b7 <_IO_stdin_used+0x8b>
 8048843:	65 64 2e 00 00       	gs fs add %al,%cs:(%eax)
 8048848:	1c 86                	sbb    $0x86,%al
 804884a:	04 08                	add    $0x8,%al
 804884c:	4f                   	dec    %edi
 804884d:	86 04 08             	xchg   %al,(%eax,%ecx,1)
 8048850:	2b 86 04 08 3a 86    	sub    -0x79c5f7fc(%esi),%eax
 8048856:	04 08                	add    $0x8,%al
 8048858:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 804885f:	08 6b 86             	or     %ch,-0x7a(%ebx)
 8048862:	04 08                	add    $0x8,%al
 8048864:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 804886b:	08 6b 86             	or     %ch,-0x7a(%ebx)
 804886e:	04 08                	add    $0x8,%al
 8048870:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 8048877:	08 6b 86             	or     %ch,-0x7a(%ebx)
 804887a:	04 08                	add    $0x8,%al
 804887c:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 8048883:	08 6b 86             	or     %ch,-0x7a(%ebx)
 8048886:	04 08                	add    $0x8,%al
 8048888:	6b 86 04 08 0d 86 04 	imul   $0x4,-0x79f2f7fc(%esi),%eax
 804888f:	08 6b 86             	or     %ch,-0x7a(%ebx)
 8048892:	04 08                	add    $0x8,%al
 8048894:	fe 85 04 08 6b 86    	incb   -0x7994f7fc(%ebp)
 804889a:	04 08                	add    $0x8,%al
 804889c:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 80488a3:	08 6b 86             	or     %ch,-0x7a(%ebx)
 80488a6:	04 08                	add    $0x8,%al
 80488a8:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 80488af:	08 6b 86             	or     %ch,-0x7a(%ebx)
 80488b2:	04 08                	add    $0x8,%al
 80488b4:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 80488bb:	08 6b 86             	or     %ch,-0x7a(%ebx)
 80488be:	04 08                	add    $0x8,%al
 80488c0:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 80488c7:	08 6b 86             	or     %ch,-0x7a(%ebx)
 80488ca:	04 08                	add    $0x8,%al
 80488cc:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 80488d3:	08 6b 86             	or     %ch,-0x7a(%ebx)
 80488d6:	04 08                	add    $0x8,%al
 80488d8:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 80488df:	08 6b 86             	or     %ch,-0x7a(%ebx)
 80488e2:	04 08                	add    $0x8,%al
 80488e4:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 80488eb:	08 6b 86             	or     %ch,-0x7a(%ebx)
 80488ee:	04 08                	add    $0x8,%al
 80488f0:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 80488f7:	08 6b 86             	or     %ch,-0x7a(%ebx)
 80488fa:	04 08                	add    $0x8,%al
 80488fc:	6b 86 04 08 6b 86 04 	imul   $0x4,-0x7994f7fc(%esi),%eax
 8048903:	08 6b 86             	or     %ch,-0x7a(%ebx)
 8048906:	04 08                	add    $0x8,%al
 8048908:	5e                   	pop    %esi
 8048909:	86 04 08             	xchg   %al,(%eax,%ecx,1)
 804890c:	77 65                	ja     8048973 <_IO_stdin_used+0x147>
 804890e:	6c                   	insb   (%dx),%es:(%edi)
 804890f:	63 6f 6d             	arpl   %bp,0x6d(%edi)
 8048912:	65 20 74 6f 20       	and    %dh,%gs:0x20(%edi,%ebp,2)
 8048917:	62 72 61             	bound  %esi,0x61(%edx)
 804891a:	69 6e 66 75 63 6b 20 	imul   $0x206b6375,0x66(%esi),%ebp
 8048921:	74 65                	je     8048988 <_IO_stdin_used+0x15c>
 8048923:	73 74                	jae    8048999 <_IO_stdin_used+0x16d>
 8048925:	69 6e 67 20 73 79 73 	imul   $0x73797320,0x67(%esi),%ebp
 804892c:	74 65                	je     8048993 <_IO_stdin_used+0x167>
 804892e:	6d                   	insl   (%dx),%es:(%edi)
 804892f:	21 21                	and    %esp,(%ecx)
 8048931:	00 00                	add    %al,(%eax)
 8048933:	00 74 79 70          	add    %dh,0x70(%ecx,%edi,2)
 8048937:	65 20 73 6f          	and    %dh,%gs:0x6f(%ebx)
 804893b:	6d                   	insl   (%dx),%es:(%edi)
 804893c:	65 20 62 72          	and    %ah,%gs:0x72(%edx)
 8048940:	61                   	popa   
 8048941:	69 6e 66 75 63 6b 20 	imul   $0x206b6375,0x66(%esi),%ebp
 8048948:	69 6e 73 74 72 75 63 	imul   $0x63757274,0x73(%esi),%ebp
 804894f:	74 69                	je     80489ba <_IO_stdin_used+0x18e>
 8048951:	6f                   	outsl  %ds:(%esi),(%dx)
 8048952:	6e                   	outsb  %ds:(%esi),(%dx)
 8048953:	73 20                	jae    8048975 <_IO_stdin_used+0x149>
 8048955:	65 78 63             	gs js  80489bb <_IO_stdin_used+0x18f>
 8048958:	65 70 74             	gs jo  80489cf <_IO_stdin_used+0x1a3>
 804895b:	20 5b 20             	and    %bl,0x20(%ebx)
 804895e:	5d                   	pop    %ebp
	...

Disassembly of section .eh_frame_hdr:

08048960 <.eh_frame_hdr>:
 8048960:	01 1b                	add    %ebx,(%ebx)
 8048962:	03 3b                	add    (%ebx),%edi
 8048964:	30 00                	xor    %al,(%eax)
 8048966:	00 00                	add    %al,(%eax)
 8048968:	05 00 00 00 d0       	add    $0xd0000000,%eax
 804896d:	fa                   	cli    
 804896e:	ff                   	(bad)  
 804896f:	ff 4c 00 00          	decl   0x0(%eax,%eax,1)
 8048973:	00 7c fc ff          	add    %bh,-0x1(%esp,%edi,8)
 8048977:	ff 70 00             	pushl  0x0(%eax)
 804897a:	00 00                	add    %al,(%eax)
 804897c:	11 fd                	adc    %edi,%ebp
 804897e:	ff                   	(bad)  
 804897f:	ff 94 00 00 00 40 fe 	call   *-0x1c00000(%eax,%eax,1)
 8048986:	ff                   	(bad)  
 8048987:	ff                   	(bad)  
 8048988:	b8 00 00 00 b0       	mov    $0xb0000000,%eax
 804898d:	fe                   	(bad)  
 804898e:	ff                   	(bad)  
 804898f:	ff f4                	push   %esp
 8048991:	00 00                	add    %al,(%eax)
	...

Disassembly of section .eh_frame:

08048994 <__FRAME_END__-0xd4>:
 8048994:	14 00                	adc    $0x0,%al
 8048996:	00 00                	add    %al,(%eax)
 8048998:	00 00                	add    %al,(%eax)
 804899a:	00 00                	add    %al,(%eax)
 804899c:	01 7a 52             	add    %edi,0x52(%edx)
 804899f:	00 01                	add    %al,(%ecx)
 80489a1:	7c 08                	jl     80489ab <_IO_stdin_used+0x17f>
 80489a3:	01 1b                	add    %ebx,(%ebx)
 80489a5:	0c 04                	or     $0x4,%al
 80489a7:	04 88                	add    $0x88,%al
 80489a9:	01 00                	add    %eax,(%eax)
 80489ab:	00 20                	add    %ah,(%eax)
 80489ad:	00 00                	add    %al,(%eax)
 80489af:	00 1c 00             	add    %bl,(%eax,%eax,1)
 80489b2:	00 00                	add    %al,(%eax)
 80489b4:	7c fa                	jl     80489b0 <_IO_stdin_used+0x184>
 80489b6:	ff                   	(bad)  
 80489b7:	ff b0 00 00 00 00    	pushl  0x0(%eax)
 80489bd:	0e                   	push   %cs
 80489be:	08 46 0e             	or     %al,0xe(%esi)
 80489c1:	0c 4a                	or     $0x4a,%al
 80489c3:	0f 0b                	ud2    
 80489c5:	74 04                	je     80489cb <_IO_stdin_used+0x19f>
 80489c7:	78 00                	js     80489c9 <_IO_stdin_used+0x19d>
 80489c9:	3f                   	aas    
 80489ca:	1a 3b                	sbb    (%ebx),%bh
 80489cc:	2a 32                	sub    (%edx),%dh
 80489ce:	24 22                	and    $0x22,%al
 80489d0:	20 00                	and    %al,(%eax)
 80489d2:	00 00                	add    %al,(%eax)
 80489d4:	40                   	inc    %eax
 80489d5:	00 00                	add    %al,(%eax)
 80489d7:	00 04 fc             	add    %al,(%esp,%edi,8)
 80489da:	ff                   	(bad)  
 80489db:	ff 95 00 00 00 00    	call   *0x0(%ebp)
 80489e1:	41                   	inc    %ecx
 80489e2:	0e                   	push   %cs
 80489e3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 80489e9:	44                   	inc    %esp
 80489ea:	83 03 02             	addl   $0x2,(%ebx)
 80489ed:	8c c3                	mov    %es,%ebx
 80489ef:	41                   	inc    %ecx
 80489f0:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 80489f3:	04 20                	add    $0x20,%al
 80489f5:	00 00                	add    %al,(%eax)
 80489f7:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
 80489fb:	00 75 fc             	add    %dh,-0x4(%ebp)
 80489fe:	ff                   	(bad)  
 80489ff:	ff 22                	jmp    *(%edx)
 8048a01:	01 00                	add    %eax,(%eax)
 8048a03:	00 00                	add    %al,(%eax)
 8048a05:	41                   	inc    %ecx
 8048a06:	0e                   	push   %cs
 8048a07:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048a0d:	4a                   	dec    %edx
 8048a0e:	83 03 03             	addl   $0x3,(%ebx)
 8048a11:	14 01                	adc    $0x1,%al
 8048a13:	c5 c3 0c             	(bad)  
 8048a16:	04 04                	add    $0x4,%al
 8048a18:	38 00                	cmp    %al,(%eax)
 8048a1a:	00 00                	add    %al,(%eax)
 8048a1c:	88 00                	mov    %al,(%eax)
 8048a1e:	00 00                	add    %al,(%eax)
 8048a20:	80 fd ff             	cmp    $0xff,%ch
 8048a23:	ff 61 00             	jmp    *0x0(%ecx)
 8048a26:	00 00                	add    %al,(%eax)
 8048a28:	00 41 0e             	add    %al,0xe(%ecx)
 8048a2b:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 8048a31:	87 03                	xchg   %eax,(%ebx)
 8048a33:	43                   	inc    %ebx
 8048a34:	0e                   	push   %cs
 8048a35:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 8048a3b:	83 05 4e 0e 30 02 48 	addl   $0x48,0x2300e4e
 8048a42:	0e                   	push   %cs
 8048a43:	14 41                	adc    $0x41,%al
 8048a45:	c3                   	ret    
 8048a46:	0e                   	push   %cs
 8048a47:	10 41 c6             	adc    %al,-0x3a(%ecx)
 8048a4a:	0e                   	push   %cs
 8048a4b:	0c 41                	or     $0x41,%al
 8048a4d:	c7                   	(bad)  
 8048a4e:	0e                   	push   %cs
 8048a4f:	08 41 c5             	or     %al,-0x3b(%ecx)
 8048a52:	0e                   	push   %cs
 8048a53:	04 10                	add    $0x10,%al
 8048a55:	00 00                	add    %al,(%eax)
 8048a57:	00 c4                	add    %al,%ah
 8048a59:	00 00                	add    %al,(%eax)
 8048a5b:	00 b4 fd ff ff 02 00 	add    %dh,0x2ffff(%ebp,%edi,8)
 8048a62:	00 00                	add    %al,(%eax)
 8048a64:	00 00                	add    %al,(%eax)
	...

08048a68 <__FRAME_END__>:
 8048a68:	00 00                	add    %al,(%eax)
	...

Disassembly of section .init_array:

08049f08 <__frame_dummy_init_array_entry>:
 8049f08:	b0 85                	mov    $0x85,%al
 8049f0a:	04 08                	add    $0x8,%al

Disassembly of section .fini_array:

08049f0c <__do_global_dtors_aux_fini_array_entry>:
 8049f0c:	90                   	nop
 8049f0d:	85 04 08             	test   %eax,(%eax,%ecx,1)

Disassembly of section .jcr:

08049f10 <__JCR_END__>:
 8049f10:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dynamic:

08049f14 <_DYNAMIC>:
 8049f14:	01 00                	add    %eax,(%eax)
 8049f16:	00 00                	add    %al,(%eax)
 8049f18:	01 00                	add    %eax,(%eax)
 8049f1a:	00 00                	add    %al,(%eax)
 8049f1c:	0c 00                	or     $0x0,%al
 8049f1e:	00 00                	add    %al,(%eax)
 8049f20:	0c 84                	or     $0x84,%al
 8049f22:	04 08                	add    $0x8,%al
 8049f24:	0d 00 00 00 14       	or     $0x14000000,%eax
 8049f29:	88 04 08             	mov    %al,(%eax,%ecx,1)
 8049f2c:	19 00                	sbb    %eax,(%eax)
 8049f2e:	00 00                	add    %al,(%eax)
 8049f30:	08 9f 04 08 1b 00    	or     %bl,0x1b0804(%edi)
 8049f36:	00 00                	add    %al,(%eax)
 8049f38:	04 00                	add    $0x0,%al
 8049f3a:	00 00                	add    %al,(%eax)
 8049f3c:	1a 00                	sbb    (%eax),%al
 8049f3e:	00 00                	add    %al,(%eax)
 8049f40:	0c 9f                	or     $0x9f,%al
 8049f42:	04 08                	add    $0x8,%al
 8049f44:	1c 00                	sbb    $0x0,%al
 8049f46:	00 00                	add    %al,(%eax)
 8049f48:	04 00                	add    $0x0,%al
 8049f4a:	00 00                	add    %al,(%eax)
 8049f4c:	f5                   	cmc    
 8049f4d:	fe                   	(bad)  
 8049f4e:	ff 6f ac             	ljmp   *-0x54(%edi)
 8049f51:	81 04 08 05 00 00 00 	addl   $0x5,(%eax,%ecx,1)
 8049f58:	b8 82 04 08 06       	mov    $0x6080482,%eax
 8049f5d:	00 00                	add    %al,(%eax)
 8049f5f:	00 d8                	add    %bl,%al
 8049f61:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 8049f68:	9e                   	sahf   
 8049f69:	00 00                	add    %al,(%eax)
 8049f6b:	00 0b                	add    %cl,(%ebx)
 8049f6d:	00 00                	add    %al,(%eax)
 8049f6f:	00 10                	add    %dl,(%eax)
 8049f71:	00 00                	add    %al,(%eax)
 8049f73:	00 15 00 00 00 00    	add    %dl,0x0
 8049f79:	00 00                	add    %al,(%eax)
 8049f7b:	00 03                	add    %al,(%ebx)
 8049f7d:	00 00                	add    %al,(%eax)
 8049f7f:	00 00                	add    %al,(%eax)
 8049f81:	a0 04 08 02 00       	mov    0x20804,%al
 8049f86:	00 00                	add    %al,(%eax)
 8049f88:	50                   	push   %eax
 8049f89:	00 00                	add    %al,(%eax)
 8049f8b:	00 14 00             	add    %dl,(%eax,%eax,1)
 8049f8e:	00 00                	add    %al,(%eax)
 8049f90:	11 00                	adc    %eax,(%eax)
 8049f92:	00 00                	add    %al,(%eax)
 8049f94:	17                   	pop    %ss
 8049f95:	00 00                	add    %al,(%eax)
 8049f97:	00 bc 83 04 08 11 00 	add    %bh,0x110804(%ebx,%eax,4)
 8049f9e:	00 00                	add    %al,(%eax)
 8049fa0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8049fa1:	83 04 08 12          	addl   $0x12,(%eax,%ecx,1)
 8049fa5:	00 00                	add    %al,(%eax)
 8049fa7:	00 18                	add    %bl,(%eax)
 8049fa9:	00 00                	add    %al,(%eax)
 8049fab:	00 13                	add    %dl,(%ebx)
 8049fad:	00 00                	add    %al,(%eax)
 8049faf:	00 08                	add    %cl,(%eax)
 8049fb1:	00 00                	add    %al,(%eax)
 8049fb3:	00 fe                	add    %bh,%dh
 8049fb5:	ff                   	(bad)  
 8049fb6:	ff 6f 74             	ljmp   *0x74(%edi)
 8049fb9:	83 04 08 ff          	addl   $0xffffffff,(%eax,%ecx,1)
 8049fbd:	ff                   	(bad)  
 8049fbe:	ff 6f 01             	ljmp   *0x1(%edi)
 8049fc1:	00 00                	add    %al,(%eax)
 8049fc3:	00 f0                	add    %dh,%al
 8049fc5:	ff                   	(bad)  
 8049fc6:	ff 6f 56             	ljmp   *0x56(%edi)
 8049fc9:	83 04 08 00          	addl   $0x0,(%eax,%ecx,1)
	...

Disassembly of section .got:

08049ffc <.got>:
 8049ffc:	00 00                	add    %al,(%eax)
	...

Disassembly of section .got.plt:

0804a000 <_GLOBAL_OFFSET_TABLE_>:
 804a000:	14 9f                	adc    $0x9f,%al
 804a002:	04 08                	add    $0x8,%al
	...
 804a00c:	46                   	inc    %esi
 804a00d:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a010:	56                   	push   %esi
 804a011:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a014:	66 84 04 08          	data16 test %al,(%eax,%ecx,1)
 804a018:	76 84                	jbe    8049f9e <_DYNAMIC+0x8a>
 804a01a:	04 08                	add    $0x8,%al
 804a01c:	86 84 04 08 96 84 04 	xchg   %al,0x4849608(%esp,%eax,1)
 804a023:	08 a6 84 04 08 b6    	or     %ah,-0x49f7fb7c(%esi)
 804a029:	84 04 08             	test   %al,(%eax,%ecx,1)
 804a02c:	c6 84 04 08 d6 84 04 	movb   $0x8,0x484d608(%esp,%eax,1)
 804a033:	08 

Disassembly of section .data:

0804a034 <__data_start>:
 804a034:	00 00                	add    %al,(%eax)
	...

0804a038 <__dso_handle>:
 804a038:	00 00                	add    %al,(%eax)
	...

Disassembly of section .bss:

0804a040 <stdin@@GLIBC_2.0>:
	...

0804a060 <stdout@@GLIBC_2.0>:
 804a060:	00 00                	add    %al,(%eax)
	...

0804a064 <completed.6339>:
	...

0804a080 <p>:
	...

0804a0a0 <tape>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <_init-0x8048394>
   a:	74 75                	je     81 <_init-0x804838b>
   c:	2f                   	das    
   d:	4c                   	dec    %esp
   e:	69 6e 61 72 6f 20 34 	imul   $0x34206f72,0x61(%esi),%ebp
  15:	2e 37                	cs aaa 
  17:	2e 33 2d 31 75 62 75 	xor    %cs:0x75627531,%ebp
  1e:	6e                   	outsb  %ds:(%esi),(%dx)
  1f:	74 75                	je     96 <_init-0x8048376>
  21:	31 29                	xor    %ebp,(%ecx)
  23:	20 34 2e             	and    %dh,(%esi,%ebp,1)
  26:	37                   	aaa    
  27:	2e 33 00             	xor    %cs:(%eax),%eax
