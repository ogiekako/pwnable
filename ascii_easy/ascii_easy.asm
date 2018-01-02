
/home/ascii_easy/ascii_easy:     file format elf32-i386


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
 8048183:	00 20                	add    %ah,(%eax)
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
 8048197:	00 3a                	add    %bh,(%edx)
 8048199:	74 cf                	je     804816a <_init-0x1e2>
 804819b:	f7 b3 40 c2 3d 3f    	divl   0x3f3dc240(%ebx)
 80481a1:	90                   	nop
 80481a2:	db 3d 93 4c 4c a3    	fstpt  0xa34c4c93
 80481a8:	28 c4                	sub    %al,%ah
 80481aa:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 80481ab:	b8                   	.byte 0xb8

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	02 00                	add    (%eax),%al
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	09 00                	or     %eax,(%eax)
 80481b2:	00 00                	add    %al,(%eax)
 80481b4:	01 00                	add    %eax,(%eax)
 80481b6:	00 00                	add    %al,(%eax)
 80481b8:	05 00 00 00 00       	add    $0x0,%eax
 80481bd:	20 00                	and    %al,(%eax)
 80481bf:	20 00                	and    %al,(%eax)
 80481c1:	00 00                	add    %al,(%eax)
 80481c3:	00 09                	add    %cl,(%ecx)
 80481c5:	00 00                	add    %al,(%eax)
 80481c7:	00                   	.byte 0x0
 80481c8:	ad                   	lods   %ds:(%esi),%eax
 80481c9:	4b                   	dec    %ebx
 80481ca:	e3 c0                	jecxz  804818c <_init-0x1c0>

Disassembly of section .dynsym:

080481cc <.dynsym>:
	...
 80481dc:	1a 00                	sbb    (%eax),%al
	...
 80481e6:	00 00                	add    %al,(%eax)
 80481e8:	12 00                	adc    (%eax),%al
 80481ea:	00 00                	add    %al,(%eax)
 80481ec:	21 00                	and    %eax,(%eax)
	...
 80481f6:	00 00                	add    %al,(%eax)
 80481f8:	12 00                	adc    (%eax),%al
 80481fa:	00 00                	add    %al,(%eax)
 80481fc:	49                   	dec    %ecx
	...
 8048205:	00 00                	add    %al,(%eax)
 8048207:	00 12                	add    %dl,(%edx)
 8048209:	00 00                	add    %al,(%eax)
 804820b:	00 52 00             	add    %dl,0x0(%edx)
	...
 8048216:	00 00                	add    %al,(%eax)
 8048218:	20 00                	and    %al,(%eax)
 804821a:	00 00                	add    %al,(%eax)
 804821c:	32 00                	xor    (%eax),%al
	...
 8048226:	00 00                	add    %al,(%eax)
 8048228:	12 00                	adc    (%eax),%al
 804822a:	00 00                	add    %al,(%eax)
 804822c:	26 00 00             	add    %al,%es:(%eax)
	...
 8048237:	00 12                	add    %dl,(%edx)
 8048239:	00 00                	add    %al,(%eax)
 804823b:	00 2b                	add    %ch,(%ebx)
	...
 8048245:	00 00                	add    %al,(%eax)
 8048247:	00 12                	add    %dl,(%edx)
 8048249:	00 00                	add    %al,(%eax)
 804824b:	00 37                	add    %dh,(%edi)
	...
 8048255:	00 00                	add    %al,(%eax)
 8048257:	00 12                	add    %dl,(%edx)
 8048259:	00 00                	add    %al,(%eax)
 804825b:	00 0b                	add    %cl,(%ebx)
 804825d:	00 00                	add    %al,(%eax)
 804825f:	00 1c 87             	add    %bl,(%edi,%eax,4)
 8048262:	04 08                	add    $0x8,%al
 8048264:	04 00                	add    $0x0,%al
 8048266:	00 00                	add    %al,(%eax)
 8048268:	11 00                	adc    %eax,(%eax)
 804826a:	10 00                	adc    %al,(%eax)

Disassembly of section .dynstr:

0804826c <.dynstr>:
 804826c:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 8048270:	63 2e                	arpl   %bp,(%esi)
 8048272:	73 6f                	jae    80482e3 <_init-0x69>
 8048274:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 8048279:	4f                   	dec    %edi
 804827a:	5f                   	pop    %edi
 804827b:	73 74                	jae    80482f1 <_init-0x5b>
 804827d:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 8048284:	64 
 8048285:	00 73 74             	add    %dh,0x74(%ebx)
 8048288:	72 63                	jb     80482ed <_init-0x5f>
 804828a:	70 79                	jo     8048305 <_init-0x47>
 804828c:	00 70 75             	add    %dh,0x75(%eax)
 804828f:	74 73                	je     8048304 <_init-0x48>
 8048291:	00 6d 6d             	add    %ch,0x6d(%ebp)
 8048294:	61                   	popa   
 8048295:	70 00                	jo     8048297 <_init-0xb5>
 8048297:	73 74                	jae    804830d <_init-0x3f>
 8048299:	72 6c                	jb     8048307 <_init-0x45>
 804829b:	65 6e                	outsb  %gs:(%esi),(%dx)
 804829d:	00 6f 70             	add    %ch,0x70(%edi)
 80482a0:	65 6e                	outsb  %gs:(%esi),(%dx)
 80482a2:	00 5f 5f             	add    %bl,0x5f(%edi)
 80482a5:	6c                   	insb   (%dx),%es:(%edi)
 80482a6:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 80482ad:	72 74                	jb     8048323 <_init-0x29>
 80482af:	5f                   	pop    %edi
 80482b0:	6d                   	insl   (%dx),%es:(%edi)
 80482b1:	61                   	popa   
 80482b2:	69 6e 00 5f 5f 66 78 	imul   $0x78665f5f,0x0(%esi),%ebp
 80482b9:	73 74                	jae    804832f <_init-0x1d>
 80482bb:	61                   	popa   
 80482bc:	74 00                	je     80482be <_init-0x8e>
 80482be:	5f                   	pop    %edi
 80482bf:	5f                   	pop    %edi
 80482c0:	67 6d                	insl   (%dx),%es:(%di)
 80482c2:	6f                   	outsl  %ds:(%esi),(%dx)
 80482c3:	6e                   	outsb  %ds:(%esi),(%dx)
 80482c4:	5f                   	pop    %edi
 80482c5:	73 74                	jae    804833b <_init-0x11>
 80482c7:	61                   	popa   
 80482c8:	72 74                	jb     804833e <_init-0xe>
 80482ca:	5f                   	pop    %edi
 80482cb:	5f                   	pop    %edi
 80482cc:	00 47 4c             	add    %al,0x4c(%edi)
 80482cf:	49                   	dec    %ecx
 80482d0:	42                   	inc    %edx
 80482d1:	43                   	inc    %ebx
 80482d2:	5f                   	pop    %edi
 80482d3:	32 2e                	xor    (%esi),%ch
 80482d5:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

