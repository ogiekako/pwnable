
hunter:     file format elf32-i386


Disassembly of section .init:

080484a0 <.init>:
 80484a0:	53                   	push   %ebx
 80484a1:	83 ec 08             	sub    $0x8,%esp
 80484a4:	e8 57 01 00 00       	call   8048600 <atoi@plt+0x50>
 80484a9:	81 c3 57 2b 00 00    	add    $0x2b57,%ebx
 80484af:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80484b5:	85 c0                	test   %eax,%eax
 80484b7:	74 05                	je     80484be <strcmp@plt-0x22>
 80484b9:	e8 02 01 00 00       	call   80485c0 <atoi@plt+0x10>
 80484be:	83 c4 08             	add    $0x8,%esp
 80484c1:	5b                   	pop    %ebx
 80484c2:	c3                   	ret    

Disassembly of section .plt:

080484d0 <strcmp@plt-0x10>:
 80484d0:	ff 35 04 b0 04 08    	pushl  0x804b004
 80484d6:	ff 25 08 b0 04 08    	jmp    *0x804b008
 80484dc:	00 00                	add    %al,(%eax)
	...

080484e0 <strcmp@plt>:
 80484e0:	ff 25 0c b0 04 08    	jmp    *0x804b00c
 80484e6:	68 00 00 00 00       	push   $0x0
 80484eb:	e9 e0 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

080484f0 <read@plt>:
 80484f0:	ff 25 10 b0 04 08    	jmp    *0x804b010
 80484f6:	68 08 00 00 00       	push   $0x8
 80484fb:	e9 d0 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048500 <printf@plt>:
 8048500:	ff 25 14 b0 04 08    	jmp    *0x804b014
 8048506:	68 10 00 00 00       	push   $0x10
 804850b:	e9 c0 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048510 <free@plt>:
 8048510:	ff 25 18 b0 04 08    	jmp    *0x804b018
 8048516:	68 18 00 00 00       	push   $0x18
 804851b:	e9 b0 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048520 <alarm@plt>:
 8048520:	ff 25 1c b0 04 08    	jmp    *0x804b01c
 8048526:	68 20 00 00 00       	push   $0x20
 804852b:	e9 a0 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048530 <__stack_chk_fail@plt>:
 8048530:	ff 25 20 b0 04 08    	jmp    *0x804b020
 8048536:	68 28 00 00 00       	push   $0x28
 804853b:	e9 90 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048540 <malloc@plt>:
 8048540:	ff 25 24 b0 04 08    	jmp    *0x804b024
 8048546:	68 30 00 00 00       	push   $0x30
 804854b:	e9 80 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048550 <puts@plt>:
 8048550:	ff 25 28 b0 04 08    	jmp    *0x804b028
 8048556:	68 38 00 00 00       	push   $0x38
 804855b:	e9 70 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048560 <system@plt>:
 8048560:	ff 25 2c b0 04 08    	jmp    *0x804b02c
 8048566:	68 40 00 00 00       	push   $0x40
 804856b:	e9 60 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048570 <exit@plt>:
 8048570:	ff 25 30 b0 04 08    	jmp    *0x804b030
 8048576:	68 48 00 00 00       	push   $0x48
 804857b:	e9 50 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048580 <__libc_start_main@plt>:
 8048580:	ff 25 34 b0 04 08    	jmp    *0x804b034
 8048586:	68 50 00 00 00       	push   $0x50
 804858b:	e9 40 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

08048590 <setvbuf@plt>:
 8048590:	ff 25 38 b0 04 08    	jmp    *0x804b038
 8048596:	68 58 00 00 00       	push   $0x58
 804859b:	e9 30 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

080485a0 <memset@plt>:
 80485a0:	ff 25 3c b0 04 08    	jmp    *0x804b03c
 80485a6:	68 60 00 00 00       	push   $0x60
 80485ab:	e9 20 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

080485b0 <atoi@plt>:
 80485b0:	ff 25 40 b0 04 08    	jmp    *0x804b040
 80485b6:	68 68 00 00 00       	push   $0x68
 80485bb:	e9 10 ff ff ff       	jmp    80484d0 <strcmp@plt-0x10>

Disassembly of section .plt.got:

