
forest:     file format elf32-i386
forest
architecture: i386, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x08048390

Program Header:
    PHDR off    0x00000034 vaddr 0x08048034 paddr 0x08048034 align 2**2
         filesz 0x00000100 memsz 0x00000100 flags r-x
  INTERP off    0x00000134 vaddr 0x08048134 paddr 0x08048134 align 2**0
         filesz 0x00000013 memsz 0x00000013 flags r--
    LOAD off    0x00000000 vaddr 0x08048000 paddr 0x08048000 align 2**12
         filesz 0x00000ae8 memsz 0x00000ae8 flags r-x
    LOAD off    0x00000ae8 vaddr 0x08049ae8 paddr 0x08049ae8 align 2**12
         filesz 0x00000128 memsz 0x0000012c flags rw-
 DYNAMIC off    0x00000af4 vaddr 0x08049af4 paddr 0x08049af4 align 2**2
         filesz 0x000000e8 memsz 0x000000e8 flags rw-
    NOTE off    0x00000148 vaddr 0x08048148 paddr 0x08048148 align 2**2
         filesz 0x00000044 memsz 0x00000044 flags r--
EH_FRAME off    0x00000930 vaddr 0x08048930 paddr 0x08048930 align 2**2
         filesz 0x00000054 memsz 0x00000054 flags r--
   STACK off    0x00000000 vaddr 0x00000000 paddr 0x00000000 align 2**4
         filesz 0x00000000 memsz 0x00000000 flags rw-

Dynamic Section:
  NEEDED               libc.so.6
  INIT                 0x080482f4
  FINI                 0x08048874
  INIT_ARRAY           0x08049ae8
  INIT_ARRAYSZ         0x00000004
  FINI_ARRAY           0x08049aec
  FINI_ARRAYSZ         0x00000004
  GNU_HASH             0x0804818c
  STRTAB               0x0804822c
  SYMTAB               0x080481ac
  STRSZ                0x0000005d
  SYMENT               0x00000010
  DEBUG                0x00000000
  PLTGOT               0x08049be0
  PLTRELSZ             0x00000030
  PLTREL               0x00000011
  JMPREL               0x080482c4
  REL                  0x080482bc
  RELSZ                0x00000008
  RELENT               0x00000008
  VERNEED              0x0804829c
  VERNEEDNUM           0x00000001
  VERSYM               0x0804828a

Version References:
  required from libc.so.6:
    0x0d696910 0x00 02 GLIBC_2.0

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .interp       00000013  08048134  08048134  00000134  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  08048148  08048148  00000148  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  08048168  08048168  00000168  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .gnu.hash     00000020  0804818c  0804818c  0000018c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynsym       00000080  080481ac  080481ac  000001ac  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       0000005d  0804822c  0804822c  0000022c  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  00000010  0804828a  0804828a  0000028a  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000020  0804829c  0804829c  0000029c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rel.dyn      00000008  080482bc  080482bc  000002bc  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rel.plt      00000030  080482c4  080482c4  000002c4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         00000023  080482f4  080482f4  000002f4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt          00000070  08048320  08048320  00000320  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .text         000004e2  08048390  08048390  00000390  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .fini         00000014  08048874  08048874  00000874  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .rodata       000000a7  08048888  08048888  00000888  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .eh_frame_hdr 00000054  08048930  08048930  00000930  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame     00000164  08048984  08048984  00000984  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .init_array   00000004  08049ae8  08049ae8  00000ae8  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 18 .fini_array   00000004  08049aec  08049aec  00000aec  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 19 .jcr          00000004  08049af0  08049af0  00000af0  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      000000e8  08049af4  08049af4  00000af4  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000004  08049bdc  08049bdc  00000bdc  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 22 .got.plt      00000024  08049be0  08049be0  00000be0  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 23 .data         0000000c  08049c04  08049c04  00000c04  2**2
                  CONTENTS, ALLOC, LOAD, DATA
 24 .bss          00000004  08049c10  08049c10  00000c10  2**0
                  ALLOC
 25 .comment      00000039  00000000  00000000  00000c10  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
no symbols


Contents of section .interp:
 8048134 2f6c6962 2f6c642d 6c696e75 782e736f  /lib/ld-linux.so
 8048144 2e3200                               .2.             
Contents of section .note.ABI-tag:
 8048148 04000000 10000000 01000000 474e5500  ............GNU.
 8048158 00000000 02000000 06000000 20000000  ............ ...
Contents of section .note.gnu.build-id:
 8048168 04000000 14000000 03000000 474e5500  ............GNU.
 8048178 4bc47bea 06a7f6c4 9f552be5 0a5d0289  K.{......U+..]..
 8048188 89dd9f50                             ...P            
Contents of section .gnu.hash:
 804818c 02000000 07000000 01000000 05000000  ................
 804819c 00200020 00000000 07000000 ad4be3c0  . . .........K..
Contents of section .dynsym:
 80481ac 00000000 00000000 00000000 00000000  ................
 80481bc 24000000 00000000 00000000 12000000  $...............
 80481cc 2b000000 00000000 00000000 12000000  +...............
 80481dc 1f000000 00000000 00000000 12000000  ................
 80481ec 44000000 00000000 00000000 20000000  D........... ...
 80481fc 1a000000 00000000 00000000 12000000  ................
 804820c 32000000 00000000 00000000 12000000  2...............
 804821c 0b000000 8c880408 04000000 11000f00  ................
Contents of section .dynstr:
 804822c 006c6962 632e736f 2e36005f 494f5f73  .libc.so.6._IO_s
 804823c 7464696e 5f757365 64006578 69740070  tdin_used.exit.p
 804824c 75747300 7072696e 7466006d 616c6c6f  uts.printf.mallo
 804825c 63005f5f 6c696263 5f737461 72745f6d  c.__libc_start_m
 804826c 61696e00 5f5f676d 6f6e5f73 74617274  ain.__gmon_start
 804827c 5f5f0047 4c494243 5f322e30 00        __.GLIBC_2.0.   
Contents of section .gnu.version:
 804828a 00000200 02000200 00000200 02000100  ................
Contents of section .gnu.version_r:
 804829c 01000100 01000000 10000000 00000000  ................
 80482ac 1069690d 00000200 53000000 00000000  .ii.....S.......
Contents of section .rel.dyn:
 80482bc dc9b0408 06040000                    ........        