080482d8 <.gnu.version>:
 80482d8:	00 00                	add    %al,(%eax)
 80482da:	02 00                	add    (%eax),%al
 80482dc:	02 00                	add    (%eax),%al
 80482de:	02 00                	add    (%eax),%al
 80482e0:	00 00                	add    %al,(%eax)
 80482e2:	02 00                	add    (%eax),%al
 80482e4:	02 00                	add    (%eax),%al
 80482e6:	02 00                	add    (%eax),%al
 80482e8:	02 00                	add    (%eax),%al
 80482ea:	01 00                	add    %eax,(%eax)

Disassembly of section .gnu.version_r:

080482ec <.gnu.version_r>:
 80482ec:	01 00                	add    %eax,(%eax)
 80482ee:	01 00                	add    %eax,(%eax)
 80482f0:	01 00                	add    %eax,(%eax)
 80482f2:	00 00                	add    %al,(%eax)
 80482f4:	10 00                	adc    %al,(%eax)
 80482f6:	00 00                	add    %al,(%eax)
 80482f8:	00 00                	add    %al,(%eax)
 80482fa:	00 00                	add    %al,(%eax)
 80482fc:	10 69 69             	adc    %ch,0x69(%ecx)
 80482ff:	0d 00 00 02 00       	or     $0x20000,%eax
 8048304:	61                   	popa   
 8048305:	00 00                	add    %al,(%eax)
 8048307:	00 00                	add    %al,(%eax)
 8048309:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

0804830c <.rel.dyn>:
 804830c:	fc                   	cld    
 804830d:	9f                   	lahf   
 804830e:	04 08                	add    $0x8,%al
 8048310:	06                   	push   %es
 8048311:	04 00                	add    $0x0,%al
	...

Disassembly of section .rel.plt:

08048314 <.rel.plt>:
 8048314:	0c a0                	or     $0xa0,%al
 8048316:	04 08                	add    $0x8,%al
 8048318:	07                   	pop    %es
 8048319:	01 00                	add    %eax,(%eax)
 804831b:	00 10                	add    %dl,(%eax)
 804831d:	a0 04 08 07 02       	mov    0x2070804,%al
 8048322:	00 00                	add    %al,(%eax)
 8048324:	14 a0                	adc    $0xa0,%al
 8048326:	04 08                	add    $0x8,%al
 8048328:	07                   	pop    %es
 8048329:	03 00                	add    (%eax),%eax
 804832b:	00 18                	add    %bl,(%eax)
 804832d:	a0 04 08 07 05       	mov    0x5070804,%al
 8048332:	00 00                	add    %al,(%eax)
 8048334:	1c a0                	sbb    $0xa0,%al
 8048336:	04 08                	add    $0x8,%al
 8048338:	07                   	pop    %es
 8048339:	06                   	push   %es
 804833a:	00 00                	add    %al,(%eax)
 804833c:	20 a0 04 08 07 07    	and    %ah,0x7070804(%eax)
 8048342:	00 00                	add    %al,(%eax)
 8048344:	24 a0                	and    $0xa0,%al
 8048346:	04 08                	add    $0x8,%al
 8048348:	07                   	pop    %es
 8048349:	08 00                	or     %al,(%eax)
	...

Disassembly of section .init:

0804834c <_init>:
 804834c:	53                   	push   %ebx
 804834d:	83 ec 08             	sub    $0x8,%esp
 8048350:	e8 db 00 00 00       	call   8048430 <__x86.get_pc_thunk.bx>
 8048355:	81 c3 ab 1c 00 00    	add    $0x1cab,%ebx
 804835b:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048361:	85 c0                	test   %eax,%eax
 8048363:	74 05                	je     804836a <_init+0x1e>
 8048365:	e8 86 00 00 00       	call   80483f0 <__libc_start_main@plt+0x10>
 804836a:	83 c4 08             	add    $0x8,%esp
 804836d:	5b                   	pop    %ebx
 804836e:	c3                   	ret    

Disassembly of section .plt:

08048370 <strcpy@plt-0x10>:
 8048370:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048376:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804837c:	00 00                	add    %al,(%eax)
	...

08048380 <strcpy@plt>:
 8048380:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048386:	68 00 00 00 00       	push   $0x0
 804838b:	e9 e0 ff ff ff       	jmp    8048370 <_init+0x24>

08048390 <puts@plt>:
 8048390:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048396:	68 08 00 00 00       	push   $0x8
 804839b:	e9 d0 ff ff ff       	jmp    8048370 <_init+0x24>

080483a0 <__fxstat@plt>:
 80483a0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80483a6:	68 10 00 00 00       	push   $0x10
 80483ab:	e9 c0 ff ff ff       	jmp    8048370 <_init+0x24>

080483b0 <open@plt>:
 80483b0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80483b6:	68 18 00 00 00       	push   $0x18
 80483bb:	e9 b0 ff ff ff       	jmp    8048370 <_init+0x24>

080483c0 <mmap@plt>:
 80483c0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80483c6:	68 20 00 00 00       	push   $0x20
 80483cb:	e9 a0 ff ff ff       	jmp    8048370 <_init+0x24>

080483d0 <strlen@plt>:
 80483d0:	ff 25 20 a0 04 08    	jmp    *0x804a020
 80483d6:	68 28 00 00 00       	push   $0x28
 80483db:	e9 90 ff ff ff       	jmp    8048370 <_init+0x24>