080485c0 <.plt.got>:
 80485c0:	ff 25 fc af 04 08    	jmp    *0x804affc
 80485c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080485d0 <.text>:
 80485d0:	31 ed                	xor    %ebp,%ebp
 80485d2:	5e                   	pop    %esi
 80485d3:	89 e1                	mov    %esp,%ecx
 80485d5:	83 e4 f0             	and    $0xfffffff0,%esp
 80485d8:	50                   	push   %eax
 80485d9:	54                   	push   %esp
 80485da:	52                   	push   %edx
 80485db:	68 40 92 04 08       	push   $0x8049240
 80485e0:	68 e0 91 04 08       	push   $0x80491e0
 80485e5:	51                   	push   %ecx
 80485e6:	56                   	push   %esi
 80485e7:	68 dd 8e 04 08       	push   $0x8048edd
 80485ec:	e8 8f ff ff ff       	call   8048580 <__libc_start_main@plt>
 80485f1:	f4                   	hlt    
 80485f2:	66 90                	xchg   %ax,%ax
 80485f4:	66 90                	xchg   %ax,%ax
 80485f6:	66 90                	xchg   %ax,%ax
 80485f8:	66 90                	xchg   %ax,%ax
 80485fa:	66 90                	xchg   %ax,%ax
 80485fc:	66 90                	xchg   %ax,%ax
 80485fe:	66 90                	xchg   %ax,%ax
 8048600:	8b 1c 24             	mov    (%esp),%ebx
 8048603:	c3                   	ret    
 8048604:	66 90                	xchg   %ax,%ax
 8048606:	66 90                	xchg   %ax,%ax
 8048608:	66 90                	xchg   %ax,%ax
 804860a:	66 90                	xchg   %ax,%ax
 804860c:	66 90                	xchg   %ax,%ax
 804860e:	66 90                	xchg   %ax,%ax
 8048610:	b8 4f b0 04 08       	mov    $0x804b04f,%eax
 8048615:	2d 4c b0 04 08       	sub    $0x804b04c,%eax
 804861a:	83 f8 06             	cmp    $0x6,%eax
 804861d:	76 1a                	jbe    8048639 <atoi@plt+0x89>
 804861f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048624:	85 c0                	test   %eax,%eax
 8048626:	74 11                	je     8048639 <atoi@plt+0x89>
 8048628:	55                   	push   %ebp
 8048629:	89 e5                	mov    %esp,%ebp
 804862b:	83 ec 14             	sub    $0x14,%esp
 804862e:	68 4c b0 04 08       	push   $0x804b04c
 8048633:	ff d0                	call   *%eax
 8048635:	83 c4 10             	add    $0x10,%esp
 8048638:	c9                   	leave  
 8048639:	f3 c3                	repz ret 
 804863b:	90                   	nop
 804863c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048640:	b8 4c b0 04 08       	mov    $0x804b04c,%eax
 8048645:	2d 4c b0 04 08       	sub    $0x804b04c,%eax
 804864a:	c1 f8 02             	sar    $0x2,%eax
 804864d:	89 c2                	mov    %eax,%edx
 804864f:	c1 ea 1f             	shr    $0x1f,%edx
 8048652:	01 d0                	add    %edx,%eax
 8048654:	d1 f8                	sar    %eax
 8048656:	74 1b                	je     8048673 <atoi@plt+0xc3>
 8048658:	ba 00 00 00 00       	mov    $0x0,%edx
 804865d:	85 d2                	test   %edx,%edx
 804865f:	74 12                	je     8048673 <atoi@plt+0xc3>
 8048661:	55                   	push   %ebp
 8048662:	89 e5                	mov    %esp,%ebp
 8048664:	83 ec 10             	sub    $0x10,%esp
 8048667:	50                   	push   %eax
 8048668:	68 4c b0 04 08       	push   $0x804b04c
 804866d:	ff d2                	call   *%edx
 804866f:	83 c4 10             	add    $0x10,%esp
 8048672:	c9                   	leave  
 8048673:	f3 c3                	repz ret 
 8048675:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048679:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048680:	80 3d 68 b0 04 08 00 	cmpb   $0x0,0x804b068
 8048687:	75 13                	jne    804869c <atoi@plt+0xec>
 8048689:	55                   	push   %ebp
 804868a:	89 e5                	mov    %esp,%ebp
 804868c:	83 ec 08             	sub    $0x8,%esp
 804868f:	e8 7c ff ff ff       	call   8048610 <atoi@plt+0x60>
 8048694:	c6 05 68 b0 04 08 01 	movb   $0x1,0x804b068
 804869b:	c9                   	leave  
 804869c:	f3 c3                	repz ret 
 804869e:	66 90                	xchg   %ax,%ax
 80486a0:	b8 10 af 04 08       	mov    $0x804af10,%eax
 80486a5:	8b 10                	mov    (%eax),%edx
 80486a7:	85 d2                	test   %edx,%edx
 80486a9:	75 05                	jne    80486b0 <atoi@plt+0x100>
 80486ab:	eb 93                	jmp    8048640 <atoi@plt+0x90>
 80486ad:	8d 76 00             	lea    0x0(%esi),%esi
 80486b0:	ba 00 00 00 00       	mov    $0x0,%edx
 80486b5:	85 d2                	test   %edx,%edx
 80486b7:	74 f2                	je     80486ab <atoi@plt+0xfb>
 80486b9:	55                   	push   %ebp
 80486ba:	89 e5                	mov    %esp,%ebp
 80486bc:	83 ec 14             	sub    $0x14,%esp
 80486bf:	50                   	push   %eax
 80486c0:	ff d2                	call   *%edx
 80486c2:	83 c4 10             	add    $0x10,%esp
 80486c5:	c9                   	leave  
 80486c6:	e9 75 ff ff ff       	jmp    8048640 <atoi@plt+0x90>
 80486cb:	55                   	push   %ebp
 80486cc:	89 e5                	mov    %esp,%ebp
 80486ce:	83 ec 10             	sub    $0x10,%esp
 80486d1:	0f 31                	rdtsc  
 80486d3:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80486d6:	89 55 fc             	mov    %edx,-0x4(%ebp)
 80486d9:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80486dc:	8b 55 fc             	mov    -0x4(%ebp),%edx
 80486df:	c9                   	leave  
 80486e0:	c3                   	ret    
 80486e1:	55                   	push   %ebp
 80486e2:	89 e5                	mov    %esp,%ebp
 80486e4:	53                   	push   %ebx
 80486e5:	83 ec 04             	sub    $0x4,%esp
 80486e8:	e8 de ff ff ff       	call   80486cb <atoi@plt+0x11b>
 80486ed:	89 c1                	mov    %eax,%ecx
 80486ef:	89 d3                	mov    %edx,%ebx
 80486f1:	8b 45 08             	mov    0x8(%ebp),%eax
 80486f4:	ba 00 00 00 00       	mov    $0x0,%edx
 80486f9:	52                   	push   %edx
 80486fa:	50                   	push   %eax
 80486fb:	53                   	push   %ebx
 80486fc:	51                   	push   %ecx
 80486fd:	e8 7e 09 00 00       	call   8049080 <atoi@plt+0xad0>
 8048702:	83 c4 10             	add    $0x10,%esp
 8048705:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048708:	c9                   	leave  
 8048709:	c3                   	ret    
 804870a:	55                   	push   %ebp
 804870b:	89 e5                	mov    %esp,%ebp
 804870d:	83 ec 18             	sub    $0x18,%esp
 8048710:	83 ec 0c             	sub    $0xc,%esp
 8048713:	68 80 00 00 00       	push   $0x80
 8048718:	e8 c4 ff ff ff       	call   80486e1 <atoi@plt+0x131>
 804871d:	83 c4 10             	add    $0x10,%esp
 8048720:	83 ec 0c             	sub    $0xc,%esp
 8048723:	50                   	push   %eax
 8048724:	e8 17 fe ff ff       	call   8048540 <malloc@plt>
 8048729:	83 c4 10             	add    $0x10,%esp
 804872c:	83 ec 0c             	sub    $0xc,%esp
 804872f:	6a 04                	push   $0x4
 8048731:	e8 ab ff ff ff       	call   80486e1 <atoi@plt+0x131>
 8048736:	83 c4 10             	add    $0x10,%esp
 8048739:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804873c:	8b 45 08             	mov    0x8(%ebp),%eax
 804873f:	83 c0 04             	add    $0x4,%eax
 8048742:	83 ec 0c             	sub    $0xc,%esp
 8048745:	50                   	push   %eax
 8048746:	e8 f5 fd ff ff       	call   8048540 <malloc@plt>
 804874b:	83 c4 10             	add    $0x10,%esp
 804874e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048751:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048755:	75 07                	jne    804875e <atoi@plt+0x1ae>
 8048757:	b8 00 00 00 00       	mov    $0x0,%eax
 804875c:	eb 08                	jmp    8048766 <atoi@plt+0x1b6>
 804875e:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048761:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048764:	01 d0                	add    %edx,%eax
 8048766:	c9                   	leave  
 8048767:	c3                   	ret    
 8048768:	55                   	push   %ebp
 8048769:	89 e5                	mov    %esp,%ebp
 804876b:	83 ec 08             	sub    $0x8,%esp
 804876e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048771:	83 e0 fc             	and    $0xfffffffc,%eax
 8048774:	89 45 08             	mov    %eax,0x8(%ebp)
 8048777:	83 ec 0c             	sub    $0xc,%esp
 804877a:	ff 75 08             	pushl  0x8(%ebp)
 804877d:	e8 8e fd ff ff       	call   8048510 <free@plt>
 8048782:	83 c4 10             	add    $0x10,%esp
 8048785:	90                   	nop
 8048786:	c9                   	leave  
 8048787:	c3                   	ret    
 8048788:	55                   	push   %ebp
 8048789:	89 e5                	mov    %esp,%ebp
 804878b:	83 ec 18             	sub    $0x18,%esp
 804878e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048791:	83 c0 01             	add    $0x1,%eax
 8048794:	83 ec 0c             	sub    $0xc,%esp
 8048797:	50                   	push   %eax
 8048798:	e8 6d ff ff ff       	call   804870a <atoi@plt+0x15a>
 804879d:	83 c4 10             	add    $0x10,%esp
 80487a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80487a3:	8b 45 08             	mov    0x8(%ebp),%eax
 80487a6:	83 c0 01             	add    $0x1,%eax
 80487a9:	83 ec 04             	sub    $0x4,%esp
 80487ac:	50                   	push   %eax
 80487ad:	6a 00                	push   $0x0
 80487af:	ff 75 f4             	pushl  -0xc(%ebp)
 80487b2:	e8 e9 fd ff ff       	call   80485a0 <memset@plt>
 80487b7:	83 c4 10             	add    $0x10,%esp
 80487ba:	83 ec 04             	sub    $0x4,%esp
 80487bd:	ff 75 08             	pushl  0x8(%ebp)
 80487c0:	ff 75 f4             	pushl  -0xc(%ebp)
 80487c3:	6a 00                	push   $0x0
 80487c5:	e8 26 fd ff ff       	call   80484f0 <read@plt>
 80487ca:	83 c4 10             	add    $0x10,%esp
 80487cd:	85 c0                	test   %eax,%eax
 80487cf:	7f 1a                	jg     80487eb <atoi@plt+0x23b>
 80487d1:	83 ec 0c             	sub    $0xc,%esp
 80487d4:	68 60 92 04 08       	push   $0x8049260
 80487d9:	e8 72 fd ff ff       	call   8048550 <puts@plt>
 80487de:	83 c4 10             	add    $0x10,%esp
 80487e1:	83 ec 0c             	sub    $0xc,%esp
 80487e4:	6a 00                	push   $0x0
 80487e6:	e8 85 fd ff ff       	call   8048570 <exit@plt>
 80487eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80487ee:	c9                   	leave  
 80487ef:	c3                   	ret    
 80487f0:	55                   	push   %ebp
 80487f1:	89 e5                	mov    %esp,%ebp
 80487f3:	83 ec 28             	sub    $0x28,%esp
 80487f6:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80487fc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80487ff:	31 c0                	xor    %eax,%eax
 8048801:	83 ec 04             	sub    $0x4,%esp
 8048804:	6a 10                	push   $0x10
 8048806:	6a 00                	push   $0x0
 8048808:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804880b:	50                   	push   %eax
 804880c:	e8 8f fd ff ff       	call   80485a0 <memset@plt>
 8048811:	83 c4 10             	add    $0x10,%esp
 8048814:	83 ec 04             	sub    $0x4,%esp
 8048817:	6a 10                	push   $0x10
 8048819:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804881c:	50                   	push   %eax
 804881d:	6a 00                	push   $0x0
 804881f:	e8 cc fc ff ff       	call   80484f0 <read@plt>
 8048824:	83 c4 10             	add    $0x10,%esp
 8048827:	85 c0                	test   %eax,%eax
 8048829:	75 1a                	jne    8048845 <atoi@plt+0x295>
 804882b:	83 ec 0c             	sub    $0xc,%esp
 804882e:	68 6b 92 04 08       	push   $0x804926b
 8048833:	e8 18 fd ff ff       	call   8048550 <puts@plt>
 8048838:	83 c4 10             	add    $0x10,%esp
 804883b:	83 ec 0c             	sub    $0xc,%esp
 804883e:	6a 00                	push   $0x0
 8048840:	e8 2b fd ff ff       	call   8048570 <exit@plt>
 8048845:	83 ec 0c             	sub    $0xc,%esp
 8048848:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804884b:	50                   	push   %eax
 804884c:	e8 5f fd ff ff       	call   80485b0 <atoi@plt>
 8048851:	83 c4 10             	add    $0x10,%esp
 8048854:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048857:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 804885e:	74 05                	je     8048865 <atoi@plt+0x2b5>
 8048860:	e8 cb fc ff ff       	call   8048530 <__stack_chk_fail@plt>
 8048865:	c9                   	leave  
 8048866:	c3                   	ret    
 8048867:	55                   	push   %ebp
 8048868:	89 e5                	mov    %esp,%ebp
 804886a:	83 ec 18             	sub    $0x18,%esp
 804886d:	83 ec 0c             	sub    $0xc,%esp
 8048870:	68 10 40 00 00       	push   $0x4010
 8048875:	e8 90 fe ff ff       	call   804870a <atoi@plt+0x15a>
 804887a:	83 c4 10             	add    $0x10,%esp
 804887d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048880:	83 ec 0c             	sub    $0xc,%esp
 8048883:	68 69 7a 00 00       	push   $0x7a69
 8048888:	e8 54 fe ff ff       	call   80486e1 <atoi@plt+0x131>
 804888d:	83 c4 10             	add    $0x10,%esp
 8048890:	89 c2                	mov    %eax,%edx
 8048892:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048895:	89 10                	mov    %edx,(%eax)
 8048897:	83 ec 0c             	sub    $0xc,%esp
 804889a:	68 76 92 04 08       	push   $0x8049276
 804889f:	e8 5c fc ff ff       	call   8048500 <printf@plt>
 80488a4:	83 c4 10             	add    $0x10,%esp
 80488a7:	e8 44 ff ff ff       	call   80487f0 <atoi@plt+0x240>
 80488ac:	89 c2                	mov    %eax,%edx
 80488ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80488b1:	89 50 04             	mov    %edx,0x4(%eax)
 80488b4:	83 ec 0c             	sub    $0xc,%esp
 80488b7:	68 8b 92 04 08       	push   $0x804928b
 80488bc:	e8 3f fc ff ff       	call   8048500 <printf@plt>
 80488c1:	83 c4 10             	add    $0x10,%esp
 80488c4:	e8 27 ff ff ff       	call   80487f0 <atoi@plt+0x240>
 80488c9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80488cc:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 80488d3:	eb 11                	jmp    80488e6 <atoi@plt+0x336>
 80488d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80488d8:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80488db:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 80488de:	89 4c 90 0c          	mov    %ecx,0xc(%eax,%edx,4)
 80488e2:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 80488e6:	81 7d ec ff 0f 00 00 	cmpl   $0xfff,-0x14(%ebp)
 80488ed:	7e e6                	jle    80488d5 <atoi@plt+0x325>
 80488ef:	83 ec 0c             	sub    $0xc,%esp
 80488f2:	68 a6 92 04 08       	push   $0x80492a6
 80488f7:	e8 04 fc ff ff       	call   8048500 <printf@plt>
 80488fc:	83 c4 10             	add    $0x10,%esp
 80488ff:	83 ec 0c             	sub    $0xc,%esp
 8048902:	6a 08                	push   $0x8
 8048904:	e8 7f fe ff ff       	call   8048788 <atoi@plt+0x1d8>
 8048909:	83 c4 10             	add    $0x10,%esp
 804890c:	89 c2                	mov    %eax,%edx
 804890e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048911:	89 90 0c 40 00 00    	mov    %edx,0x400c(%eax)
 8048917:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804891a:	8b 80 0c 40 00 00    	mov    0x400c(%eax),%eax
 8048920:	83 ec 08             	sub    $0x8,%esp
 8048923:	50                   	push   %eax
 8048924:	68 bb 92 04 08       	push   $0x80492bb
 8048929:	e8 d2 fb ff ff       	call   8048500 <printf@plt>
 804892e:	83 c4 10             	add    $0x10,%esp
 8048931:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048934:	c9                   	leave  
 8048935:	c3                   	ret    
 8048936:	55                   	push   %ebp
 8048937:	89 e5                	mov    %esp,%ebp
 8048939:	83 ec 08             	sub    $0x8,%esp
 804893c:	a1 70 b0 04 08       	mov    0x804b070,%eax
 8048941:	85 c0                	test   %eax,%eax
 8048943:	75 12                	jne    8048957 <atoi@plt+0x3a7>
 8048945:	83 ec 0c             	sub    $0xc,%esp
 8048948:	68 c9 92 04 08       	push   $0x80492c9
 804894d:	e8 fe fb ff ff       	call   8048550 <puts@plt>
 8048952:	83 c4 10             	add    $0x10,%esp
 8048955:	eb 4d                	jmp    80489a4 <atoi@plt+0x3f4>
 8048957:	a1 70 b0 04 08       	mov    0x804b070,%eax
 804895c:	8b 80 0c 40 00 00    	mov    0x400c(%eax),%eax
 8048962:	83 ec 08             	sub    $0x8,%esp
 8048965:	50                   	push   %eax
 8048966:	68 e6 92 04 08       	push   $0x80492e6
 804896b:	e8 90 fb ff ff       	call   8048500 <printf@plt>
 8048970:	83 c4 10             	add    $0x10,%esp
 8048973:	a1 70 b0 04 08       	mov    0x804b070,%eax
 8048978:	8b 40 04             	mov    0x4(%eax),%eax
 804897b:	89 c2                	mov    %eax,%edx
 804897d:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048982:	01 d0                	add    %edx,%eax
 8048984:	a3 78 b0 04 08       	mov    %eax,0x804b078
 8048989:	a1 70 b0 04 08       	mov    0x804b070,%eax
 804898e:	83 ec 0c             	sub    $0xc,%esp
 8048991:	50                   	push   %eax
 8048992:	e8 d1 fd ff ff       	call   8048768 <atoi@plt+0x1b8>
 8048997:	83 c4 10             	add    $0x10,%esp
 804899a:	c7 05 70 b0 04 08 00 	movl   $0x0,0x804b070
 80489a1:	00 00 00 
 80489a4:	c9                   	leave  
 80489a5:	c3                   	ret    
 80489a6:	55                   	push   %ebp
 80489a7:	89 e5                	mov    %esp,%ebp
 80489a9:	83 ec 18             	sub    $0x18,%esp
 80489ac:	83 ec 0c             	sub    $0xc,%esp
 80489af:	6a 0c                	push   $0xc
 80489b1:	e8 54 fd ff ff       	call   804870a <atoi@plt+0x15a>
 80489b6:	83 c4 10             	add    $0x10,%esp
 80489b9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80489bc:	83 ec 04             	sub    $0x4,%esp
 80489bf:	6a 0c                	push   $0xc
 80489c1:	6a 00                	push   $0x0
 80489c3:	ff 75 f4             	pushl  -0xc(%ebp)
 80489c6:	e8 d5 fb ff ff       	call   80485a0 <memset@plt>
 80489cb:	83 c4 10             	add    $0x10,%esp
 80489ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80489d1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80489d7:	83 ec 0c             	sub    $0xc,%esp
 80489da:	68 69 7a 00 00       	push   $0x7a69
 80489df:	e8 fd fc ff ff       	call   80486e1 <atoi@plt+0x131>
 80489e4:	83 c4 10             	add    $0x10,%esp
 80489e7:	89 c2                	mov    %eax,%edx
 80489e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80489ec:	89 50 04             	mov    %edx,0x4(%eax)
 80489ef:	83 ec 0c             	sub    $0xc,%esp
 80489f2:	68 69 7a 00 00       	push   $0x7a69
 80489f7:	e8 e5 fc ff ff       	call   80486e1 <atoi@plt+0x131>
 80489fc:	83 c4 10             	add    $0x10,%esp
 80489ff:	89 c2                	mov    %eax,%edx
 8048a01:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048a04:	89 50 08             	mov    %edx,0x8(%eax)
 8048a07:	83 ec 0c             	sub    $0xc,%esp
 8048a0a:	68 fe 92 04 08       	push   $0x80492fe
 8048a0f:	e8 ec fa ff ff       	call   8048500 <printf@plt>
 8048a14:	83 c4 10             	add    $0x10,%esp
 8048a17:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048a1c:	83 ec 04             	sub    $0x4,%esp
 8048a1f:	6a 08                	push   $0x8
 8048a21:	50                   	push   %eax
 8048a22:	6a 00                	push   $0x0
 8048a24:	e8 c7 fa ff ff       	call   80484f0 <read@plt>
 8048a29:	83 c4 10             	add    $0x10,%esp
 8048a2c:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048a31:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048a34:	89 50 08             	mov    %edx,0x8(%eax)
 8048a37:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048a3a:	c9                   	leave  
 8048a3b:	c3                   	ret    
 8048a3c:	55                   	push   %ebp
 8048a3d:	89 e5                	mov    %esp,%ebp
 8048a3f:	53                   	push   %ebx
 8048a40:	83 ec 14             	sub    $0x14,%esp
 8048a43:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048a48:	83 ec 08             	sub    $0x8,%esp
 8048a4b:	50                   	push   %eax
 8048a4c:	68 14 93 04 08       	push   $0x8049314
 8048a51:	e8 aa fa ff ff       	call   8048500 <printf@plt>
 8048a56:	83 c4 10             	add    $0x10,%esp
 8048a59:	83 ec 0c             	sub    $0xc,%esp
 8048a5c:	68 44 93 04 08       	push   $0x8049344
 8048a61:	e8 ea fa ff ff       	call   8048550 <puts@plt>
 8048a66:	83 c4 10             	add    $0x10,%esp
 8048a69:	83 ec 0c             	sub    $0xc,%esp
 8048a6c:	68 5c 93 04 08       	push   $0x804935c
 8048a71:	e8 da fa ff ff       	call   8048550 <puts@plt>
 8048a76:	83 c4 10             	add    $0x10,%esp
 8048a79:	83 ec 0c             	sub    $0xc,%esp
 8048a7c:	68 78 93 04 08       	push   $0x8049378
 8048a81:	e8 ca fa ff ff       	call   8048550 <puts@plt>
 8048a86:	83 c4 10             	add    $0x10,%esp
 8048a89:	e8 62 fd ff ff       	call   80487f0 <atoi@plt+0x240>
 8048a8e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048a91:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048a94:	83 f8 02             	cmp    $0x2,%eax
 8048a97:	74 32                	je     8048acb <atoi@plt+0x51b>
 8048a99:	83 f8 03             	cmp    $0x3,%eax
 8048a9c:	74 57                	je     8048af5 <atoi@plt+0x545>
 8048a9e:	83 f8 01             	cmp    $0x1,%eax
 8048aa1:	75 7c                	jne    8048b1f <atoi@plt+0x56f>
 8048aa3:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048aa8:	83 f8 63             	cmp    $0x63,%eax
 8048aab:	77 15                	ja     8048ac2 <atoi@plt+0x512>
 8048aad:	83 ec 0c             	sub    $0xc,%esp
 8048ab0:	68 92 93 04 08       	push   $0x8049392
 8048ab5:	e8 96 fa ff ff       	call   8048550 <puts@plt>
 8048aba:	83 c4 10             	add    $0x10,%esp
 8048abd:	e9 b6 01 00 00       	jmp    8048c78 <atoi@plt+0x6c8>
 8048ac2:	c7 45 e8 a3 93 04 08 	movl   $0x80493a3,-0x18(%ebp)
 8048ac9:	eb 65                	jmp    8048b30 <atoi@plt+0x580>
 8048acb:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048ad0:	3d c7 00 00 00       	cmp    $0xc7,%eax
 8048ad5:	77 15                	ja     8048aec <atoi@plt+0x53c>
 8048ad7:	83 ec 0c             	sub    $0xc,%esp
 8048ada:	68 92 93 04 08       	push   $0x8049392
 8048adf:	e8 6c fa ff ff       	call   8048550 <puts@plt>
 8048ae4:	83 c4 10             	add    $0x10,%esp
 8048ae7:	e9 8c 01 00 00       	jmp    8048c78 <atoi@plt+0x6c8>
 8048aec:	c7 45 e8 ad 93 04 08 	movl   $0x80493ad,-0x18(%ebp)
 8048af3:	eb 3b                	jmp    8048b30 <atoi@plt+0x580>
 8048af5:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048afa:	3d 2b 01 00 00       	cmp    $0x12b,%eax
 8048aff:	77 15                	ja     8048b16 <atoi@plt+0x566>
 8048b01:	83 ec 0c             	sub    $0xc,%esp
 8048b04:	68 92 93 04 08       	push   $0x8049392
 8048b09:	e8 42 fa ff ff       	call   8048550 <puts@plt>
 8048b0e:	83 c4 10             	add    $0x10,%esp
 8048b11:	e9 62 01 00 00       	jmp    8048c78 <atoi@plt+0x6c8>
 8048b16:	c7 45 e8 bb 93 04 08 	movl   $0x80493bb,-0x18(%ebp)
 8048b1d:	eb 11                	jmp    8048b30 <atoi@plt+0x580>
 8048b1f:	83 ec 0c             	sub    $0xc,%esp
 8048b22:	68 c7 93 04 08       	push   $0x80493c7
 8048b27:	e8 24 fa ff ff       	call   8048550 <puts@plt>
 8048b2c:	83 c4 10             	add    $0x10,%esp
 8048b2f:	90                   	nop
 8048b30:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048b35:	8b 40 08             	mov    0x8(%eax),%eax
 8048b38:	8b 00                	mov    (%eax),%eax
 8048b3a:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048b3d:	a1 7c b0 04 08       	mov    0x804b07c,%eax
 8048b42:	85 c0                	test   %eax,%eax
 8048b44:	0f 85 8f 00 00 00    	jne    8048bd9 <atoi@plt+0x629>
 8048b4a:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048b4f:	8b 58 08             	mov    0x8(%eax),%ebx
 8048b52:	83 ec 0c             	sub    $0xc,%esp
 8048b55:	6a 0c                	push   $0xc
 8048b57:	e8 ae fb ff ff       	call   804870a <atoi@plt+0x15a>
 8048b5c:	83 c4 10             	add    $0x10,%esp
 8048b5f:	89 03                	mov    %eax,(%ebx)
 8048b61:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048b66:	8b 40 08             	mov    0x8(%eax),%eax
 8048b69:	8b 18                	mov    (%eax),%ebx
 8048b6b:	83 ec 0c             	sub    $0xc,%esp
 8048b6e:	6a 08                	push   $0x8
 8048b70:	e8 95 fb ff ff       	call   804870a <atoi@plt+0x15a>
 8048b75:	83 c4 10             	add    $0x10,%esp
 8048b78:	89 43 04             	mov    %eax,0x4(%ebx)
 8048b7b:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048b80:	8b 40 08             	mov    0x8(%eax),%eax
 8048b83:	8b 00                	mov    (%eax),%eax
 8048b85:	8b 40 04             	mov    0x4(%eax),%eax
 8048b88:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048b8b:	89 50 04             	mov    %edx,0x4(%eax)
 8048b8e:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048b93:	8b 40 08             	mov    0x8(%eax),%eax
 8048b96:	8b 00                	mov    (%eax),%eax
 8048b98:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048b9b:	89 10                	mov    %edx,(%eax)
 8048b9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ba0:	6b c0 9c             	imul   $0xffffff9c,%eax,%eax
 8048ba3:	89 c2                	mov    %eax,%edx
 8048ba5:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048baa:	01 d0                	add    %edx,%eax
 8048bac:	a3 78 b0 04 08       	mov    %eax,0x804b078
 8048bb1:	a1 7c b0 04 08       	mov    0x804b07c,%eax
 8048bb6:	83 c0 01             	add    $0x1,%eax
 8048bb9:	a3 7c b0 04 08       	mov    %eax,0x804b07c
 8048bbe:	a1 7c b0 04 08       	mov    0x804b07c,%eax
 8048bc3:	83 ec 08             	sub    $0x8,%esp
 8048bc6:	50                   	push   %eax
 8048bc7:	68 d6 93 04 08       	push   $0x80493d6
 8048bcc:	e8 2f f9 ff ff       	call   8048500 <printf@plt>
 8048bd1:	83 c4 10             	add    $0x10,%esp
 8048bd4:	e9 9f 00 00 00       	jmp    8048c78 <atoi@plt+0x6c8>
 8048bd9:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8048be0:	eb 0d                	jmp    8048bef <atoi@plt+0x63f>
 8048be2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048be5:	8b 40 08             	mov    0x8(%eax),%eax
 8048be8:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048beb:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048bef:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048bf2:	a1 7c b0 04 08       	mov    0x804b07c,%eax
 8048bf7:	39 c2                	cmp    %eax,%edx
 8048bf9:	72 e7                	jb     8048be2 <atoi@plt+0x632>
 8048bfb:	83 ec 0c             	sub    $0xc,%esp
 8048bfe:	6a 0c                	push   $0xc
 8048c00:	e8 05 fb ff ff       	call   804870a <atoi@plt+0x15a>
 8048c05:	83 c4 10             	add    $0x10,%esp
 8048c08:	89 c2                	mov    %eax,%edx
 8048c0a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048c0d:	89 50 08             	mov    %edx,0x8(%eax)
 8048c10:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048c13:	8b 58 08             	mov    0x8(%eax),%ebx
 8048c16:	83 ec 0c             	sub    $0xc,%esp
 8048c19:	6a 08                	push   $0x8
 8048c1b:	e8 ea fa ff ff       	call   804870a <atoi@plt+0x15a>
 8048c20:	83 c4 10             	add    $0x10,%esp
 8048c23:	89 43 04             	mov    %eax,0x4(%ebx)
 8048c26:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048c29:	8b 40 08             	mov    0x8(%eax),%eax
 8048c2c:	8b 40 04             	mov    0x4(%eax),%eax
 8048c2f:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048c32:	89 50 04             	mov    %edx,0x4(%eax)
 8048c35:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048c38:	8b 40 08             	mov    0x8(%eax),%eax
 8048c3b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048c3e:	89 10                	mov    %edx,(%eax)
 8048c40:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c43:	6b c0 9c             	imul   $0xffffff9c,%eax,%eax
 8048c46:	89 c2                	mov    %eax,%edx
 8048c48:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048c4d:	01 d0                	add    %edx,%eax
 8048c4f:	a3 78 b0 04 08       	mov    %eax,0x804b078
 8048c54:	a1 7c b0 04 08       	mov    0x804b07c,%eax
 8048c59:	83 c0 01             	add    $0x1,%eax
 8048c5c:	a3 7c b0 04 08       	mov    %eax,0x804b07c
 8048c61:	a1 7c b0 04 08       	mov    0x804b07c,%eax
 8048c66:	83 ec 08             	sub    $0x8,%esp
 8048c69:	50                   	push   %eax
 8048c6a:	68 d6 93 04 08       	push   $0x80493d6
 8048c6f:	e8 8c f8 ff ff       	call   8048500 <printf@plt>
 8048c74:	83 c4 10             	add    $0x10,%esp
 8048c77:	90                   	nop
 8048c78:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048c7b:	c9                   	leave  
 8048c7c:	c3                   	ret    
 8048c7d:	55                   	push   %ebp
 8048c7e:	89 e5                	mov    %esp,%ebp
 8048c80:	83 ec 18             	sub    $0x18,%esp
 8048c83:	83 ec 0c             	sub    $0xc,%esp
 8048c86:	68 e7 93 04 08       	push   $0x80493e7
 8048c8b:	e8 70 f8 ff ff       	call   8048500 <printf@plt>
 8048c90:	83 c4 10             	add    $0x10,%esp
 8048c93:	83 ec 0c             	sub    $0xc,%esp
 8048c96:	6a 14                	push   $0x14
 8048c98:	e8 eb fa ff ff       	call   8048788 <atoi@plt+0x1d8>
 8048c9d:	83 c4 10             	add    $0x10,%esp
 8048ca0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048ca3:	83 ec 08             	sub    $0x8,%esp
 8048ca6:	68 f7 93 04 08       	push   $0x80493f7
 8048cab:	ff 75 f4             	pushl  -0xc(%ebp)
 8048cae:	e8 2d f8 ff ff       	call   80484e0 <strcmp@plt>
 8048cb3:	83 c4 10             	add    $0x10,%esp
 8048cb6:	85 c0                	test   %eax,%eax
 8048cb8:	75 14                	jne    8048cce <atoi@plt+0x71e>
 8048cba:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048cbf:	05 10 27 00 00       	add    $0x2710,%eax
 8048cc4:	a3 78 b0 04 08       	mov    %eax,0x804b078
 8048cc9:	e9 fe 01 00 00       	jmp    8048ecc <atoi@plt+0x91c>
 8048cce:	83 ec 08             	sub    $0x8,%esp
 8048cd1:	68 09 94 04 08       	push   $0x8049409
 8048cd6:	ff 75 f4             	pushl  -0xc(%ebp)
 8048cd9:	e8 02 f8 ff ff       	call   80484e0 <strcmp@plt>
 8048cde:	83 c4 10             	add    $0x10,%esp
 8048ce1:	85 c0                	test   %eax,%eax
 8048ce3:	75 14                	jne    8048cf9 <atoi@plt+0x749>
 8048ce5:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048cea:	05 f4 01 00 00       	add    $0x1f4,%eax
 8048cef:	a3 78 b0 04 08       	mov    %eax,0x804b078
 8048cf4:	e9 d3 01 00 00       	jmp    8048ecc <atoi@plt+0x91c>
 8048cf9:	83 ec 08             	sub    $0x8,%esp
 8048cfc:	68 1c 94 04 08       	push   $0x804941c
 8048d01:	ff 75 f4             	pushl  -0xc(%ebp)
 8048d04:	e8 d7 f7 ff ff       	call   80484e0 <strcmp@plt>
 8048d09:	83 c4 10             	add    $0x10,%esp
 8048d0c:	85 c0                	test   %eax,%eax
 8048d0e:	75 12                	jne    8048d22 <atoi@plt+0x772>
 8048d10:	a1 78 b0 04 08       	mov    0x804b078,%eax
 8048d15:	83 c0 32             	add    $0x32,%eax
 8048d18:	a3 78 b0 04 08       	mov    %eax,0x804b078
 8048d1d:	e9 aa 01 00 00       	jmp    8048ecc <atoi@plt+0x91c>
 8048d22:	83 ec 08             	sub    $0x8,%esp
 8048d25:	68 29 94 04 08       	push   $0x8049429
 8048d2a:	ff 75 f4             	pushl  -0xc(%ebp)
 8048d2d:	e8 ae f7 ff ff       	call   80484e0 <strcmp@plt>
 8048d32:	83 c4 10             	add    $0x10,%esp
 8048d35:	85 c0                	test   %eax,%eax
 8048d37:	75 0e                	jne    8048d47 <atoi@plt+0x797>
 8048d39:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d3c:	83 e8 01             	sub    $0x1,%eax
 8048d3f:	c6 00 ff             	movb   $0xff,(%eax)
 8048d42:	e9 85 01 00 00       	jmp    8048ecc <atoi@plt+0x91c>
 8048d47:	83 ec 08             	sub    $0x8,%esp
 8048d4a:	68 36 94 04 08       	push   $0x8049436
 8048d4f:	ff 75 f4             	pushl  -0xc(%ebp)
 8048d52:	e8 89 f7 ff ff       	call   80484e0 <strcmp@plt>
 8048d57:	83 c4 10             	add    $0x10,%esp
 8048d5a:	85 c0                	test   %eax,%eax
 8048d5c:	75 12                	jne    8048d70 <atoi@plt+0x7c0>
 8048d5e:	83 ec 0c             	sub    $0xc,%esp
 8048d61:	6a 01                	push   $0x1
 8048d63:	e8 00 fa ff ff       	call   8048768 <atoi@plt+0x1b8>
 8048d68:	83 c4 10             	add    $0x10,%esp
 8048d6b:	e9 5c 01 00 00       	jmp    8048ecc <atoi@plt+0x91c>
 8048d70:	83 ec 08             	sub    $0x8,%esp
 8048d73:	68 44 94 04 08       	push   $0x8049444
 8048d78:	ff 75 f4             	pushl  -0xc(%ebp)
 8048d7b:	e8 60 f7 ff ff       	call   80484e0 <strcmp@plt>
 8048d80:	83 c4 10             	add    $0x10,%esp
 8048d83:	85 c0                	test   %eax,%eax
 8048d85:	75 0c                	jne    8048d93 <atoi@plt+0x7e3>
 8048d87:	c7 45 f4 37 13 03 00 	movl   $0x31337,-0xc(%ebp)
 8048d8e:	e9 39 01 00 00       	jmp    8048ecc <atoi@plt+0x91c>
 8048d93:	83 ec 08             	sub    $0x8,%esp
 8048d96:	68 5a 94 04 08       	push   $0x804945a
 8048d9b:	ff 75 f4             	pushl  -0xc(%ebp)
 8048d9e:	e8 3d f7 ff ff       	call   80484e0 <strcmp@plt>
 8048da3:	83 c4 10             	add    $0x10,%esp
 8048da6:	85 c0                	test   %eax,%eax
 8048da8:	75 2f                	jne    8048dd9 <atoi@plt+0x829>
 8048daa:	83 ec 0c             	sub    $0xc,%esp
 8048dad:	ff 75 f4             	pushl  -0xc(%ebp)
 8048db0:	e8 5b f7 ff ff       	call   8048510 <free@plt>
 8048db5:	83 c4 10             	add    $0x10,%esp
 8048db8:	83 ec 0c             	sub    $0xc,%esp
 8048dbb:	ff 75 f4             	pushl  -0xc(%ebp)
 8048dbe:	e8 4d f7 ff ff       	call   8048510 <free@plt>
 8048dc3:	83 c4 10             	add    $0x10,%esp
 8048dc6:	83 ec 0c             	sub    $0xc,%esp
 8048dc9:	ff 75 f4             	pushl  -0xc(%ebp)
 8048dcc:	e8 3f f7 ff ff       	call   8048510 <free@plt>
 8048dd1:	83 c4 10             	add    $0x10,%esp
 8048dd4:	e9 f3 00 00 00       	jmp    8048ecc <atoi@plt+0x91c>
 8048dd9:	83 ec 08             	sub    $0x8,%esp
 8048ddc:	68 6a 94 04 08       	push   $0x804946a
 8048de1:	ff 75 f4             	pushl  -0xc(%ebp)
 8048de4:	e8 f7 f6 ff ff       	call   80484e0 <strcmp@plt>
 8048de9:	83 c4 10             	add    $0x10,%esp
 8048dec:	85 c0                	test   %eax,%eax
 8048dee:	75 27                	jne    8048e17 <atoi@plt+0x867>
 8048df0:	a1 7c b0 04 08       	mov    0x804b07c,%eax
 8048df5:	83 f8 0a             	cmp    $0xa,%eax
 8048df8:	76 11                	jbe    8048e0b <atoi@plt+0x85b>
 8048dfa:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048dff:	83 ec 0c             	sub    $0xc,%esp
 8048e02:	50                   	push   %eax
 8048e03:	e8 60 f9 ff ff       	call   8048768 <atoi@plt+0x1b8>
 8048e08:	83 c4 10             	add    $0x10,%esp
 8048e0b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048e12:	e9 b5 00 00 00       	jmp    8048ecc <atoi@plt+0x91c>
 8048e17:	83 ec 08             	sub    $0x8,%esp
 8048e1a:	68 78 94 04 08       	push   $0x8049478
 8048e1f:	ff 75 f4             	pushl  -0xc(%ebp)
 8048e22:	e8 b9 f6 ff ff       	call   80484e0 <strcmp@plt>
 8048e27:	83 c4 10             	add    $0x10,%esp
 8048e2a:	85 c0                	test   %eax,%eax
 8048e2c:	75 16                	jne    8048e44 <atoi@plt+0x894>
 8048e2e:	a1 6c b0 04 08       	mov    0x804b06c,%eax
 8048e33:	83 ec 0c             	sub    $0xc,%esp
 8048e36:	50                   	push   %eax
 8048e37:	e8 24 f7 ff ff       	call   8048560 <system@plt>
 8048e3c:	83 c4 10             	add    $0x10,%esp
 8048e3f:	e9 88 00 00 00       	jmp    8048ecc <atoi@plt+0x91c>
 8048e44:	83 ec 08             	sub    $0x8,%esp
 8048e47:	68 8b 94 04 08       	push   $0x804948b
 8048e4c:	ff 75 f4             	pushl  -0xc(%ebp)
 8048e4f:	e8 8c f6 ff ff       	call   80484e0 <strcmp@plt>
 8048e54:	83 c4 10             	add    $0x10,%esp
 8048e57:	85 c0                	test   %eax,%eax
 8048e59:	75 12                	jne    8048e6d <atoi@plt+0x8bd>
 8048e5b:	83 ec 0c             	sub    $0xc,%esp
 8048e5e:	68 a1 94 04 08       	push   $0x80494a1
 8048e63:	e8 e8 f6 ff ff       	call   8048550 <puts@plt>
 8048e68:	83 c4 10             	add    $0x10,%esp
 8048e6b:	eb 5f                	jmp    8048ecc <atoi@plt+0x91c>
 8048e6d:	83 ec 08             	sub    $0x8,%esp
 8048e70:	68 bf 94 04 08       	push   $0x80494bf
 8048e75:	ff 75 f4             	pushl  -0xc(%ebp)
 8048e78:	e8 63 f6 ff ff       	call   80484e0 <strcmp@plt>
 8048e7d:	83 c4 10             	add    $0x10,%esp
 8048e80:	85 c0                	test   %eax,%eax
 8048e82:	75 18                	jne    8048e9c <atoi@plt+0x8ec>
 8048e84:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048e89:	83 ec 08             	sub    $0x8,%esp
 8048e8c:	50                   	push   %eax
 8048e8d:	68 d0 94 04 08       	push   $0x80494d0
 8048e92:	e8 69 f6 ff ff       	call   8048500 <printf@plt>
 8048e97:	83 c4 10             	add    $0x10,%esp
 8048e9a:	eb 30                	jmp    8048ecc <atoi@plt+0x91c>
 8048e9c:	83 ec 08             	sub    $0x8,%esp
 8048e9f:	68 ec 94 04 08       	push   $0x80494ec
 8048ea4:	ff 75 f4             	pushl  -0xc(%ebp)
 8048ea7:	e8 34 f6 ff ff       	call   80484e0 <strcmp@plt>
 8048eac:	83 c4 10             	add    $0x10,%esp
 8048eaf:	85 c0                	test   %eax,%eax
 8048eb1:	75 0b                	jne    8048ebe <atoi@plt+0x90e>
 8048eb3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048eb6:	83 e8 02             	sub    $0x2,%eax
 8048eb9:	c6 00 ff             	movb   $0xff,(%eax)
 8048ebc:	eb 0e                	jmp    8048ecc <atoi@plt+0x91c>
 8048ebe:	83 ec 0c             	sub    $0xc,%esp
 8048ec1:	ff 75 f4             	pushl  -0xc(%ebp)
 8048ec4:	e8 87 f6 ff ff       	call   8048550 <puts@plt>
 8048ec9:	83 c4 10             	add    $0x10,%esp
 8048ecc:	83 ec 0c             	sub    $0xc,%esp
 8048ecf:	ff 75 f4             	pushl  -0xc(%ebp)
 8048ed2:	e8 91 f8 ff ff       	call   8048768 <atoi@plt+0x1b8>
 8048ed7:	83 c4 10             	add    $0x10,%esp
 8048eda:	90                   	nop
 8048edb:	c9                   	leave  
 8048edc:	c3                   	ret    
 8048edd:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048ee1:	83 e4 f0             	and    $0xfffffff0,%esp
 8048ee4:	ff 71 fc             	pushl  -0x4(%ecx)
 8048ee7:	55                   	push   %ebp
 8048ee8:	89 e5                	mov    %esp,%ebp
 8048eea:	53                   	push   %ebx
 8048eeb:	51                   	push   %ecx
 8048eec:	83 ec 10             	sub    $0x10,%esp
 8048eef:	a1 64 b0 04 08       	mov    0x804b064,%eax
 8048ef4:	6a 00                	push   $0x0
 8048ef6:	6a 02                	push   $0x2
 8048ef8:	6a 00                	push   $0x0
 8048efa:	50                   	push   %eax
 8048efb:	e8 90 f6 ff ff       	call   8048590 <setvbuf@plt>
 8048f00:	83 c4 10             	add    $0x10,%esp
 8048f03:	a1 60 b0 04 08       	mov    0x804b060,%eax
 8048f08:	6a 00                	push   $0x0
 8048f0a:	6a 01                	push   $0x1
 8048f0c:	6a 00                	push   $0x0
 8048f0e:	50                   	push   %eax
 8048f0f:	e8 7c f6 ff ff       	call   8048590 <setvbuf@plt>
 8048f14:	83 c4 10             	add    $0x10,%esp
 8048f17:	83 ec 0c             	sub    $0xc,%esp
 8048f1a:	6a 14                	push   $0x14
 8048f1c:	e8 e9 f7 ff ff       	call   804870a <atoi@plt+0x15a>
 8048f21:	83 c4 10             	add    $0x10,%esp
 8048f24:	a3 74 b0 04 08       	mov    %eax,0x804b074
 8048f29:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048f2e:	83 ec 04             	sub    $0x4,%esp
 8048f31:	6a 14                	push   $0x14
 8048f33:	6a 00                	push   $0x0
 8048f35:	50                   	push   %eax
 8048f36:	e8 65 f6 ff ff       	call   80485a0 <memset@plt>
 8048f3b:	83 c4 10             	add    $0x10,%esp
 8048f3e:	83 ec 0c             	sub    $0xc,%esp
 8048f41:	68 fe 92 04 08       	push   $0x80492fe
 8048f46:	e8 b5 f5 ff ff       	call   8048500 <printf@plt>
 8048f4b:	83 c4 10             	add    $0x10,%esp
 8048f4e:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048f53:	83 ec 04             	sub    $0x4,%esp
 8048f56:	6a 08                	push   $0x8
 8048f58:	50                   	push   %eax
 8048f59:	6a 00                	push   $0x0
 8048f5b:	e8 90 f5 ff ff       	call   80484f0 <read@plt>
 8048f60:	83 c4 10             	add    $0x10,%esp
 8048f63:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f66:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048f6b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048f6e:	83 ea 01             	sub    $0x1,%edx
 8048f71:	c6 04 10 00          	movb   $0x0,(%eax,%edx,1)
 8048f75:	8b 1d 74 b0 04 08    	mov    0x804b074,%ebx
 8048f7b:	83 ec 0c             	sub    $0xc,%esp
 8048f7e:	6a 0c                	push   $0xc
 8048f80:	e8 85 f7 ff ff       	call   804870a <atoi@plt+0x15a>
 8048f85:	83 c4 10             	add    $0x10,%esp
 8048f88:	89 43 08             	mov    %eax,0x8(%ebx)
 8048f8b:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048f90:	8b 40 08             	mov    0x8(%eax),%eax
 8048f93:	83 ec 04             	sub    $0x4,%esp
 8048f96:	6a 0c                	push   $0xc
 8048f98:	6a 00                	push   $0x0
 8048f9a:	50                   	push   %eax
 8048f9b:	e8 00 f6 ff ff       	call   80485a0 <memset@plt>
 8048fa0:	83 c4 10             	add    $0x10,%esp
 8048fa3:	a1 74 b0 04 08       	mov    0x804b074,%eax
 8048fa8:	83 ec 08             	sub    $0x8,%esp
 8048fab:	50                   	push   %eax
 8048fac:	68 fd 94 04 08       	push   $0x80494fd
 8048fb1:	e8 4a f5 ff ff       	call   8048500 <printf@plt>
 8048fb6:	83 c4 10             	add    $0x10,%esp
 8048fb9:	83 ec 0c             	sub    $0xc,%esp
 8048fbc:	6a 3c                	push   $0x3c
 8048fbe:	e8 5d f5 ff ff       	call   8048520 <alarm@plt>
 8048fc3:	83 c4 10             	add    $0x10,%esp
 8048fc6:	83 ec 0c             	sub    $0xc,%esp
 8048fc9:	68 08 95 04 08       	push   $0x8049508
 8048fce:	e8 7d f5 ff ff       	call   8048550 <puts@plt>
 8048fd3:	83 c4 10             	add    $0x10,%esp
 8048fd6:	83 ec 0c             	sub    $0xc,%esp
 8048fd9:	68 1b 95 04 08       	push   $0x804951b
 8048fde:	e8 6d f5 ff ff       	call   8048550 <puts@plt>
 8048fe3:	83 c4 10             	add    $0x10,%esp
 8048fe6:	83 ec 0c             	sub    $0xc,%esp
 8048fe9:	68 2f 95 04 08       	push   $0x804952f
 8048fee:	e8 5d f5 ff ff       	call   8048550 <puts@plt>
 8048ff3:	83 c4 10             	add    $0x10,%esp
 8048ff6:	83 ec 0c             	sub    $0xc,%esp
 8048ff9:	68 40 95 04 08       	push   $0x8049540
 8048ffe:	e8 4d f5 ff ff       	call   8048550 <puts@plt>
 8049003:	83 c4 10             	add    $0x10,%esp
 8049006:	e8 e5 f7 ff ff       	call   80487f0 <atoi@plt+0x240>
 804900b:	83 f8 03             	cmp    $0x3,%eax
 804900e:	74 37                	je     8049047 <atoi@plt+0xa97>
 8049010:	83 f8 03             	cmp    $0x3,%eax
 8049013:	77 0c                	ja     8049021 <atoi@plt+0xa71>
 8049015:	83 f8 01             	cmp    $0x1,%eax
 8049018:	74 1a                	je     8049034 <atoi@plt+0xa84>
 804901a:	83 f8 02             	cmp    $0x2,%eax
 804901d:	74 21                	je     8049040 <atoi@plt+0xa90>
 804901f:	eb 45                	jmp    8049066 <atoi@plt+0xab6>
 8049021:	83 f8 05             	cmp    $0x5,%eax
 8049024:	74 2f                	je     8049055 <atoi@plt+0xaa5>
 8049026:	83 f8 05             	cmp    $0x5,%eax
 8049029:	72 23                	jb     804904e <atoi@plt+0xa9e>
 804902b:	3d 39 05 00 00       	cmp    $0x539,%eax
 8049030:	74 2d                	je     804905f <atoi@plt+0xaaf>
 8049032:	eb 32                	jmp    8049066 <atoi@plt+0xab6>
 8049034:	e8 2e f8 ff ff       	call   8048867 <atoi@plt+0x2b7>
 8049039:	a3 70 b0 04 08       	mov    %eax,0x804b070
 804903e:	eb 37                	jmp    8049077 <atoi@plt+0xac7>
 8049040:	e8 f1 f8 ff ff       	call   8048936 <atoi@plt+0x386>
 8049045:	eb 30                	jmp    8049077 <atoi@plt+0xac7>
 8049047:	e8 5a f9 ff ff       	call   80489a6 <atoi@plt+0x3f6>
 804904c:	eb 29                	jmp    8049077 <atoi@plt+0xac7>
 804904e:	e8 e9 f9 ff ff       	call   8048a3c <atoi@plt+0x48c>
 8049053:	eb 22                	jmp    8049077 <atoi@plt+0xac7>
 8049055:	83 ec 0c             	sub    $0xc,%esp
 8049058:	6a 00                	push   $0x0
 804905a:	e8 11 f5 ff ff       	call   8048570 <exit@plt>
 804905f:	e8 19 fc ff ff       	call   8048c7d <atoi@plt+0x6cd>
 8049064:	eb 11                	jmp    8049077 <atoi@plt+0xac7>
 8049066:	83 ec 0c             	sub    $0xc,%esp
 8049069:	68 4c 95 04 08       	push   $0x804954c
 804906e:	e8 dd f4 ff ff       	call   8048550 <puts@plt>
 8049073:	83 c4 10             	add    $0x10,%esp
 8049076:	90                   	nop
 8049077:	e9 4a ff ff ff       	jmp    8048fc6 <atoi@plt+0xa16>
 804907c:	66 90                	xchg   %ax,%ax
 804907e:	66 90                	xchg   %ax,%ax
 8049080:	55                   	push   %ebp
 8049081:	57                   	push   %edi
 8049082:	56                   	push   %esi
 8049083:	53                   	push   %ebx
 8049084:	83 ec 1c             	sub    $0x1c,%esp
 8049087:	8b 54 24 3c          	mov    0x3c(%esp),%edx
 804908b:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 804908f:	8b 74 24 34          	mov    0x34(%esp),%esi
 8049093:	8b 7c 24 38          	mov    0x38(%esp),%edi
 8049097:	85 d2                	test   %edx,%edx
 8049099:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 804909d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80490a1:	89 f3                	mov    %esi,%ebx
 80490a3:	89 3c 24             	mov    %edi,(%esp)
 80490a6:	89 74 24 04          	mov    %esi,0x4(%esp)
 80490aa:	75 1c                	jne    80490c8 <atoi@plt+0xb18>
 80490ac:	39 f7                	cmp    %esi,%edi
 80490ae:	76 50                	jbe    8049100 <atoi@plt+0xb50>
 80490b0:	89 c8                	mov    %ecx,%eax
 80490b2:	89 f2                	mov    %esi,%edx
 80490b4:	f7 f7                	div    %edi
 80490b6:	89 d0                	mov    %edx,%eax
 80490b8:	31 d2                	xor    %edx,%edx
 80490ba:	83 c4 1c             	add    $0x1c,%esp
 80490bd:	5b                   	pop    %ebx
 80490be:	5e                   	pop    %esi
 80490bf:	5f                   	pop    %edi
 80490c0:	5d                   	pop    %ebp
 80490c1:	c3                   	ret    
 80490c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80490c8:	39 f2                	cmp    %esi,%edx
 80490ca:	89 d0                	mov    %edx,%eax
 80490cc:	77 52                	ja     8049120 <atoi@plt+0xb70>
 80490ce:	0f bd ea             	bsr    %edx,%ebp
 80490d1:	83 f5 1f             	xor    $0x1f,%ebp
 80490d4:	75 5a                	jne    8049130 <atoi@plt+0xb80>
 80490d6:	3b 54 24 04          	cmp    0x4(%esp),%edx
 80490da:	0f 82 e0 00 00 00    	jb     80491c0 <atoi@plt+0xc10>
 80490e0:	39 0c 24             	cmp    %ecx,(%esp)
 80490e3:	0f 86 d7 00 00 00    	jbe    80491c0 <atoi@plt+0xc10>
 80490e9:	8b 44 24 08          	mov    0x8(%esp),%eax
 80490ed:	8b 54 24 04          	mov    0x4(%esp),%edx
 80490f1:	83 c4 1c             	add    $0x1c,%esp
 80490f4:	5b                   	pop    %ebx
 80490f5:	5e                   	pop    %esi
 80490f6:	5f                   	pop    %edi
 80490f7:	5d                   	pop    %ebp
 80490f8:	c3                   	ret    
 80490f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049100:	85 ff                	test   %edi,%edi
 8049102:	89 fd                	mov    %edi,%ebp
 8049104:	75 0b                	jne    8049111 <atoi@plt+0xb61>
 8049106:	b8 01 00 00 00       	mov    $0x1,%eax
 804910b:	31 d2                	xor    %edx,%edx
 804910d:	f7 f7                	div    %edi
 804910f:	89 c5                	mov    %eax,%ebp
 8049111:	89 f0                	mov    %esi,%eax
 8049113:	31 d2                	xor    %edx,%edx
 8049115:	f7 f5                	div    %ebp
 8049117:	89 c8                	mov    %ecx,%eax
 8049119:	f7 f5                	div    %ebp
 804911b:	89 d0                	mov    %edx,%eax
 804911d:	eb 99                	jmp    80490b8 <atoi@plt+0xb08>
 804911f:	90                   	nop
 8049120:	89 c8                	mov    %ecx,%eax
 8049122:	89 f2                	mov    %esi,%edx
 8049124:	83 c4 1c             	add    $0x1c,%esp
 8049127:	5b                   	pop    %ebx
 8049128:	5e                   	pop    %esi
 8049129:	5f                   	pop    %edi
 804912a:	5d                   	pop    %ebp
 804912b:	c3                   	ret    
 804912c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049130:	8b 34 24             	mov    (%esp),%esi
 8049133:	bf 20 00 00 00       	mov    $0x20,%edi
 8049138:	89 e9                	mov    %ebp,%ecx
 804913a:	29 ef                	sub    %ebp,%edi
 804913c:	d3 e0                	shl    %cl,%eax
 804913e:	89 f9                	mov    %edi,%ecx
 8049140:	89 f2                	mov    %esi,%edx
 8049142:	d3 ea                	shr    %cl,%edx
 8049144:	89 e9                	mov    %ebp,%ecx
 8049146:	09 c2                	or     %eax,%edx
 8049148:	89 d8                	mov    %ebx,%eax
 804914a:	89 14 24             	mov    %edx,(%esp)
 804914d:	89 f2                	mov    %esi,%edx
 804914f:	d3 e2                	shl    %cl,%edx
 8049151:	89 f9                	mov    %edi,%ecx
 8049153:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049157:	8b 54 24 0c          	mov    0xc(%esp),%edx
 804915b:	d3 e8                	shr    %cl,%eax
 804915d:	89 e9                	mov    %ebp,%ecx
 804915f:	89 c6                	mov    %eax,%esi
 8049161:	d3 e3                	shl    %cl,%ebx
 8049163:	89 f9                	mov    %edi,%ecx
 8049165:	89 d0                	mov    %edx,%eax
 8049167:	d3 e8                	shr    %cl,%eax
 8049169:	89 e9                	mov    %ebp,%ecx
 804916b:	09 d8                	or     %ebx,%eax
 804916d:	89 d3                	mov    %edx,%ebx
 804916f:	89 f2                	mov    %esi,%edx
 8049171:	f7 34 24             	divl   (%esp)
 8049174:	89 d6                	mov    %edx,%esi
 8049176:	d3 e3                	shl    %cl,%ebx
 8049178:	f7 64 24 04          	mull   0x4(%esp)
 804917c:	39 d6                	cmp    %edx,%esi
 804917e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049182:	89 d1                	mov    %edx,%ecx
 8049184:	89 c3                	mov    %eax,%ebx
 8049186:	72 08                	jb     8049190 <atoi@plt+0xbe0>
 8049188:	75 11                	jne    804919b <atoi@plt+0xbeb>
 804918a:	39 44 24 08          	cmp    %eax,0x8(%esp)
 804918e:	73 0b                	jae    804919b <atoi@plt+0xbeb>
 8049190:	2b 44 24 04          	sub    0x4(%esp),%eax
 8049194:	1b 14 24             	sbb    (%esp),%edx
 8049197:	89 d1                	mov    %edx,%ecx
 8049199:	89 c3                	mov    %eax,%ebx
 804919b:	8b 54 24 08          	mov    0x8(%esp),%edx
 804919f:	29 da                	sub    %ebx,%edx
 80491a1:	19 ce                	sbb    %ecx,%esi
 80491a3:	89 f9                	mov    %edi,%ecx
 80491a5:	89 f0                	mov    %esi,%eax
 80491a7:	d3 e0                	shl    %cl,%eax
 80491a9:	89 e9                	mov    %ebp,%ecx
 80491ab:	d3 ea                	shr    %cl,%edx
 80491ad:	89 e9                	mov    %ebp,%ecx
 80491af:	d3 ee                	shr    %cl,%esi
 80491b1:	09 d0                	or     %edx,%eax
 80491b3:	89 f2                	mov    %esi,%edx
 80491b5:	83 c4 1c             	add    $0x1c,%esp
 80491b8:	5b                   	pop    %ebx
 80491b9:	5e                   	pop    %esi
 80491ba:	5f                   	pop    %edi
 80491bb:	5d                   	pop    %ebp
 80491bc:	c3                   	ret    
 80491bd:	8d 76 00             	lea    0x0(%esi),%esi
 80491c0:	29 f9                	sub    %edi,%ecx
 80491c2:	19 d6                	sbb    %edx,%esi
 80491c4:	89 74 24 04          	mov    %esi,0x4(%esp)
 80491c8:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80491cc:	e9 18 ff ff ff       	jmp    80490e9 <atoi@plt+0xb39>
 80491d1:	66 90                	xchg   %ax,%ax
 80491d3:	66 90                	xchg   %ax,%ax
 80491d5:	66 90                	xchg   %ax,%ax
 80491d7:	66 90                	xchg   %ax,%ax
 80491d9:	66 90                	xchg   %ax,%ax
 80491db:	66 90                	xchg   %ax,%ax
 80491dd:	66 90                	xchg   %ax,%ax
 80491df:	90                   	nop
 80491e0:	55                   	push   %ebp
 80491e1:	57                   	push   %edi
 80491e2:	56                   	push   %esi
 80491e3:	53                   	push   %ebx
 80491e4:	e8 17 f4 ff ff       	call   8048600 <atoi@plt+0x50>
 80491e9:	81 c3 17 1e 00 00    	add    $0x1e17,%ebx
 80491ef:	83 ec 0c             	sub    $0xc,%esp
 80491f2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80491f6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80491fc:	e8 9f f2 ff ff       	call   80484a0 <strcmp@plt-0x40>
 8049201:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8049207:	29 c6                	sub    %eax,%esi
 8049209:	c1 fe 02             	sar    $0x2,%esi
 804920c:	85 f6                	test   %esi,%esi
 804920e:	74 25                	je     8049235 <atoi@plt+0xc85>
 8049210:	31 ff                	xor    %edi,%edi
 8049212:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049218:	83 ec 04             	sub    $0x4,%esp
 804921b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804921f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049223:	55                   	push   %ebp
 8049224:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804922b:	83 c7 01             	add    $0x1,%edi
 804922e:	83 c4 10             	add    $0x10,%esp
 8049231:	39 f7                	cmp    %esi,%edi
 8049233:	75 e3                	jne    8049218 <atoi@plt+0xc68>
 8049235:	83 c4 0c             	add    $0xc,%esp
 8049238:	5b                   	pop    %ebx
 8049239:	5e                   	pop    %esi
 804923a:	5f                   	pop    %edi
 804923b:	5d                   	pop    %ebp
 804923c:	c3                   	ret    
 804923d:	8d 76 00             	lea    0x0(%esi),%esi
 8049240:	f3 c3                	repz ret 

Disassembly of section .fini:

08049244 <.fini>:
 8049244:	53                   	push   %ebx
 8049245:	83 ec 08             	sub    $0x8,%esp
 8049248:	e8 b3 f3 ff ff       	call   8048600 <atoi@plt+0x50>
 804924d:	81 c3 b3 1d 00 00    	add    $0x1db3,%ebx
 8049253:	83 c4 08             	add    $0x8,%esp
 8049256:	5b                   	pop    %ebx
 8049257:	c3                   	ret    