Contents of section .rel.plt:
 80482c4 ec9b0408 07010000 f09b0408 07020000  ................
 80482d4 f49b0408 07030000 f89b0408 07040000  ................
 80482e4 fc9b0408 07050000 009c0408 07060000  ................
Contents of section .init:
 80482f4 5383ec08 e8c30000 0081c3e3 1800008b  S...............
 8048304 83fcffff ff85c074 05e84e00 000083c4  .......t..N.....
 8048314 085bc3                               .[.             
Contents of section .plt:
 8048320 ff35e49b 0408ff25 e89b0408 00000000  .5.....%........
 8048330 ff25ec9b 04086800 000000e9 e0ffffff  .%....h.........
 8048340 ff25f09b 04086808 000000e9 d0ffffff  .%....h.........
 8048350 ff25f49b 04086810 000000e9 c0ffffff  .%....h.........
 8048360 ff25f89b 04086818 000000e9 b0ffffff  .%....h.........
 8048370 ff25fc9b 04086820 000000e9 a0ffffff  .%....h ........
 8048380 ff25009c 04086828 000000e9 90ffffff  .%....h(........
Contents of section .text:
 8048390 31ed5e89 e183e4f0 50545268 70880408  1.^.....PTRhp...
 80483a0 68008804 08515668 3e870408 e8cfffff  h....QVh>.......
 80483b0 fff46690 66906690 66906690 66906690  ..f.f.f.f.f.f.f.
 80483c0 8b1c24c3 66906690 66906690 66906690  ..$.f.f.f.f.f.f.
 80483d0 b8139c04 082d109c 040883f8 06761ab8  .....-.......v..
 80483e0 00000000 85c07411 5589e583 ec146810  ......t.U.....h.
 80483f0 9c0408ff d083c410 c9f3c390 8d742600  .............t&.
 8048400 b8109c04 082d109c 0408c1f8 0289c2c1  .....-..........
 8048410 ea1f01d0 d1f8741b ba000000 0085d274  ......t........t
 8048420 125589e5 83ec1050 68109c04 08ffd283  .U.....Ph.......
 8048430 c410c9f3 c38d7426 008dbc27 00000000  ......t&...'....
 8048440 803d109c 04080075 135589e5 83ec08e8  .=.....u.U......
 8048450 7cffffff c605109c 040801c9 f3c36690  |.............f.
 8048460 b8f09a04 088b1085 d27505eb 938d7600  .........u....v.
 8048470 ba000000 0085d274 f25589e5 83ec1450  .......t.U.....P
 8048480 ffd283c4 10c9e975 ffffff55 89e583ec  .......u...U....
 8048490 18837d08 00740c83 7d0c0074 06837d10  ..}..t..}..t..}.
 80484a0 00750ab8 00000000 e98a0000 00c745f4  .u............E.
 80484b0 01000000 8b450c89 45f08b45 108945ec  .....E..E..E..E.
 80484c0 eb408b45 ec0fb600 0fbec083 ec0450ff  .@.E..........P.
 80484d0 75f0ff75 08e85f00 000083c4 102145f4  u..u.._......!E.
 80484e0 8345ec01 eb048345 f0018b45 f00fb600  .E.....E...E....
 80484f0 3c4c74f2 8b45f00f b6003c52 74e88345  <Lt..E....<Rt..E
 8048500 f0018b45 f00fb600 84c0740a 8b45ec0f  ...E......t..E..
 8048510 b60084c0 75ac8b45 f00fb600 84c00f94  ....u..E........
 8048520 c28b45ec 0fb60084 c00f94c0 21d00fb6  ..E.........!...
 8048530 c02145f4 8b45f4c9 c35589e5 83ec188b  .!E..E...U......
 8048540 45108845 f4837d08 00740a8b 450c0fb6  E..E..}..t..E...
 8048550 0084c075 0ab80000 0000e9a6 0000008b  ...u............
 8048560 45080fb6 40083a45 f475288b 450c0fb6  E...@.:E.u(.E...
 8048570 003c440f 85870000 008b4508 0fb64008  .<D.......E...@.
 8048580 3a45f475 07b80100 0000eb79 b8000000  :E.u.......y....
 8048590 00eb728b 45080fb6 40083a45 f47e308b  ..r.E...@.:E.~0.
 80485a0 450c0fb6 003c4c75 1f0fbe55 f48b450c  E....<Lu...U..E.
 80485b0 8d48018b 45088b00 83ec0452 5150e876  .H..E......RQP.v
 80485c0 ffffff83 c410eb3d b8000000 00eb368b  .......=......6.
 80485d0 450c0fb6 003c5275 200fbe55 f48b450c  E....<Ru ..U..E.
 80485e0 8d48018b 45088b40 0483ec04 525150e8  .H..E..@....RQP.
 80485f0 45ffffff 83c410eb 0cb80000 0000eb05  E...............
 8048600 b8000000 00c9c355 89e583ec 288b450c  .......U....(.E.
 8048610 8845e483 7d080075 3283ec0c 6a0ce81d  .E..}..u2...j...
 8048620 fdffff83 c4108945 088b4508 c7000000  .......E..E.....
 8048630 00008b45 08c74004 00000000 8b45080f  ...E..@......E..
 8048640 b655e488 50088b45 08eb578b 45080fb6  .U..P..E..W.E...
 8048650 40088845 f70fb645 f73a45e4 7d240fbe  @..E...E.:E.}$..
 8048660 55e48b45 088b4004 83ec0852 50e895ff  U..E..@....RP...
 8048670 ffff83c4 1089c28b 45088950 048b4508  ........E..P..E.
 8048680 eb200fbe 55e48b45 088b0083 ec085250  . ..U..E......RP
 8048690 e872ffff ff83c410 89c28b45 0889108b  .r.........E....
 80486a0 4508c9c3 5589e583 ec08837d 0800743e  E...U......}..t>
 80486b0 8b45088b 0083ec0c 50e8e6ff ffff83c4  .E......P.......
 80486c0 108b4508 0fb64008 0fbec083 ec085068  ..E...@.......Ph
 80486d0 ac880408 e857fcff ff83c410 8b45088b  .....W.......E..
 80486e0 400483ec 0c50e8b9 ffffff83 c410c9c3  @....P..........
 80486f0 5589e583 ec18c745 f4000000 00c745f0  U......E......E.
 8048700 00000000 eb248b55 088b45f0 01d00fb6  .....$.U..E.....
 8048710 000fbec0 83ec0850 ff75f4e8 e7feffff  .......P.u......
 8048720 83c41089 45f48345 f0018b55 088b45f0  ....E..E...U..E.
 8048730 01d00fb6 0084c075 cd8b45f4 c9c38d4c  .......u..E....L
 8048740 240483e4 f0ff71fc 5589e553 5183ec10  $.....q.U..SQ...
 8048750 89cba10c 9c040883 ec0c50e8 90ffffff  ..........P.....
 8048760 83c41089 45f4833b 03743083 ec0c68b0  ....E..;.t0...h.
 8048770 880408e8 d8fbffff 83c4108b 43048b00  ............C...
 8048780 83ec0850 68e88804 08e8a2fb ffff83c4  ...Ph...........
 8048790 1083ec0c 6a01e8d5 fbffff8b 430483c0  ....j.......C...
 80487a0 048b108b 430483c0 088b0083 ec045250  ....C.........RP
 80487b0 ff75f4e8 d3fcffff 83c41089 45f0837d  .u..........E..}
 80487c0 f0007412 83ec0c68 00890408 e87ffbff  ..t....h........
 80487d0 ff83c410 eb1083ec 0c682989 0408e86d  .........h)....m
 80487e0 fbffff83 c410b800 0000008d 65f8595b  ............e.Y[
 80487f0 5d8d61fc c3669066 90669066 90669090  ].a..f.f.f.f.f..
 8048800 555731ff 5653e8b5 fbffff81 c3d51300  UW1.VS..........
 8048810 0083ec1c 8b6c2430 8db30cff ffffe8d1  .....l$0........
 8048820 faffff8d 8308ffff ff29c6c1 fe0285f6  .........)......
 8048830 74278db6 00000000 8b442438 892c2489  t'.......D$8.,$.
 8048840 4424088b 44243489 442404ff 94bb08ff  D$..D$4.D$......
 8048850 ffff83c7 0139f775 df83c41c 5b5e5f5d  .....9.u....[^_]
 8048860 c3eb0d90 90909090 90909090 90909090  ................
 8048870 f3c3                                 ..              