080483e0 <__libc_start_main@plt>:
 80483e0:	ff 25 24 a0 04 08    	jmp    *0x804a024
 80483e6:	68 30 00 00 00       	push   $0x30
 80483eb:	e9 80 ff ff ff       	jmp    8048370 <_init+0x24>

Disassembly of section .plt.got:

080483f0 <.plt.got>:
 80483f0:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 80483f6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048400 <_start>:
 8048400:	31 ed                	xor    %ebp,%ebp
 8048402:	5e                   	pop    %esi
 8048403:	89 e1                	mov    %esp,%ecx
 8048405:	83 e4 f0             	and    $0xfffffff0,%esp
 8048408:	50                   	push   %eax
 8048409:	54                   	push   %esp
 804840a:	52                   	push   %edx
 804840b:	68 d0 86 04 08       	push   $0x80486d0
 8048410:	68 70 86 04 08       	push   $0x8048670
 8048415:	51                   	push   %ecx
 8048416:	56                   	push   %esi
 8048417:	68 33 85 04 08       	push   $0x8048533
 804841c:	e8 bf ff ff ff       	call   80483e0 <__libc_start_main@plt>
 8048421:	f4                   	hlt    
 8048422:	66 90                	xchg   %ax,%ax
 8048424:	66 90                	xchg   %ax,%ax
 8048426:	66 90                	xchg   %ax,%ax
 8048428:	66 90                	xchg   %ax,%ax
 804842a:	66 90                	xchg   %ax,%ax
 804842c:	66 90                	xchg   %ax,%ax
 804842e:	66 90                	xchg   %ax,%ax

08048430 <__x86.get_pc_thunk.bx>:
 8048430:	8b 1c 24             	mov    (%esp),%ebx
 8048433:	c3                   	ret    
 8048434:	66 90                	xchg   %ax,%ax
 8048436:	66 90                	xchg   %ax,%ax
 8048438:	66 90                	xchg   %ax,%ax
 804843a:	66 90                	xchg   %ax,%ax
 804843c:	66 90                	xchg   %ax,%ax
 804843e:	66 90                	xchg   %ax,%ax

08048440 <deregister_tm_clones>:
 8048440:	b8 33 a0 04 08       	mov    $0x804a033,%eax
 8048445:	2d 30 a0 04 08       	sub    $0x804a030,%eax
 804844a:	83 f8 06             	cmp    $0x6,%eax
 804844d:	76 1a                	jbe    8048469 <deregister_tm_clones+0x29>
 804844f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048454:	85 c0                	test   %eax,%eax
 8048456:	74 11                	je     8048469 <deregister_tm_clones+0x29>
 8048458:	55                   	push   %ebp
 8048459:	89 e5                	mov    %esp,%ebp
 804845b:	83 ec 14             	sub    $0x14,%esp
 804845e:	68 30 a0 04 08       	push   $0x804a030
 8048463:	ff d0                	call   *%eax
 8048465:	83 c4 10             	add    $0x10,%esp
 8048468:	c9                   	leave  
 8048469:	f3 c3                	repz ret 
 804846b:	90                   	nop
 804846c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048470 <register_tm_clones>:
 8048470:	b8 30 a0 04 08       	mov    $0x804a030,%eax
 8048475:	2d 30 a0 04 08       	sub    $0x804a030,%eax
 804847a:	c1 f8 02             	sar    $0x2,%eax
 804847d:	89 c2                	mov    %eax,%edx
 804847f:	c1 ea 1f             	shr    $0x1f,%edx
 8048482:	01 d0                	add    %edx,%eax
 8048484:	d1 f8                	sar    %eax
 8048486:	74 1b                	je     80484a3 <register_tm_clones+0x33>
 8048488:	ba 00 00 00 00       	mov    $0x0,%edx
 804848d:	85 d2                	test   %edx,%edx
 804848f:	74 12                	je     80484a3 <register_tm_clones+0x33>
 8048491:	55                   	push   %ebp
 8048492:	89 e5                	mov    %esp,%ebp
 8048494:	83 ec 10             	sub    $0x10,%esp
 8048497:	50                   	push   %eax
 8048498:	68 30 a0 04 08       	push   $0x804a030
 804849d:	ff d2                	call   *%edx
 804849f:	83 c4 10             	add    $0x10,%esp
 80484a2:	c9                   	leave  
 80484a3:	f3 c3                	repz ret 
 80484a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80484a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080484b0 <__do_global_dtors_aux>:
 80484b0:	80 3d 30 a0 04 08 00 	cmpb   $0x0,0x804a030
 80484b7:	75 13                	jne    80484cc <__do_global_dtors_aux+0x1c>
 80484b9:	55                   	push   %ebp
 80484ba:	89 e5                	mov    %esp,%ebp
 80484bc:	83 ec 08             	sub    $0x8,%esp
 80484bf:	e8 7c ff ff ff       	call   8048440 <deregister_tm_clones>
 80484c4:	c6 05 30 a0 04 08 01 	movb   $0x1,0x804a030
 80484cb:	c9                   	leave  
 80484cc:	f3 c3                	repz ret 
 80484ce:	66 90                	xchg   %ax,%ax

080484d0 <frame_dummy>:
 80484d0:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 80484d5:	8b 10                	mov    (%eax),%edx
 80484d7:	85 d2                	test   %edx,%edx
 80484d9:	75 05                	jne    80484e0 <frame_dummy+0x10>
 80484db:	eb 93                	jmp    8048470 <register_tm_clones>
 80484dd:	8d 76 00             	lea    0x0(%esi),%esi
 80484e0:	ba 00 00 00 00       	mov    $0x0,%edx
 80484e5:	85 d2                	test   %edx,%edx
 80484e7:	74 f2                	je     80484db <frame_dummy+0xb>
 80484e9:	55                   	push   %ebp
 80484ea:	89 e5                	mov    %esp,%ebp
 80484ec:	83 ec 14             	sub    $0x14,%esp
 80484ef:	50                   	push   %eax
 80484f0:	ff d2                	call   *%edx
 80484f2:	83 c4 10             	add    $0x10,%esp
 80484f5:	c9                   	leave  
 80484f6:	e9 75 ff ff ff       	jmp    8048470 <register_tm_clones>

080484fb <is_ascii>:
 80484fb:	55                   	push   %ebp
 80484fc:	89 e5                	mov    %esp,%ebp
 80484fe:	83 7d 08 1f          	cmpl   $0x1f,0x8(%ebp)
 8048502:	7e 0d                	jle    8048511 <is_ascii+0x16>
 8048504:	83 7d 08 7f          	cmpl   $0x7f,0x8(%ebp)
 8048508:	7f 07                	jg     8048511 <is_ascii+0x16>
 804850a:	b8 01 00 00 00       	mov    $0x1,%eax
 804850f:	eb 05                	jmp    8048516 <is_ascii+0x1b>
 8048511:	b8 00 00 00 00       	mov    $0x0,%eax
 8048516:	5d                   	pop    %ebp
 8048517:	c3                   	ret    

08048518 <vuln>:
 8048518:	55                   	push   %ebp
 8048519:	89 e5                	mov    %esp,%ebp
 804851b:	83 ec 28             	sub    $0x28,%esp
 804851e:	83 ec 08             	sub    $0x8,%esp
 8048521:	ff 75 08             	pushl  0x8(%ebp)	# p
 8048524:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8048527:	50                   	push   %eax		# buf
 8048528:	e8 53 fe ff ff       	call   8048380 <strcpy@plt>
 804852d:	83 c4 10             	add    $0x10,%esp
 8048530:	90                   	nop
 8048531:	c9                   	leave  
 8048532:	c3                   	ret    

08048533 <main>:
 8048533:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048537:	83 e4 f0             	and    $0xfffffff0,%esp
 804853a:	ff 71 fc             	pushl  -0x4(%ecx)
 804853d:	55                   	push   %ebp
 804853e:	89 e5                	mov    %esp,%ebp
 8048540:	53                   	push   %ebx
 8048541:	51                   	push   %ecx
 8048542:	83 ec 70             	sub    $0x70,%esp
 8048545:	89 cb                	mov    %ecx,%ebx
 8048547:	83 3b 02             	cmpl   $0x2,(%ebx)
 804854a:	74 15                	je     8048561 <main+0x2e>
 804854c:	83 ec 0c             	sub    $0xc,%esp
 804854f:	68 20 87 04 08       	push   $0x8048720
 8048554:	e8 37 fe ff ff       	call   8048390 <puts@plt>
 8048559:	83 c4 10             	add    $0x10,%esp
 804855c:	e9 01 01 00 00       	jmp    8048662 <main+0x12f>
 8048561:	83 ec 08             	sub    $0x8,%esp
 8048564:	6a 00                	push   $0x0
 8048566:	68 40 87 04 08       	push   $0x8048740
 804856b:	e8 40 fe ff ff       	call   80483b0 <open@plt>
 8048570:	83 c4 10             	add    $0x10,%esp
 8048573:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048576:	83 ec 08             	sub    $0x8,%esp
 8048579:	8d 45 94             	lea    -0x6c(%ebp),%eax
 804857c:	50                   	push   %eax
 804857d:	ff 75 f0             	pushl  -0x10(%ebp)
 8048580:	e8 5b 01 00 00       	call   80486e0 <__fstat>
 8048585:	83 c4 10             	add    $0x10,%esp
 8048588:	85 c0                	test   %eax,%eax
 804858a:	79 15                	jns    80485a1 <main+0x6e>
 804858c:	83 ec 0c             	sub    $0xc,%esp
 804858f:	68 5e 87 04 08       	push   $0x804875e
 8048594:	e8 f7 fd ff ff       	call   8048390 <puts@plt>
 8048599:	83 c4 10             	add    $0x10,%esp
 804859c:	e9 c1 00 00 00       	jmp    8048662 <main+0x12f>
 80485a1:	8b 45 c0             	mov    -0x40(%ebp),%eax
 80485a4:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80485a7:	83 ec 08             	sub    $0x8,%esp
 80485aa:	6a 00                	push   $0x0
 80485ac:	ff 75 f0             	pushl  -0x10(%ebp)
 80485af:	6a 02                	push   $0x2
 80485b1:	6a 07                	push   $0x7
 80485b3:	ff 75 ec             	pushl  -0x14(%ebp)
 80485b6:	68 00 e0 55 55       	push   $0x5555e000
 80485bb:	e8 00 fe ff ff       	call   80483c0 <mmap@plt>
 80485c0:	83 c4 20             	add    $0x20,%esp
 80485c3:	3d 00 e0 55 55       	cmp    $0x5555e000,%eax
 80485c8:	74 15                	je     80485df <main+0xac>
 80485ca:	83 ec 0c             	sub    $0xc,%esp
 80485cd:	68 76 87 04 08       	push   $0x8048776
 80485d2:	e8 b9 fd ff ff       	call   8048390 <puts@plt>
 80485d7:	83 c4 10             	add    $0x10,%esp
 80485da:	e9 83 00 00 00       	jmp    8048662 <main+0x12f>
 80485df:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80485e6:	eb 39                	jmp    8048621 <main+0xee>
 80485e8:	8b 43 04             	mov    0x4(%ebx),%eax
 80485eb:	83 c0 04             	add    $0x4,%eax
 80485ee:	8b 10                	mov    (%eax),%edx
 80485f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80485f3:	01 d0                	add    %edx,%eax
 80485f5:	0f b6 00             	movzbl (%eax),%eax
 80485f8:	0f be c0             	movsbl %al,%eax
 80485fb:	83 ec 0c             	sub    $0xc,%esp
 80485fe:	50                   	push   %eax
 80485ff:	e8 f7 fe ff ff       	call   80484fb <is_ascii>
 8048604:	83 c4 10             	add    $0x10,%esp
 8048607:	85 c0                	test   %eax,%eax
 8048609:	75 12                	jne    804861d <main+0xea>
 804860b:	83 ec 0c             	sub    $0xc,%esp
 804860e:	68 8e 87 04 08       	push   $0x804878e
 8048613:	e8 78 fd ff ff       	call   8048390 <puts@plt>
 8048618:	83 c4 10             	add    $0x10,%esp
 804861b:	eb 45                	jmp    8048662 <main+0x12f>
 804861d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048621:	8b 43 04             	mov    0x4(%ebx),%eax
 8048624:	83 c0 04             	add    $0x4,%eax
 8048627:	8b 00                	mov    (%eax),%eax
 8048629:	83 ec 0c             	sub    $0xc,%esp
 804862c:	50                   	push   %eax
 804862d:	e8 9e fd ff ff       	call   80483d0 <strlen@plt>
 8048632:	83 c4 10             	add    $0x10,%esp
 8048635:	89 c2                	mov    %eax,%edx
 8048637:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804863a:	39 c2                	cmp    %eax,%edx
 804863c:	77 aa                	ja     80485e8 <main+0xb5>
 804863e:	83 ec 0c             	sub    $0xc,%esp
 8048641:	68 a7 87 04 08       	push   $0x80487a7
 8048646:	e8 45 fd ff ff       	call   8048390 <puts@plt>
 804864b:	83 c4 10             	add    $0x10,%esp
 804864e:	8b 43 04             	mov    0x4(%ebx),%eax
 8048651:	83 c0 04             	add    $0x4,%eax
 8048654:	8b 00                	mov    (%eax),%eax
 8048656:	83 ec 0c             	sub    $0xc,%esp
 8048659:	50                   	push   %eax
 804865a:	e8 b9 fe ff ff       	call   8048518 <vuln>
 804865f:	83 c4 10             	add    $0x10,%esp
 8048662:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048665:	59                   	pop    %ecx
 8048666:	5b                   	pop    %ebx
 8048667:	5d                   	pop    %ebp
 8048668:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804866b:	c3                   	ret    
 804866c:	66 90                	xchg   %ax,%ax
 804866e:	66 90                	xchg   %ax,%ax