Contents of section .fini:
 8048874 5383ec08 e843fbff ff81c363 13000083  S....C.....c....
 8048884 c4085bc3                             ..[.            
Contents of section .rodata:
 8048888 03000000 01000200 79756f74 65617670  ........yuoteavp
 8048898 78716772 6c736468 77666a6b 7a695f63  xqgrlsdhwfjkzi_c
 80488a8 6d626e00 25632000 596f7520 68617665  mbn.%c .You have
 80488b8 20746865 2077726f 6e67206e 756d6265   the wrong numbe
 80488c8 72206f66 20617267 756d656e 74732066  r of arguments f
 80488d8 6f722074 68697320 666f7265 73742e00  or this forest..
 80488e8 2573205b 70617373 776f7264 5d205b73  %s [password] [s
 80488f8 7472696e 675d0a00 596f7520 64696420  tring]..You did 
 8048908 69742120 5375626d 69742074 68652069  it! Submit the i
 8048918 6e707574 20617320 74686520 666c6167  nput as the flag
 8048928 004e6f70 652e00                      .Nope..         
Contents of section .eh_frame_hdr:
 8048930 011b033b 50000000 09000000 f0f9ffff  ...;P...........
 8048940 6c000000 5bfbffff 90000000 09fcffff  l...[...........
 8048950 b0000000 d7fcffff d0000000 74fdffff  ............t...
 8048960 f0000000 c0fdffff 10010000 0efeffff  ................
 8048970 30010000 d0feffff 64010000 40ffffff  0.......d...@...
 8048980 a0010000                             ....            
Contents of section .eh_frame:
 8048984 14000000 00000000 017a5200 017c0801  .........zR..|..
 8048994 1b0c0404 88010000 20000000 1c000000  ........ .......
 80489a4 7cf9ffff 70000000 000e0846 0e0c4a0f  |...p......F..J.
 80489b4 0b740478 003f1a3b 2a322422 1c000000  .t.x.?.;*2$"....
 80489c4 40000000 c3faffff ae000000 00410e08  @............A..
 80489d4 8502420d 0502aac5 0c040400 1c000000  ..B.............
 80489e4 60000000 51fbffff ce000000 00410e08  `...Q........A..
 80489f4 8502420d 0502cac5 0c040400 1c000000  ..B.............
 8048a04 80000000 fffbffff 9d000000 00410e08  .............A..
 8048a14 8502420d 050299c5 0c040400 1c000000  ..B.............
 8048a24 a0000000 7cfcffff 4c000000 00410e08  ....|...L....A..
 8048a34 8502420d 050248c5 0c040400 1c000000  ..B...H.........
 8048a44 c0000000 a8fcffff 4e000000 00410e08  ........N....A..
 8048a54 8502420d 05024ac5 0c040400 30000000  ..B...J.....0...
 8048a64 e0000000 d6fcffff b7000000 00440c01  .............D..
 8048a74 00471005 02750044 0f037578 06100302  .G...u.D..ux....
 8048a84 757c02a2 c10c0100 41c341c5 430c0404  u|......A.A.C...
 8048a94 38000000 14010000 64fdffff 61000000  8.......d...a...
 8048aa4 00410e08 8502410e 0c870343 0e108604  .A....A....C....
 8048ab4 410e1483 054e0e30 02480e14 41c30e10  A....N.0.H..A...
 8048ac4 41c60e0c 41c70e08 41c50e04 10000000  A...A...A.......
 8048ad4 50010000 98fdffff 02000000 00000000  P...............
 8048ae4 00000000                             ....            
Contents of section .init_array:
 8049ae8 60840408                             `...            
Contents of section .fini_array:
 8049aec 40840408                             @...            
Contents of section .jcr:
 8049af0 00000000                             ....            
Contents of section .dynamic:
 8049af4 01000000 01000000 0c000000 f4820408  ................
 8049b04 0d000000 74880408 19000000 e89a0408  ....t...........
 8049b14 1b000000 04000000 1a000000 ec9a0408  ................
 8049b24 1c000000 04000000 f5feff6f 8c810408  ...........o....
 8049b34 05000000 2c820408 06000000 ac810408  ....,...........
 8049b44 0a000000 5d000000 0b000000 10000000  ....]...........
 8049b54 15000000 00000000 03000000 e09b0408  ................
 8049b64 02000000 30000000 14000000 11000000  ....0...........
 8049b74 17000000 c4820408 11000000 bc820408  ................
 8049b84 12000000 08000000 13000000 08000000  ................
 8049b94 feffff6f 9c820408 ffffff6f 01000000  ...o.......o....
 8049ba4 f0ffff6f 8a820408 00000000 00000000  ...o............
 8049bb4 00000000 00000000 00000000 00000000  ................
 8049bc4 00000000 00000000 00000000 00000000  ................
 8049bd4 00000000 00000000                    ........        
Contents of section .got:
 8049bdc 00000000                             ....            
Contents of section .got.plt:
 8049be0 f49a0408 00000000 00000000 36830408  ............6...
 8049bf0 46830408 56830408 66830408 76830408  F...V...f...v...
 8049c00 86830408                             ....            
Contents of section .data:
 8049c04 00000000 00000000 90880408           ............    
Contents of section .comment:
 0000 4743433a 20284465 6269616e 20342e39  GCC: (Debian 4.9
 0010 2e322d31 30292034 2e392e32 00474343  .2-10) 4.9.2.GCC
 0020 3a202844 65626961 6e20342e 382e342d  : (Debian 4.8.4-
 0030 31292034 2e382e34 00                 1) 4.8.4.       

Disassembly of section .init:

080482f4 <.init>:
 80482f4:	53                   	push   %ebx
 80482f5:	83 ec 08             	sub    $0x8,%esp
 80482f8:	e8 c3 00 00 00       	call   80483c0 <__libc_start_main@plt+0x40>
 80482fd:	81 c3 e3 18 00 00    	add    $0x18e3,%ebx
 8048303:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048309:	85 c0                	test   %eax,%eax
 804830b:	74 05                	je     8048312 <printf@plt-0x1e>
 804830d:	e8 4e 00 00 00       	call   8048360 <__gmon_start__@plt>
 8048312:	83 c4 08             	add    $0x8,%esp
 8048315:	5b                   	pop    %ebx
 8048316:	c3                   	ret    

Disassembly of section .plt:

08048320 <printf@plt-0x10>:
 8048320:	ff 35 e4 9b 04 08    	pushl  0x8049be4
 8048326:	ff 25 e8 9b 04 08    	jmp    *0x8049be8
 804832c:	00 00                	add    %al,(%eax)
	...

08048330 <printf@plt>:
 8048330:	ff 25 ec 9b 04 08    	jmp    *0x8049bec
 8048336:	68 00 00 00 00       	push   $0x0
 804833b:	e9 e0 ff ff ff       	jmp    8048320 <printf@plt-0x10>

08048340 <malloc@plt>:
 8048340:	ff 25 f0 9b 04 08    	jmp    *0x8049bf0
 8048346:	68 08 00 00 00       	push   $0x8
 804834b:	e9 d0 ff ff ff       	jmp    8048320 <printf@plt-0x10>

08048350 <puts@plt>:
 8048350:	ff 25 f4 9b 04 08    	jmp    *0x8049bf4
 8048356:	68 10 00 00 00       	push   $0x10
 804835b:	e9 c0 ff ff ff       	jmp    8048320 <printf@plt-0x10>

08048360 <__gmon_start__@plt>:
 8048360:	ff 25 f8 9b 04 08    	jmp    *0x8049bf8
 8048366:	68 18 00 00 00       	push   $0x18
 804836b:	e9 b0 ff ff ff       	jmp    8048320 <printf@plt-0x10>

08048370 <exit@plt>:
 8048370:	ff 25 fc 9b 04 08    	jmp    *0x8049bfc
 8048376:	68 20 00 00 00       	push   $0x20
 804837b:	e9 a0 ff ff ff       	jmp    8048320 <printf@plt-0x10>

08048380 <__libc_start_main@plt>:
 8048380:	ff 25 00 9c 04 08    	jmp    *0x8049c00
 8048386:	68 28 00 00 00       	push   $0x28
 804838b:	e9 90 ff ff ff       	jmp    8048320 <printf@plt-0x10>

Disassembly of section .text:

08048390 <.text>:
 8048390:	31 ed                	xor    %ebp,%ebp
 8048392:	5e                   	pop    %esi
 8048393:	89 e1                	mov    %esp,%ecx
 8048395:	83 e4 f0             	and    $0xfffffff0,%esp
 8048398:	50                   	push   %eax
 8048399:	54                   	push   %esp
 804839a:	52                   	push   %edx
 804839b:	68 70 88 04 08       	push   $0x8048870
 80483a0:	68 00 88 04 08       	push   $0x8048800
 80483a5:	51                   	push   %ecx
 80483a6:	56                   	push   %esi
 80483a7:	68 3e 87 04 08       	push   $0x804873e
 80483ac:	e8 cf ff ff ff       	call   8048380 <__libc_start_main@plt>
 80483b1:	f4                   	hlt    
 80483b2:	66 90                	xchg   %ax,%ax
 80483b4:	66 90                	xchg   %ax,%ax
 80483b6:	66 90                	xchg   %ax,%ax
 80483b8:	66 90                	xchg   %ax,%ax
 80483ba:	66 90                	xchg   %ax,%ax
 80483bc:	66 90                	xchg   %ax,%ax
 80483be:	66 90                	xchg   %ax,%ax
 80483c0:	8b 1c 24             	mov    (%esp),%ebx
 80483c3:	c3                   	ret    
 80483c4:	66 90                	xchg   %ax,%ax
 80483c6:	66 90                	xchg   %ax,%ax
 80483c8:	66 90                	xchg   %ax,%ax
 80483ca:	66 90                	xchg   %ax,%ax
 80483cc:	66 90                	xchg   %ax,%ax
 80483ce:	66 90                	xchg   %ax,%ax
 80483d0:	b8 13 9c 04 08       	mov    $0x8049c13,%eax
 80483d5:	2d 10 9c 04 08       	sub    $0x8049c10,%eax
 80483da:	83 f8 06             	cmp    $0x6,%eax
 80483dd:	76 1a                	jbe    80483f9 <__libc_start_main@plt+0x79>
 80483df:	b8 00 00 00 00       	mov    $0x0,%eax
 80483e4:	85 c0                	test   %eax,%eax
 80483e6:	74 11                	je     80483f9 <__libc_start_main@plt+0x79>
 80483e8:	55                   	push   %ebp
 80483e9:	89 e5                	mov    %esp,%ebp
 80483eb:	83 ec 14             	sub    $0x14,%esp
 80483ee:	68 10 9c 04 08       	push   $0x8049c10
 80483f3:	ff d0                	call   *%eax
 80483f5:	83 c4 10             	add    $0x10,%esp
 80483f8:	c9                   	leave  
 80483f9:	f3 c3                	repz ret 
 80483fb:	90                   	nop
 80483fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048400:	b8 10 9c 04 08       	mov    $0x8049c10,%eax
 8048405:	2d 10 9c 04 08       	sub    $0x8049c10,%eax
 804840a:	c1 f8 02             	sar    $0x2,%eax
 804840d:	89 c2                	mov    %eax,%edx
 804840f:	c1 ea 1f             	shr    $0x1f,%edx
 8048412:	01 d0                	add    %edx,%eax
 8048414:	d1 f8                	sar    %eax
 8048416:	74 1b                	je     8048433 <__libc_start_main@plt+0xb3>
 8048418:	ba 00 00 00 00       	mov    $0x0,%edx
 804841d:	85 d2                	test   %edx,%edx
 804841f:	74 12                	je     8048433 <__libc_start_main@plt+0xb3>
 8048421:	55                   	push   %ebp
 8048422:	89 e5                	mov    %esp,%ebp
 8048424:	83 ec 10             	sub    $0x10,%esp
 8048427:	50                   	push   %eax
 8048428:	68 10 9c 04 08       	push   $0x8049c10
 804842d:	ff d2                	call   *%edx
 804842f:	83 c4 10             	add    $0x10,%esp
 8048432:	c9                   	leave  
 8048433:	f3 c3                	repz ret 
 8048435:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048440:	80 3d 10 9c 04 08 00 	cmpb   $0x0,0x8049c10
 8048447:	75 13                	jne    804845c <__libc_start_main@plt+0xdc>
 8048449:	55                   	push   %ebp
 804844a:	89 e5                	mov    %esp,%ebp
 804844c:	83 ec 08             	sub    $0x8,%esp
 804844f:	e8 7c ff ff ff       	call   80483d0 <__libc_start_main@plt+0x50>
 8048454:	c6 05 10 9c 04 08 01 	movb   $0x1,0x8049c10
 804845b:	c9                   	leave  
 804845c:	f3 c3                	repz ret 
 804845e:	66 90                	xchg   %ax,%ax
 8048460:	b8 f0 9a 04 08       	mov    $0x8049af0,%eax
 8048465:	8b 10                	mov    (%eax),%edx
 8048467:	85 d2                	test   %edx,%edx
 8048469:	75 05                	jne    8048470 <__libc_start_main@plt+0xf0>
 804846b:	eb 93                	jmp    8048400 <__libc_start_main@plt+0x80>
 804846d:	8d 76 00             	lea    0x0(%esi),%esi
 8048470:	ba 00 00 00 00       	mov    $0x0,%edx
 8048475:	85 d2                	test   %edx,%edx
 8048477:	74 f2                	je     804846b <__libc_start_main@plt+0xeb>
 8048479:	55                   	push   %ebp
 804847a:	89 e5                	mov    %esp,%ebp
 804847c:	83 ec 14             	sub    $0x14,%esp
 804847f:	50                   	push   %eax
 8048480:	ff d2                	call   *%edx
 8048482:	83 c4 10             	add    $0x10,%esp
 8048485:	c9                   	leave  
 8048486:	e9 75 ff ff ff       	jmp    8048400 <__libc_start_main@plt+0x80>
 804848b:	55                   	push   %ebp
 804848c:	89 e5                	mov    %esp,%ebp
 804848e:	83 ec 18             	sub    $0x18,%esp
 8048491:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048495:	74 0c                	je     80484a3 <__libc_start_main@plt+0x123>
 8048497:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804849b:	74 06                	je     80484a3 <__libc_start_main@plt+0x123>
 804849d:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 80484a1:	75 0a                	jne    80484ad <__libc_start_main@plt+0x12d>
 80484a3:	b8 00 00 00 00       	mov    $0x0,%eax
 80484a8:	e9 8a 00 00 00       	jmp    8048537 <__libc_start_main@plt+0x1b7>
 80484ad:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 80484b4:	8b 45 0c             	mov    0xc(%ebp),%eax
 80484b7:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80484ba:	8b 45 10             	mov    0x10(%ebp),%eax
 80484bd:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80484c0:	eb 40                	jmp    8048502 <__libc_start_main@plt+0x182>
 80484c2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80484c5:	0f b6 00             	movzbl (%eax),%eax
 80484c8:	0f be c0             	movsbl %al,%eax
 80484cb:	83 ec 04             	sub    $0x4,%esp
 80484ce:	50                   	push   %eax
 80484cf:	ff 75 f0             	pushl  -0x10(%ebp)
 80484d2:	ff 75 08             	pushl  0x8(%ebp)
 80484d5:	e8 5f 00 00 00       	call   8048539 <__libc_start_main@plt+0x1b9>
 80484da:	83 c4 10             	add    $0x10,%esp
 80484dd:	21 45 f4             	and    %eax,-0xc(%ebp)
 80484e0:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 80484e4:	eb 04                	jmp    80484ea <__libc_start_main@plt+0x16a>
 80484e6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80484ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80484ed:	0f b6 00             	movzbl (%eax),%eax
 80484f0:	3c 4c                	cmp    $0x4c,%al
 80484f2:	74 f2                	je     80484e6 <__libc_start_main@plt+0x166>
 80484f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80484f7:	0f b6 00             	movzbl (%eax),%eax
 80484fa:	3c 52                	cmp    $0x52,%al
 80484fc:	74 e8                	je     80484e6 <__libc_start_main@plt+0x166>
 80484fe:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8048502:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048505:	0f b6 00             	movzbl (%eax),%eax
 8048508:	84 c0                	test   %al,%al
 804850a:	74 0a                	je     8048516 <__libc_start_main@plt+0x196>
 804850c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804850f:	0f b6 00             	movzbl (%eax),%eax
 8048512:	84 c0                	test   %al,%al
 8048514:	75 ac                	jne    80484c2 <__libc_start_main@plt+0x142>
 8048516:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048519:	0f b6 00             	movzbl (%eax),%eax
 804851c:	84 c0                	test   %al,%al
 804851e:	0f 94 c2             	sete   %dl
 8048521:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048524:	0f b6 00             	movzbl (%eax),%eax
 8048527:	84 c0                	test   %al,%al
 8048529:	0f 94 c0             	sete   %al
 804852c:	21 d0                	and    %edx,%eax
 804852e:	0f b6 c0             	movzbl %al,%eax
 8048531:	21 45 f4             	and    %eax,-0xc(%ebp)
 8048534:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048537:	c9                   	leave  
 8048538:	c3                   	ret    
 8048539:	55                   	push   %ebp
 804853a:	89 e5                	mov    %esp,%ebp
 804853c:	83 ec 18             	sub    $0x18,%esp
 804853f:	8b 45 10             	mov    0x10(%ebp),%eax
 8048542:	88 45 f4             	mov    %al,-0xc(%ebp)
 8048545:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048549:	74 0a                	je     8048555 <__libc_start_main@plt+0x1d5>
 804854b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804854e:	0f b6 00             	movzbl (%eax),%eax
 8048551:	84 c0                	test   %al,%al
 8048553:	75 0a                	jne    804855f <__libc_start_main@plt+0x1df>
 8048555:	b8 00 00 00 00       	mov    $0x0,%eax
 804855a:	e9 a6 00 00 00       	jmp    8048605 <__libc_start_main@plt+0x285>
 804855f:	8b 45 08             	mov    0x8(%ebp),%eax
 8048562:	0f b6 40 08          	movzbl 0x8(%eax),%eax
 8048566:	3a 45 f4             	cmp    -0xc(%ebp),%al
 8048569:	75 28                	jne    8048593 <__libc_start_main@plt+0x213>
 804856b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804856e:	0f b6 00             	movzbl (%eax),%eax
 8048571:	3c 44                	cmp    $0x44,%al
 8048573:	0f 85 87 00 00 00    	jne    8048600 <__libc_start_main@plt+0x280>
 8048579:	8b 45 08             	mov    0x8(%ebp),%eax
 804857c:	0f b6 40 08          	movzbl 0x8(%eax),%eax
 8048580:	3a 45 f4             	cmp    -0xc(%ebp),%al
 8048583:	75 07                	jne    804858c <__libc_start_main@plt+0x20c>
 8048585:	b8 01 00 00 00       	mov    $0x1,%eax
 804858a:	eb 79                	jmp    8048605 <__libc_start_main@plt+0x285>
 804858c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048591:	eb 72                	jmp    8048605 <__libc_start_main@plt+0x285>
 8048593:	8b 45 08             	mov    0x8(%ebp),%eax
 8048596:	0f b6 40 08          	movzbl 0x8(%eax),%eax
 804859a:	3a 45 f4             	cmp    -0xc(%ebp),%al
 804859d:	7e 30                	jle    80485cf <__libc_start_main@plt+0x24f>
 804859f:	8b 45 0c             	mov    0xc(%ebp),%eax
 80485a2:	0f b6 00             	movzbl (%eax),%eax
 80485a5:	3c 4c                	cmp    $0x4c,%al
 80485a7:	75 1f                	jne    80485c8 <__libc_start_main@plt+0x248>
 80485a9:	0f be 55 f4          	movsbl -0xc(%ebp),%edx
 80485ad:	8b 45 0c             	mov    0xc(%ebp),%eax
 80485b0:	8d 48 01             	lea    0x1(%eax),%ecx
 80485b3:	8b 45 08             	mov    0x8(%ebp),%eax
 80485b6:	8b 00                	mov    (%eax),%eax
 80485b8:	83 ec 04             	sub    $0x4,%esp
 80485bb:	52                   	push   %edx
 80485bc:	51                   	push   %ecx
 80485bd:	50                   	push   %eax
 80485be:	e8 76 ff ff ff       	call   8048539 <__libc_start_main@plt+0x1b9>
 80485c3:	83 c4 10             	add    $0x10,%esp
 80485c6:	eb 3d                	jmp    8048605 <__libc_start_main@plt+0x285>
 80485c8:	b8 00 00 00 00       	mov    $0x0,%eax
 80485cd:	eb 36                	jmp    8048605 <__libc_start_main@plt+0x285>
 80485cf:	8b 45 0c             	mov    0xc(%ebp),%eax
 80485d2:	0f b6 00             	movzbl (%eax),%eax
 80485d5:	3c 52                	cmp    $0x52,%al
 80485d7:	75 20                	jne    80485f9 <__libc_start_main@plt+0x279>
 80485d9:	0f be 55 f4          	movsbl -0xc(%ebp),%edx
 80485dd:	8b 45 0c             	mov    0xc(%ebp),%eax
 80485e0:	8d 48 01             	lea    0x1(%eax),%ecx
 80485e3:	8b 45 08             	mov    0x8(%ebp),%eax
 80485e6:	8b 40 04             	mov    0x4(%eax),%eax
 80485e9:	83 ec 04             	sub    $0x4,%esp
 80485ec:	52                   	push   %edx
 80485ed:	51                   	push   %ecx
 80485ee:	50                   	push   %eax
 80485ef:	e8 45 ff ff ff       	call   8048539 <__libc_start_main@plt+0x1b9>
 80485f4:	83 c4 10             	add    $0x10,%esp
 80485f7:	eb 0c                	jmp    8048605 <__libc_start_main@plt+0x285>
 80485f9:	b8 00 00 00 00       	mov    $0x0,%eax
 80485fe:	eb 05                	jmp    8048605 <__libc_start_main@plt+0x285>
 8048600:	b8 00 00 00 00       	mov    $0x0,%eax
 8048605:	c9                   	leave  
 8048606:	c3                   	ret    
 8048607:	55                   	push   %ebp
 8048608:	89 e5                	mov    %esp,%ebp
 804860a:	83 ec 28             	sub    $0x28,%esp
 804860d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048610:	88 45 e4             	mov    %al,-0x1c(%ebp)
 8048613:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048617:	75 32                	jne    804864b <__libc_start_main@plt+0x2cb>
 8048619:	83 ec 0c             	sub    $0xc,%esp
 804861c:	6a 0c                	push   $0xc
 804861e:	e8 1d fd ff ff       	call   8048340 <malloc@plt>
 8048623:	83 c4 10             	add    $0x10,%esp
 8048626:	89 45 08             	mov    %eax,0x8(%ebp)
 8048629:	8b 45 08             	mov    0x8(%ebp),%eax
 804862c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8048632:	8b 45 08             	mov    0x8(%ebp),%eax
 8048635:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804863c:	8b 45 08             	mov    0x8(%ebp),%eax
 804863f:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
 8048643:	88 50 08             	mov    %dl,0x8(%eax)
 8048646:	8b 45 08             	mov    0x8(%ebp),%eax
 8048649:	eb 57                	jmp    80486a2 <__libc_start_main@plt+0x322>
 804864b:	8b 45 08             	mov    0x8(%ebp),%eax
 804864e:	0f b6 40 08          	movzbl 0x8(%eax),%eax
 8048652:	88 45 f7             	mov    %al,-0x9(%ebp)
 8048655:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8048659:	3a 45 e4             	cmp    -0x1c(%ebp),%al
 804865c:	7d 24                	jge    8048682 <__libc_start_main@plt+0x302>
 804865e:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
 8048662:	8b 45 08             	mov    0x8(%ebp),%eax
 8048665:	8b 40 04             	mov    0x4(%eax),%eax
 8048668:	83 ec 08             	sub    $0x8,%esp
 804866b:	52                   	push   %edx
 804866c:	50                   	push   %eax
 804866d:	e8 95 ff ff ff       	call   8048607 <__libc_start_main@plt+0x287>
 8048672:	83 c4 10             	add    $0x10,%esp
 8048675:	89 c2                	mov    %eax,%edx
 8048677:	8b 45 08             	mov    0x8(%ebp),%eax
 804867a:	89 50 04             	mov    %edx,0x4(%eax)
 804867d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048680:	eb 20                	jmp    80486a2 <__libc_start_main@plt+0x322>
 8048682:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
 8048686:	8b 45 08             	mov    0x8(%ebp),%eax
 8048689:	8b 00                	mov    (%eax),%eax
 804868b:	83 ec 08             	sub    $0x8,%esp
 804868e:	52                   	push   %edx
 804868f:	50                   	push   %eax
 8048690:	e8 72 ff ff ff       	call   8048607 <__libc_start_main@plt+0x287>
 8048695:	83 c4 10             	add    $0x10,%esp
 8048698:	89 c2                	mov    %eax,%edx
 804869a:	8b 45 08             	mov    0x8(%ebp),%eax
 804869d:	89 10                	mov    %edx,(%eax)
 804869f:	8b 45 08             	mov    0x8(%ebp),%eax
 80486a2:	c9                   	leave  
 80486a3:	c3                   	ret    
 80486a4:	55                   	push   %ebp
 80486a5:	89 e5                	mov    %esp,%ebp
 80486a7:	83 ec 08             	sub    $0x8,%esp
 80486aa:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80486ae:	74 3e                	je     80486ee <__libc_start_main@plt+0x36e>
 80486b0:	8b 45 08             	mov    0x8(%ebp),%eax
 80486b3:	8b 00                	mov    (%eax),%eax
 80486b5:	83 ec 0c             	sub    $0xc,%esp
 80486b8:	50                   	push   %eax
 80486b9:	e8 e6 ff ff ff       	call   80486a4 <__libc_start_main@plt+0x324>
 80486be:	83 c4 10             	add    $0x10,%esp
 80486c1:	8b 45 08             	mov    0x8(%ebp),%eax
 80486c4:	0f b6 40 08          	movzbl 0x8(%eax),%eax
 80486c8:	0f be c0             	movsbl %al,%eax
 80486cb:	83 ec 08             	sub    $0x8,%esp
 80486ce:	50                   	push   %eax
 80486cf:	68 ac 88 04 08       	push   $0x80488ac
 80486d4:	e8 57 fc ff ff       	call   8048330 <printf@plt>
 80486d9:	83 c4 10             	add    $0x10,%esp
 80486dc:	8b 45 08             	mov    0x8(%ebp),%eax
 80486df:	8b 40 04             	mov    0x4(%eax),%eax
 80486e2:	83 ec 0c             	sub    $0xc,%esp
 80486e5:	50                   	push   %eax
 80486e6:	e8 b9 ff ff ff       	call   80486a4 <__libc_start_main@plt+0x324>
 80486eb:	83 c4 10             	add    $0x10,%esp
 80486ee:	c9                   	leave  
 80486ef:	c3                   	ret    
 80486f0:	55                   	push   %ebp
 80486f1:	89 e5                	mov    %esp,%ebp
 80486f3:	83 ec 18             	sub    $0x18,%esp
 80486f6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80486fd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048704:	eb 24                	jmp    804872a <__libc_start_main@plt+0x3aa>
 8048706:	8b 55 08             	mov    0x8(%ebp),%edx
 8048709:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804870c:	01 d0                	add    %edx,%eax
 804870e:	0f b6 00             	movzbl (%eax),%eax
 8048711:	0f be c0             	movsbl %al,%eax
 8048714:	83 ec 08             	sub    $0x8,%esp
 8048717:	50                   	push   %eax
 8048718:	ff 75 f4             	pushl  -0xc(%ebp)
 804871b:	e8 e7 fe ff ff       	call   8048607 <__libc_start_main@plt+0x287>
 8048720:	83 c4 10             	add    $0x10,%esp
 8048723:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048726:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804872a:	8b 55 08             	mov    0x8(%ebp),%edx
 804872d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048730:	01 d0                	add    %edx,%eax
 8048732:	0f b6 00             	movzbl (%eax),%eax
 8048735:	84 c0                	test   %al,%al
 8048737:	75 cd                	jne    8048706 <__libc_start_main@plt+0x386>
 8048739:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804873c:	c9                   	leave  
 804873d:	c3                   	ret    
 804873e:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048742:	83 e4 f0             	and    $0xfffffff0,%esp
 8048745:	ff 71 fc             	pushl  -0x4(%ecx)
 8048748:	55                   	push   %ebp
 8048749:	89 e5                	mov    %esp,%ebp
 804874b:	53                   	push   %ebx
 804874c:	51                   	push   %ecx
 804874d:	83 ec 10             	sub    $0x10,%esp
 8048750:	89 cb                	mov    %ecx,%ebx
 8048752:	a1 0c 9c 04 08       	mov    0x8049c0c,%eax
 8048757:	83 ec 0c             	sub    $0xc,%esp
 804875a:	50                   	push   %eax
 804875b:	e8 90 ff ff ff       	call   80486f0 <__libc_start_main@plt+0x370>
 8048760:	83 c4 10             	add    $0x10,%esp
 8048763:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048766:	83 3b 03             	cmpl   $0x3,(%ebx)
 8048769:	74 30                	je     804879b <__libc_start_main@plt+0x41b>
 804876b:	83 ec 0c             	sub    $0xc,%esp
 804876e:	68 b0 88 04 08       	push   $0x80488b0
 8048773:	e8 d8 fb ff ff       	call   8048350 <puts@plt>
 8048778:	83 c4 10             	add    $0x10,%esp
 804877b:	8b 43 04             	mov    0x4(%ebx),%eax
 804877e:	8b 00                	mov    (%eax),%eax
 8048780:	83 ec 08             	sub    $0x8,%esp
 8048783:	50                   	push   %eax
 8048784:	68 e8 88 04 08       	push   $0x80488e8
 8048789:	e8 a2 fb ff ff       	call   8048330 <printf@plt>
 804878e:	83 c4 10             	add    $0x10,%esp
 8048791:	83 ec 0c             	sub    $0xc,%esp
 8048794:	6a 01                	push   $0x1
 8048796:	e8 d5 fb ff ff       	call   8048370 <exit@plt>
 804879b:	8b 43 04             	mov    0x4(%ebx),%eax
 804879e:	83 c0 04             	add    $0x4,%eax
 80487a1:	8b 10                	mov    (%eax),%edx
 80487a3:	8b 43 04             	mov    0x4(%ebx),%eax
 80487a6:	83 c0 08             	add    $0x8,%eax
 80487a9:	8b 00                	mov    (%eax),%eax
 80487ab:	83 ec 04             	sub    $0x4,%esp
 80487ae:	52                   	push   %edx
 80487af:	50                   	push   %eax
 80487b0:	ff 75 f4             	pushl  -0xc(%ebp)
 80487b3:	e8 d3 fc ff ff       	call   804848b <__libc_start_main@plt+0x10b>
 80487b8:	83 c4 10             	add    $0x10,%esp
 80487bb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80487be:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80487c2:	74 12                	je     80487d6 <__libc_start_main@plt+0x456>
 80487c4:	83 ec 0c             	sub    $0xc,%esp
 80487c7:	68 00 89 04 08       	push   $0x8048900
 80487cc:	e8 7f fb ff ff       	call   8048350 <puts@plt>
 80487d1:	83 c4 10             	add    $0x10,%esp
 80487d4:	eb 10                	jmp    80487e6 <__libc_start_main@plt+0x466>
 80487d6:	83 ec 0c             	sub    $0xc,%esp
 80487d9:	68 29 89 04 08       	push   $0x8048929
 80487de:	e8 6d fb ff ff       	call   8048350 <puts@plt>
 80487e3:	83 c4 10             	add    $0x10,%esp
 80487e6:	b8 00 00 00 00       	mov    $0x0,%eax
 80487eb:	8d 65 f8             	lea    -0x8(%ebp),%esp
 80487ee:	59                   	pop    %ecx
 80487ef:	5b                   	pop    %ebx
 80487f0:	5d                   	pop    %ebp
 80487f1:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80487f4:	c3                   	ret    
 80487f5:	66 90                	xchg   %ax,%ax
 80487f7:	66 90                	xchg   %ax,%ax
 80487f9:	66 90                	xchg   %ax,%ax
 80487fb:	66 90                	xchg   %ax,%ax
 80487fd:	66 90                	xchg   %ax,%ax
 80487ff:	90                   	nop
 8048800:	55                   	push   %ebp
 8048801:	57                   	push   %edi
 8048802:	31 ff                	xor    %edi,%edi
 8048804:	56                   	push   %esi
 8048805:	53                   	push   %ebx
 8048806:	e8 b5 fb ff ff       	call   80483c0 <__libc_start_main@plt+0x40>
 804880b:	81 c3 d5 13 00 00    	add    $0x13d5,%ebx
 8048811:	83 ec 1c             	sub    $0x1c,%esp
 8048814:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048818:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804881e:	e8 d1 fa ff ff       	call   80482f4 <printf@plt-0x3c>
 8048823:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048829:	29 c6                	sub    %eax,%esi
 804882b:	c1 fe 02             	sar    $0x2,%esi
 804882e:	85 f6                	test   %esi,%esi
 8048830:	74 27                	je     8048859 <__libc_start_main@plt+0x4d9>
 8048832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048838:	8b 44 24 38          	mov    0x38(%esp),%eax
 804883c:	89 2c 24             	mov    %ebp,(%esp)
 804883f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048843:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048847:	89 44 24 04          	mov    %eax,0x4(%esp)
 804884b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8048852:	83 c7 01             	add    $0x1,%edi
 8048855:	39 f7                	cmp    %esi,%edi
 8048857:	75 df                	jne    8048838 <__libc_start_main@plt+0x4b8>
 8048859:	83 c4 1c             	add    $0x1c,%esp
 804885c:	5b                   	pop    %ebx
 804885d:	5e                   	pop    %esi
 804885e:	5f                   	pop    %edi
 804885f:	5d                   	pop    %ebp
 8048860:	c3                   	ret    
 8048861:	eb 0d                	jmp    8048870 <__libc_start_main@plt+0x4f0>
 8048863:	90                   	nop
 8048864:	90                   	nop
 8048865:	90                   	nop
 8048866:	90                   	nop
 8048867:	90                   	nop
 8048868:	90                   	nop
 8048869:	90                   	nop
 804886a:	90                   	nop
 804886b:	90                   	nop
 804886c:	90                   	nop
 804886d:	90                   	nop
 804886e:	90                   	nop
 804886f:	90                   	nop
 8048870:	f3 c3                	repz ret 

Disassembly of section .fini:

08048874 <.fini>:
 8048874:	53                   	push   %ebx
 8048875:	83 ec 08             	sub    $0x8,%esp
 8048878:	e8 43 fb ff ff       	call   80483c0 <__libc_start_main@plt+0x40>
 804887d:	81 c3 63 13 00 00    	add    $0x1363,%ebx
 8048883:	83 c4 08             	add    $0x8,%esp
 8048886:	5b                   	pop    %ebx
 8048887:	c3                   	ret    