08048670 <__libc_csu_init>:
 8048670:	55                   	push   %ebp
 8048671:	57                   	push   %edi
 8048672:	56                   	push   %esi
 8048673:	53                   	push   %ebx
 8048674:	e8 b7 fd ff ff       	call   8048430 <__x86.get_pc_thunk.bx>
 8048679:	81 c3 87 19 00 00    	add    $0x1987,%ebx
 804867f:	83 ec 0c             	sub    $0xc,%esp
 8048682:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048686:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804868c:	e8 bb fc ff ff       	call   804834c <_init>
 8048691:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048697:	29 c6                	sub    %eax,%esi
 8048699:	c1 fe 02             	sar    $0x2,%esi
 804869c:	85 f6                	test   %esi,%esi
 804869e:	74 25                	je     80486c5 <__libc_csu_init+0x55>
 80486a0:	31 ff                	xor    %edi,%edi
 80486a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80486a8:	83 ec 04             	sub    $0x4,%esp
 80486ab:	ff 74 24 2c          	pushl  0x2c(%esp)
 80486af:	ff 74 24 2c          	pushl  0x2c(%esp)
 80486b3:	55                   	push   %ebp
 80486b4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80486bb:	83 c7 01             	add    $0x1,%edi
 80486be:	83 c4 10             	add    $0x10,%esp
 80486c1:	39 f7                	cmp    %esi,%edi
 80486c3:	75 e3                	jne    80486a8 <__libc_csu_init+0x38>
 80486c5:	83 c4 0c             	add    $0xc,%esp
 80486c8:	5b                   	pop    %ebx
 80486c9:	5e                   	pop    %esi
 80486ca:	5f                   	pop    %edi
 80486cb:	5d                   	pop    %ebp
 80486cc:	c3                   	ret    
 80486cd:	8d 76 00             	lea    0x0(%esi),%esi

080486d0 <__libc_csu_fini>:
 80486d0:	f3 c3                	repz ret 
 80486d2:	66 90                	xchg   %ax,%ax
 80486d4:	66 90                	xchg   %ax,%ax
 80486d6:	66 90                	xchg   %ax,%ax
 80486d8:	66 90                	xchg   %ax,%ax
 80486da:	66 90                	xchg   %ax,%ax
 80486dc:	66 90                	xchg   %ax,%ax
 80486de:	66 90                	xchg   %ax,%ax

080486e0 <__fstat>:
 80486e0:	53                   	push   %ebx
 80486e1:	e8 4a fd ff ff       	call   8048430 <__x86.get_pc_thunk.bx>
 80486e6:	81 c3 1a 19 00 00    	add    $0x191a,%ebx
 80486ec:	83 ec 0c             	sub    $0xc,%esp
 80486ef:	ff 74 24 18          	pushl  0x18(%esp)
 80486f3:	ff 74 24 18          	pushl  0x18(%esp)
 80486f7:	6a 03                	push   $0x3
 80486f9:	e8 a2 fc ff ff       	call   80483a0 <__fxstat@plt>
 80486fe:	83 c4 18             	add    $0x18,%esp
 8048701:	5b                   	pop    %ebx
 8048702:	c3                   	ret    

Disassembly of section .fini:

08048704 <_fini>:
 8048704:	53                   	push   %ebx
 8048705:	83 ec 08             	sub    $0x8,%esp
 8048708:	e8 23 fd ff ff       	call   8048430 <__x86.get_pc_thunk.bx>
 804870d:	81 c3 f3 18 00 00    	add    $0x18f3,%ebx
 8048713:	83 c4 08             	add    $0x8,%esp
 8048716:	5b                   	pop    %ebx
 8048717:	c3                   	ret    

Disassembly of section .rodata:

08048718 <_fp_hw>:
 8048718:	03 00                	add    (%eax),%eax
	...

0804871c <_IO_stdin_used>:
 804871c:	01 00                	add    %eax,(%eax)
 804871e:	02 00                	add    (%eax),%al
 8048720:	75 73                	jne    8048795 <_IO_stdin_used+0x79>
 8048722:	61                   	popa   
 8048723:	67 65 3a 20          	cmp    %gs:(%bx,%si),%ah
 8048727:	61                   	popa   
 8048728:	73 63                	jae    804878d <_IO_stdin_used+0x71>
 804872a:	69 69 5f 65 61 73 79 	imul   $0x79736165,0x5f(%ecx),%ebp
 8048731:	20 5b 61             	and    %bl,0x61(%ebx)
 8048734:	73 63                	jae    8048799 <_IO_stdin_used+0x7d>
 8048736:	69 69 20 69 6e 70 75 	imul   $0x75706e69,0x20(%ecx),%ebp
 804873d:	74 5d                	je     804879c <_IO_stdin_used+0x80>
 804873f:	00 2f                	add    %ch,(%edi)
 8048741:	68 6f 6d 65 2f       	push   $0x2f656d6f
 8048746:	61                   	popa   
 8048747:	73 63                	jae    80487ac <_IO_stdin_used+0x90>
 8048749:	69 69 5f 65 61 73 79 	imul   $0x79736165,0x5f(%ecx),%ebp
 8048750:	2f                   	das    
 8048751:	6c                   	insb   (%dx),%es:(%edi)
 8048752:	69 62 63 2d 32 2e 31 	imul   $0x312e322d,0x63(%edx),%esp
 8048759:	35 2e 73 6f 00       	xor    $0x6f732e,%eax
 804875e:	6f                   	outsl  %ds:(%esi),(%dx)
 804875f:	70 65                	jo     80487c6 <__GNU_EH_FRAME_HDR+0xa>
 8048761:	6e                   	outsb  %ds:(%esi),(%dx)
 8048762:	20 65 72             	and    %ah,0x72(%ebp)
 8048765:	72 6f                	jb     80487d6 <__GNU_EH_FRAME_HDR+0x1a>
 8048767:	72 2e                	jb     8048797 <_IO_stdin_used+0x7b>
 8048769:	20 74 65 6c          	and    %dh,0x6c(%ebp,%eiz,2)
 804876d:	6c                   	insb   (%dx),%es:(%edi)
 804876e:	20 61 64             	and    %ah,0x64(%ecx)
 8048771:	6d                   	insl   (%dx),%es:(%edi)
 8048772:	69 6e 21 00 6d 6d 61 	imul   $0x616d6d00,0x21(%esi),%ebp
 8048779:	70 20                	jo     804879b <_IO_stdin_used+0x7f>
 804877b:	65 72 72             	gs jb  80487f0 <__GNU_EH_FRAME_HDR+0x34>
 804877e:	6f                   	outsl  %ds:(%esi),(%dx)
 804877f:	72 21                	jb     80487a2 <_IO_stdin_used+0x86>
 8048781:	2e 20 74 65 6c       	and    %dh,%cs:0x6c(%ebp,%eiz,2)
 8048786:	6c                   	insb   (%dx),%es:(%edi)
 8048787:	20 61 64             	and    %ah,0x64(%ecx)
 804878a:	6d                   	insl   (%dx),%es:(%edi)
 804878b:	69 6e 00 79 6f 75 20 	imul   $0x20756f79,0x0(%esi),%ebp
 8048792:	68 61 76 65 20       	push   $0x20657661
 8048797:	6e                   	outsb  %ds:(%esi),(%dx)
 8048798:	6f                   	outsl  %ds:(%esi),(%dx)
 8048799:	6e                   	outsb  %ds:(%esi),(%dx)
 804879a:	2d 61 73 63 69       	sub    $0x69637361,%eax
 804879f:	69 20 62 79 74 65    	imul   $0x65747962,(%eax),%esp
 80487a5:	21 00                	and    %eax,(%eax)
 80487a7:	74 72                	je     804881b <__GNU_EH_FRAME_HDR+0x5f>
 80487a9:	69 67 67 65 72 69 6e 	imul   $0x6e697265,0x67(%edi),%esp
 80487b0:	67 20 62 75          	and    %ah,0x75(%bp,%si)
 80487b4:	67                   	addr16
 80487b5:	2e                   	cs
 80487b6:	2e                   	cs
 80487b7:	2e                   	cs
	...

Disassembly of section .eh_frame_hdr:

080487bc <__GNU_EH_FRAME_HDR>:
 80487bc:	01 1b                	add    %ebx,(%ebx)
 80487be:	03 3b                	add    (%ebx),%edi
 80487c0:	40                   	inc    %eax
 80487c1:	00 00                	add    %al,(%eax)
 80487c3:	00 07                	add    %al,(%edi)
 80487c5:	00 00                	add    %al,(%eax)
 80487c7:	00 b4 fb ff ff 5c 00 	add    %dh,0x5cffff(%ebx,%edi,8)
 80487ce:	00 00                	add    %al,(%eax)
 80487d0:	3f                   	aas    
 80487d1:	fd                   	std    
 80487d2:	ff                   	(bad)  
 80487d3:	ff 80 00 00 00 5c    	incl   0x5c000000(%eax)
 80487d9:	fd                   	std    
 80487da:	ff                   	(bad)  
 80487db:	ff a0 00 00 00 77    	jmp    *0x77000000(%eax)
 80487e1:	fd                   	std    
 80487e2:	ff                   	(bad)  
 80487e3:	ff c0                	inc    %eax
 80487e5:	00 00                	add    %al,(%eax)
 80487e7:	00 b4 fe ff ff f8 00 	add    %dh,0xf8ffff(%esi,%edi,8)
 80487ee:	00 00                	add    %al,(%eax)
 80487f0:	14 ff                	adc    $0xff,%al
 80487f2:	ff                   	(bad)  
 80487f3:	ff 44 01 00          	incl   0x0(%ecx,%eax,1)
 80487f7:	00 24 ff             	add    %ah,(%edi,%edi,8)
 80487fa:	ff                   	(bad)  
 80487fb:	ff 58 01             	lcall  *0x1(%eax)
	...

Disassembly of section .eh_frame:

08048800 <__FRAME_END__-0x140>:
 8048800:	14 00                	adc    $0x0,%al
 8048802:	00 00                	add    %al,(%eax)
 8048804:	00 00                	add    %al,(%eax)
 8048806:	00 00                	add    %al,(%eax)
 8048808:	01 7a 52             	add    %edi,0x52(%edx)
 804880b:	00 01                	add    %al,(%ecx)
 804880d:	7c 08                	jl     8048817 <__GNU_EH_FRAME_HDR+0x5b>
 804880f:	01 1b                	add    %ebx,(%ebx)
 8048811:	0c 04                	or     $0x4,%al
 8048813:	04 88                	add    $0x88,%al
 8048815:	01 00                	add    %eax,(%eax)
 8048817:	00 20                	add    %ah,(%eax)
 8048819:	00 00                	add    %al,(%eax)
 804881b:	00 1c 00             	add    %bl,(%eax,%eax,1)
 804881e:	00 00                	add    %al,(%eax)
 8048820:	50                   	push   %eax
 8048821:	fb                   	sti    
 8048822:	ff                   	(bad)  
 8048823:	ff 80 00 00 00 00    	incl   0x0(%eax)
 8048829:	0e                   	push   %cs
 804882a:	08 46 0e             	or     %al,0xe(%esi)
 804882d:	0c 4a                	or     $0x4a,%al
 804882f:	0f 0b                	ud2    
 8048831:	74 04                	je     8048837 <__GNU_EH_FRAME_HDR+0x7b>
 8048833:	78 00                	js     8048835 <__GNU_EH_FRAME_HDR+0x79>
 8048835:	3f                   	aas    
 8048836:	1a 3b                	sbb    (%ebx),%bh
 8048838:	2a 32                	sub    (%edx),%dh
 804883a:	24 22                	and    $0x22,%al
 804883c:	1c 00                	sbb    $0x0,%al
 804883e:	00 00                	add    %al,(%eax)
 8048840:	40                   	inc    %eax
 8048841:	00 00                	add    %al,(%eax)
 8048843:	00 b7 fc ff ff 1d    	add    %dh,0x1dfffffc(%edi)
 8048849:	00 00                	add    %al,(%eax)
 804884b:	00 00                	add    %al,(%eax)
 804884d:	41                   	inc    %ecx
 804884e:	0e                   	push   %cs
 804884f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048855:	59                   	pop    %ecx
 8048856:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 8048859:	04 00                	add    $0x0,%al
 804885b:	00 1c 00             	add    %bl,(%eax,%eax,1)
 804885e:	00 00                	add    %al,(%eax)
 8048860:	60                   	pusha  
 8048861:	00 00                	add    %al,(%eax)
 8048863:	00 b4 fc ff ff 1b 00 	add    %dh,0x1bffff(%esp,%edi,8)
 804886a:	00 00                	add    %al,(%eax)
 804886c:	00 41 0e             	add    %al,0xe(%ecx)
 804886f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8048875:	57                   	push   %edi
 8048876:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 8048879:	04 00                	add    $0x0,%al
 804887b:	00 34 00             	add    %dh,(%eax,%eax,1)
 804887e:	00 00                	add    %al,(%eax)
 8048880:	80 00 00             	addb   $0x0,(%eax)
 8048883:	00 af fc ff ff 39    	add    %ch,0x39fffffc(%edi)
 8048889:	01 00                	add    %eax,(%eax)
 804888b:	00 00                	add    %al,(%eax)
 804888d:	44                   	inc    %esp
 804888e:	0c 01                	or     $0x1,%al
 8048890:	00 47 10             	add    %al,0x10(%edi)
 8048893:	05 02 75 00 44       	add    $0x44007502,%eax
 8048898:	0f 03 75 78          	lsl    0x78(%ebp),%esi
 804889c:	06                   	push   %es
 804889d:	10 03                	adc    %al,(%ebx)
 804889f:	02 75 7c             	add    0x7c(%ebp),%dh
 80488a2:	03 24 01             	add    (%ecx,%eax,1),%esp
 80488a5:	c1 0c 01 00          	rorl   $0x0,(%ecx,%eax,1)
 80488a9:	41                   	inc    %ecx
 80488aa:	c3                   	ret    
 80488ab:	41                   	inc    %ecx
 80488ac:	c5 43 0c             	lds    0xc(%ebx),%eax
 80488af:	04 04                	add    $0x4,%al
 80488b1:	00 00                	add    %al,(%eax)
 80488b3:	00 48 00             	add    %cl,0x0(%eax)
 80488b6:	00 00                	add    %al,(%eax)
 80488b8:	b8 00 00 00 b4       	mov    $0xb4000000,%eax
 80488bd:	fd                   	std    
 80488be:	ff                   	(bad)  
 80488bf:	ff 5d 00             	lcall  *0x0(%ebp)
 80488c2:	00 00                	add    %al,(%eax)
 80488c4:	00 41 0e             	add    %al,0xe(%ecx)
 80488c7:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 80488cd:	87 03                	xchg   %eax,(%ebx)
 80488cf:	41                   	inc    %ecx
 80488d0:	0e                   	push   %cs
 80488d1:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 80488d7:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 80488de:	24 44                	and    $0x44,%al
 80488e0:	0e                   	push   %cs
 80488e1:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 80488e5:	41                   	inc    %ecx
 80488e6:	0e                   	push   %cs
 80488e7:	30 4d 0e             	xor    %cl,0xe(%ebp)
 80488ea:	20 47 0e             	and    %al,0xe(%edi)
 80488ed:	14 41                	adc    $0x41,%al
 80488ef:	c3                   	ret    
 80488f0:	0e                   	push   %cs
 80488f1:	10 41 c6             	adc    %al,-0x3a(%ecx)
 80488f4:	0e                   	push   %cs
 80488f5:	0c 41                	or     $0x41,%al
 80488f7:	c7                   	(bad)  
 80488f8:	0e                   	push   %cs
 80488f9:	08 41 c5             	or     %al,-0x3b(%ecx)
 80488fc:	0e                   	push   %cs
 80488fd:	04 00                	add    $0x0,%al
 80488ff:	00 10                	add    %dl,(%eax)
 8048901:	00 00                	add    %al,(%eax)
 8048903:	00 04 01             	add    %al,(%ecx,%eax,1)
 8048906:	00 00                	add    %al,(%eax)
 8048908:	c8 fd ff ff          	enter  $0xfffd,$0xff
 804890c:	02 00                	add    (%eax),%al
 804890e:	00 00                	add    %al,(%eax)
 8048910:	00 00                	add    %al,(%eax)
 8048912:	00 00                	add    %al,(%eax)
 8048914:	28 00                	sub    %al,(%eax)
 8048916:	00 00                	add    %al,(%eax)
 8048918:	18 01                	sbb    %al,(%ecx)
 804891a:	00 00                	add    %al,(%eax)
 804891c:	c4                   	(bad)  
 804891d:	fd                   	std    
 804891e:	ff                   	(bad)  
 804891f:	ff 23                	jmp    *(%ebx)
 8048921:	00 00                	add    %al,(%eax)
 8048923:	00 00                	add    %al,(%eax)
 8048925:	41                   	inc    %ecx
 8048926:	0e                   	push   %cs
 8048927:	08 83 02 4e 0e 14    	or     %al,0x140e4e02(%ebx)
 804892d:	44                   	inc    %esp
 804892e:	0e                   	push   %cs
 804892f:	18 44 0e 1c          	sbb    %al,0x1c(%esi,%ecx,1)
 8048933:	42                   	inc    %edx
 8048934:	0e                   	push   %cs
 8048935:	20 48 0e             	and    %cl,0xe(%eax)
 8048938:	08 41 c3             	or     %al,-0x3d(%ecx)
 804893b:	0e                   	push   %cs
 804893c:	04 00                	add    $0x0,%al
	...

08048940 <__FRAME_END__>:
 8048940:	00 00                	add    %al,(%eax)
	...

Disassembly of section .init_array:

08049f08 <__frame_dummy_init_array_entry>:
 8049f08:	d0                   	.byte 0xd0
 8049f09:	84 04 08             	test   %al,(%eax,%ecx,1)

Disassembly of section .fini_array:

08049f0c <__do_global_dtors_aux_fini_array_entry>:
 8049f0c:	b0 84                	mov    $0x84,%al
 8049f0e:	04 08                	add    $0x8,%al

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
 8049f20:	4c                   	dec    %esp
 8049f21:	83 04 08 0d          	addl   $0xd,(%eax,%ecx,1)
 8049f25:	00 00                	add    %al,(%eax)
 8049f27:	00 04 87             	add    %al,(%edi,%eax,4)
 8049f2a:	04 08                	add    $0x8,%al
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
 8049f58:	6c                   	insb   (%dx),%es:(%edi)
 8049f59:	82                   	(bad)  
 8049f5a:	04 08                	add    $0x8,%al
 8049f5c:	06                   	push   %es
 8049f5d:	00 00                	add    %al,(%eax)
 8049f5f:	00 cc                	add    %cl,%ah
 8049f61:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 8049f68:	6b 00 00             	imul   $0x0,(%eax),%eax
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
 8049f88:	38 00                	cmp    %al,(%eax)
 8049f8a:	00 00                	add    %al,(%eax)
 8049f8c:	14 00                	adc    $0x0,%al
 8049f8e:	00 00                	add    %al,(%eax)
 8049f90:	11 00                	adc    %eax,(%eax)
 8049f92:	00 00                	add    %al,(%eax)
 8049f94:	17                   	pop    %ss
 8049f95:	00 00                	add    %al,(%eax)
 8049f97:	00 14 83             	add    %dl,(%ebx,%eax,4)
 8049f9a:	04 08                	add    $0x8,%al
 8049f9c:	11 00                	adc    %eax,(%eax)
 8049f9e:	00 00                	add    %al,(%eax)
 8049fa0:	0c 83                	or     $0x83,%al
 8049fa2:	04 08                	add    $0x8,%al
 8049fa4:	12 00                	adc    (%eax),%al
 8049fa6:	00 00                	add    %al,(%eax)
 8049fa8:	08 00                	or     %al,(%eax)
 8049faa:	00 00                	add    %al,(%eax)
 8049fac:	13 00                	adc    (%eax),%eax
 8049fae:	00 00                	add    %al,(%eax)
 8049fb0:	08 00                	or     %al,(%eax)
 8049fb2:	00 00                	add    %al,(%eax)
 8049fb4:	fe                   	(bad)  
 8049fb5:	ff                   	(bad)  
 8049fb6:	ff 6f ec             	ljmp   *-0x14(%edi)
 8049fb9:	82                   	(bad)  
 8049fba:	04 08                	add    $0x8,%al
 8049fbc:	ff                   	(bad)  
 8049fbd:	ff                   	(bad)  
 8049fbe:	ff 6f 01             	ljmp   *0x1(%edi)
 8049fc1:	00 00                	add    %al,(%eax)
 8049fc3:	00 f0                	add    %dh,%al
 8049fc5:	ff                   	(bad)  
 8049fc6:	ff 6f d8             	ljmp   *-0x28(%edi)
 8049fc9:	82                   	(bad)  
 8049fca:	04 08                	add    $0x8,%al
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
 804a00c:	86 83 04 08 96 83    	xchg   %al,-0x7c69f7fc(%ebx)
 804a012:	04 08                	add    $0x8,%al
 804a014:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 804a015:	83 04 08 b6          	addl   $0xffffffb6,(%eax,%ecx,1)
 804a019:	83 04 08 c6          	addl   $0xffffffc6,(%eax,%ecx,1)
 804a01d:	83 04 08 d6          	addl   $0xffffffd6,(%eax,%ecx,1)
 804a021:	83 04 08 e6          	addl   $0xffffffe6,(%eax,%ecx,1)
 804a025:	83                   	.byte 0x83
 804a026:	04 08                	add    $0x8,%al

Disassembly of section .data:

0804a028 <__data_start>:
 804a028:	00 00                	add    %al,(%eax)
	...

0804a02c <__dso_handle>:
 804a02c:	00 00                	add    %al,(%eax)
	...

Disassembly of section .bss:

0804a030 <__bss_start>:
 804a030:	00 00                	add    %al,(%eax)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <_init-0x80482d4>
   a:	74 75                	je     81 <_init-0x80482cb>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <_init-0x80482bd>
  1a:	31 7e 31             	xor    %edi,0x31(%esi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%esi,%ebp,1)
  22:	32 29                	xor    (%ecx),%ch
  24:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  2a:	20 32                	and    %dh,(%edx)
  2c:	30 31                	xor    %dh,(%ecx)
  2e:	36 30 36             	xor    %dh,%ss:(%esi)
  31:	30 39                	xor    %bh,(%ecx)
	...
