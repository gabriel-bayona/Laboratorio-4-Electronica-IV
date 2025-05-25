
build/bin/Reloj.elf:     file format elf32-littlearm
build/bin/Reloj.elf
architecture: armv7e-m, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x1a000791

Program Header:
    LOAD off    0x00000050 vaddr 0x10000050 paddr 0x10000050 align 2**12
         filesz 0x00000000 memsz 0x0000016c flags rw-
    LOAD off    0x00001000 vaddr 0x1a000000 paddr 0x1a000000 align 2**12
         filesz 0x00000b18 memsz 0x00000b18 flags r-x
    LOAD off    0x00002000 vaddr 0x10000000 paddr 0x1a000b18 align 2**12
         filesz 0x00000050 memsz 0x00000050 flags rw-
private flags = 0x5000200: [Version5 EABI] [soft-float ABI]

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00000248  1a000000  1a000000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .init         00000004  1a000248  1a000248  00001248  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .fini         00000004  1a00024c  1a00024c  0000124c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  3 .data         00000050  10000000  1a000b18  00002000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  4 .data_RAM2    00000000  10080000  10080000  00002050  2**2
                  CONTENTS
  5 .data_RAM3    00000000  20000000  20000000  00002050  2**2
                  CONTENTS
  6 .data_RAM4    00000000  20008000  20008000  00002050  2**2
                  CONTENTS
  7 .data_RAM5    00000000  2000c000  2000c000  00002050  2**2
                  CONTENTS
  8 .bss          0000016c  10000050  10000050  00001050  2**2
                  ALLOC
  9 .text         000008c8  1a000250  1a000250  00001250  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .uninit_RESERVED 00000000  10000000  10000000  00002050  2**2
                  CONTENTS
 11 .noinit_RAM2  00000000  10080000  10080000  00002050  2**2
                  CONTENTS
 12 .noinit_RAM3  00000000  20000000  20000000  00002050  2**2
                  CONTENTS
 13 .noinit_RAM4  00000000  20008000  20008000  00002050  2**2
                  CONTENTS
 14 .noinit_RAM5  00000000  2000c000  2000c000  00002050  2**2
                  CONTENTS
 15 .noinit       00000000  100001bc  100001bc  00000000  2**2
                  ALLOC
 16 .ARM.attributes 0000002e  00000000  00000000  00002050  2**0
                  CONTENTS, READONLY
 17 .comment      00000012  00000000  00000000  0000207e  2**0
                  CONTENTS, READONLY
 18 .debug_info   000059e2  00000000  00000000  00002090  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 19 .debug_abbrev 00001867  00000000  00000000  00007a72  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 20 .debug_aranges 00000270  00000000  00000000  000092d9  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 21 .debug_rnglists 000001c1  00000000  00000000  00009549  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 22 .debug_macro  000063db  00000000  00000000  0000970a  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 23 .debug_line   00003268  00000000  00000000  0000fae5  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 24 .debug_str    0001acf0  00000000  00000000  00012d4d  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 25 .debug_frame  000007bc  00000000  00000000  0002da40  2**2
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 26 .debug_loclists 00000824  00000000  00000000  0002e1fc  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
SYMBOL TABLE:
1a000000 l    d  .text	00000000 .text
1a000248 l    d  .init	00000000 .init
1a00024c l    d  .fini	00000000 .fini
10000000 l    d  .data	00000000 .data
10080000 l    d  .data_RAM2	00000000 .data_RAM2
20000000 l    d  .data_RAM3	00000000 .data_RAM3
20008000 l    d  .data_RAM4	00000000 .data_RAM4
2000c000 l    d  .data_RAM5	00000000 .data_RAM5
10000050 l    d  .bss	00000000 .bss
1a000250 l    d  .text	00000000 .text
10000000 l    d  .uninit_RESERVED	00000000 .uninit_RESERVED
10080000 l    d  .noinit_RAM2	00000000 .noinit_RAM2
20000000 l    d  .noinit_RAM3	00000000 .noinit_RAM3
20008000 l    d  .noinit_RAM4	00000000 .noinit_RAM4
2000c000 l    d  .noinit_RAM5	00000000 .noinit_RAM5
100001bc l    d  .noinit	00000000 .noinit
00000000 l    d  .ARM.attributes	00000000 .ARM.attributes
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_rnglists	00000000 .debug_rnglists
00000000 l    d  .debug_macro	00000000 .debug_macro
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    d  .debug_loclists	00000000 .debug_loclists
00000000 l    df *ABS*	00000000 cr_startup_lpc43xx.c
00000000 l    df *ABS*	00000000 crti.o
00000000 l    df *ABS*	00000000 impure.c
00000000 l    df *ABS*	00000000 bsp.c
1a000250 l     F .text	00000034 Chip_SCU_PinMuxSet
00000000 l    df *ABS*	00000000 digital.c
1a000370 l     F .text	00000038 Chip_GPIO_SetPinState
1a0003a8 l     F .text	00000034 Chip_GPIO_ReadPortBit
1a0003dc l     F .text	0000003e Chip_GPIO_SetPinDIROutput
1a00041a l     F .text	00000040 Chip_GPIO_SetPinDIRInput
1a00045a l     F .text	00000042 Chip_GPIO_SetPinDIR
1a00049c l     F .text	00000032 Chip_GPIO_SetPinToggle
00000000 l    df *ABS*	00000000 main.c
00000000 l    df *ABS*	00000000 malloc.c
00000000 l    df *ABS*	00000000 mallocr.c
1a000894 l     F .text	00000048 sbrk_aligned
00000000 l    df *ABS*	00000000 mlock.c
00000000 l    df *ABS*	00000000 sbrkr.c
00000000 l    df *ABS*	00000000 lock.c
00000000 l    df *ABS*	00000000 freer.c
00000000 l    df *ABS*	00000000 sbrk.c
100001b8 l     O .bss	00000004 heap_end.0
00000000 l    df *ABS*	00000000 findfp.c
00000000 l    df *ABS*	00000000 reent.c
1a000240  w    F .text	00000008 TIMER2_IRQHandler
1a000228  w    F .text	00000008 DebugMon_Handler
1a000240  w    F .text	00000008 RIT_IRQHandler
1a080000 g       *ABS*	00000000 __top_MFlashA512
1a000114 g       .text	00000000 __section_table_start
1a000240  w    F .text	00000008 FLASH_EEPROM_IRQHandler
1a000240  w    F .text	00000008 I2C0_IRQHandler
100001b0 g     O .bss	00000001 __lock___atexit_recursive_mutex
1a000200  w    F .text	00000008 HardFault_Handler
2000c000 g       *ABS*	00000000 __base_RamAHB_ETB16
1a000000 g       *ABS*	00000000 __vectors_start__
1a0009e8 g     F .text	0000000c __malloc_unlock
1a0004d0 g     F .text	0000005c DigitalOutputCreate
1a000238  w    F .text	00000008 SysTick_Handler
2000c000 g       *ABS*	00000000 __top_RAM4
10000198 g     O .bss	00000001 __lock___arc4random_mutex
1a000240  w    F .text	00000008 SDIO_IRQHandler
20000000 g       *ABS*	00000000 __base_RamAHB32
1a000240  w    F .text	00000008 ATIMER_IRQHandler
10080000 g       *ABS*	00000000 __base_RAM2
1a000230  w    F .text	00000008 PendSV_Handler
1a0001f8  w    F .text	00000008 NMI_Handler
1a000b18 g       .text	00000000 __exidx_end
1a000150 g       .text	00000000 __data_section_table_end
1a000240  w    F .text	00000008 I2C1_IRQHandler
1a000240  w    F .text	00000008 UART1_IRQHandler
1a000240  w    F .text	00000008 GPIO5_IRQHandler
1a000a20 g     F .text	00000002 __retarget_lock_close
1a000240  w    F .text	00000008 CAN1_IRQHandler
10000190 g     O .bss	00000004 __stdio_exit_handler
53ff6e42 g       *ABS*	00000000 __valid_user_code_checksum
10000194 g     O .bss	00000004 errno
1a000b18 g       .text	00000000 _etext
1a000240  w    F .text	00000008 USB1_IRQHandler
1a000240  w    F .text	00000008 I2S0_IRQHandler
1a0005f8 g     F .text	00000050 DigitalInputGetIsActive
1a000240  w    F .text	00000008 TIMER3_IRQHandler
1a000240  w    F .text	00000008 UART0_IRQHandler
1a0001be g     F .text	0000003a bss_init
1a000240  w    F .text	00000008 SGPIO_IRQHandler
100001bc g       .noinit	00000000 _noinit
2000c000 g       *ABS*	00000000 __base_RAM5
1a000550 g     F .text	00000024 DigitalOutputDeactivate
1a000240  w    F .text	00000008 ADC0_IRQHandler
1a000874 g     F .text	00000010 malloc
1a000218  w    F .text	00000008 UsageFault_Handler
10008000 g       *ABS*	00000000 __top_RAM
1a00052c g     F .text	00000024 DigitalOutputActivate
1a000240  w    F .text	00000008 GPIO6_IRQHandler
20008000 g       *ABS*	00000000 __top_RamAHB32
1a0009f4 g     F .text	00000024 _sbrk_r
1a000240  w    F .text	00000008 IntDefaultHandler
1008a000 g       *ABS*	00000000 __top_RAM2
1a000240  w    F .text	00000008 GPIO1_IRQHandler
1a000240  w    F .text	00000008 SSP0_IRQHandler
1a000b18 g       .text	00000000 __exidx_start
100001a4 g     O .bss	00000001 __lock___env_recursive_mutex
1a000240  w    F .text	00000008 ADC1_IRQHandler
1a000afc g     F .text	0000001c _sbrk
1a000248 g     F .init	00000000 _init
1a000114 g       .text	00000000 __data_section_table
10000000 g       *ABS*	00000000 __base_RamLoc32
1a000240  w    F .text	00000008 RTC_IRQHandler
100001bc g       .bss	00000000 _ebss
1a000240  w    F .text	00000008 TIMER0_IRQHandler
20010000 g       *ABS*	00000000 __top_RamAHB_ETB16
1a000240  w    F .text	00000008 SPI_IRQHandler
1a000240  w    F .text	00000008 LCD_IRQHandler
20000000 g       *ABS*	00000000 __base_RAM3
100001a8 g     O .bss	00000001 __lock___malloc_recursive_mutex
10000058 g     O .bss	00000138 __sf
20010000 g       *ABS*	00000000 __top_RAM5
10008000 g       *ABS*	00000000 __top_RamLoc32
1a000648 g     F .text	0000005a DigitalInputWasChanged
1a000240  w    F .text	00000008 VADC_IRQHandler
1a000178 g     F .text	00000046 data_init
1a000240  w    F .text	00000008 TIMER1_IRQHandler
100001bc g       .bss	00000000 end
1a000a3c g     F .text	00000002 __retarget_lock_release_recursive
1a000240  w    F .text	00000008 UART2_IRQHandler
1a000a34 g     F .text	00000004 __retarget_lock_try_acquire_recursive
1a000000 g       *ABS*	00000000 __base_Flash
1a000240  w    F .text	00000008 GPIO2_IRQHandler
1a000a40 g     F .text	000000bc _free_r
1b080000 g       *ABS*	00000000 __top_Flash2
10000050 g       .bss	00000000 _bss
1a000a30 g     F .text	00000004 __retarget_lock_try_acquire
1a000240  w    F .text	00000008 I2S1_IRQHandler
1a080000 g       *ABS*	00000000 __top_Flash
100001bc g       .noinit	00000000 _end_noinit
10008000 g       *ABS*	00000000 _vStackTop
1a000240  w    F .text	00000008 SSP1_IRQHandler
1a000178 g       .text	00000000 __bss_section_table_end
1a000000 g       *ABS*	00000000 __base_MFlashA512
1b000000 g       *ABS*	00000000 __base_Flash2
1a000a24 g     F .text	00000002 __retarget_lock_close_recursive
1a000240  w    F .text	00000008 USB0_IRQHandler
1a000574 g     F .text	00000024 DigitalOutputToggle
20008000 g       *ABS*	00000000 __base_RamAHB16
1a000240  w    F .text	00000008 GPIO3_IRQHandler
1a0009dc g     F .text	0000000c __malloc_lock
1a000240  w    F .text	00000008 SCT_IRQHandler
1a0006a2 g     F .text	00000022 DigitalInputWasActivated
1a000a2c g     F .text	00000002 __retarget_lock_acquire_recursive
1a000208  w    F .text	00000008 MemManage_Handler
1a0006c4 g     F .text	000000ca main
1a000598 g     F .text	00000060 DigitalInputCreate
1a000a1c g     F .text	00000002 __retarget_lock_init_recursive
1a000240  w    F .text	00000008 WDT_IRQHandler
2000c000 g       *ABS*	00000000 __top_RamAHB16
1008a000 g       *ABS*	00000000 __top_RamLoc40
1a000220  w    F .text	00000008 SVC_Handler
1a0008dc g     F .text	00000100 _malloc_r
20008000 g       *ABS*	00000000 __base_RAM4
1a000240  w    F .text	00000008 GPIO7_IRQHandler
1a000a18 g     F .text	00000002 __retarget_lock_init
1a000240  w    F .text	00000008 SPIFI_IRQHandler
1a000240  w    F .text	00000008 QEI_IRQHandler
1a000150 g       .text	00000000 __bss_section_table
1a00024c g     F .fini	00000000 _fini
10080000 g       *ABS*	00000000 __base_RamLoc40
1a000240  w    F .text	00000008 ETH_IRQHandler
1a000240  w    F .text	00000008 M0CORE_IRQHandler
10000000 g     O .data	00000004 _impure_ptr
10000000 g       .uninit_RESERVED	00000000 _end_uninit_RESERVED
1a000240  w    F .text	00000008 CAN0_IRQHandler
10000000 g       .data	00000000 _data
1a000178 g       .text	00000000 __section_table_end
1a000240  w    F .text	00000008 GINT0_IRQHandler
1b000000 g       *ABS*	00000000 __base_MFlashB512
1a000240  w    F .text	00000008 DAC_IRQHandler
10000050 g       .data	00000000 _edata
1a000284 g     F .text	000000ec BoardCreate
1a000240  w    F .text	00000008 M0SUB_IRQHandler
100001ac g     O .bss	00000001 __lock___at_quick_exit_mutex
1a000240  w    F .text	00000008 GPIO0_IRQHandler
10000000 g       *ABS*	00000000 __base_RAM
1a000000 g     O .text	00000114 g_pfnVectors
1a000790 g     F .text	000000e0 ResetISR
10000004 g     O .data	0000004c _impure_data
1a000240  w    F .text	00000008 DMA_IRQHandler
1a000240  w    F .text	00000008 EVRT_IRQHandler
1b080000 g       *ABS*	00000000 __top_MFlashB512
1a000a28 g     F .text	00000002 __retarget_lock_acquire
1a000a38 g     F .text	00000002 __retarget_lock_release
20008000 g       *ABS*	00000000 __top_RAM3
1a000210  w    F .text	00000008 BusFault_Handler
1000019c g     O .bss	00000001 __lock___dd_hash_mutex
100001a0 g     O .bss	00000001 __lock___tz_mutex
1a000240  w    F .text	00000008 UART3_IRQHandler
10000050 g     O .bss	00000004 __malloc_sbrk_start
1a000240  w    F .text	00000008 MCPWM_IRQHandler
10000054 g     O .bss	00000004 __malloc_free_list
1a000240  w    F .text	00000008 GINT1_IRQHandler
1a000240  w    F .text	00000008 GPIO4_IRQHandler
100001b4 g     O .bss	00000001 __lock___sfp_recursive_mutex
1a000884 g     F .text	00000010 free



Disassembly of section .text:

1a000000 <g_pfnVectors>:
1a000000:	00 80 00 10 91 07 00 1a f9 01 00 1a 01 02 00 1a     ................
1a000010:	09 02 00 1a 11 02 00 1a 19 02 00 1a 42 6e ff 53     ............Bn.S
	...
1a00002c:	21 02 00 1a 29 02 00 1a 00 00 00 00 31 02 00 1a     !...).......1...
1a00003c:	39 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     9...A...A...A...
1a00004c:	00 00 00 00 41 02 00 1a 41 02 00 1a 41 02 00 1a     ....A...A...A...
1a00005c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00006c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00007c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00008c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00009c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000ac:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000bc:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000cc:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000dc:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000ec:	41 02 00 1a 00 00 00 00 41 02 00 1a 41 02 00 1a     A.......A...A...
1a0000fc:	41 02 00 1a 00 00 00 00 41 02 00 1a 41 02 00 1a     A.......A...A...
1a00010c:	41 02 00 1a 41 02 00 1a                             A...A...

1a000114 <__data_section_table>:
1a000114:	1a000b18 	.word	0x1a000b18
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000050 	.word	0x00000050
1a000120:	1a000b18 	.word	0x1a000b18
1a000124:	10080000 	.word	0x10080000
1a000128:	00000000 	.word	0x00000000
1a00012c:	1a000b18 	.word	0x1a000b18
1a000130:	20000000 	.word	0x20000000
1a000134:	00000000 	.word	0x00000000
1a000138:	1a000b18 	.word	0x1a000b18
1a00013c:	20008000 	.word	0x20008000
1a000140:	00000000 	.word	0x00000000
1a000144:	1a000b18 	.word	0x1a000b18
1a000148:	2000c000 	.word	0x2000c000
1a00014c:	00000000 	.word	0x00000000

1a000150 <__bss_section_table>:
1a000150:	10000050 	.word	0x10000050
1a000154:	0000016c 	.word	0x0000016c
1a000158:	10080000 	.word	0x10080000
1a00015c:	00000000 	.word	0x00000000
1a000160:	20000000 	.word	0x20000000
1a000164:	00000000 	.word	0x00000000
1a000168:	20008000 	.word	0x20008000
1a00016c:	00000000 	.word	0x00000000
1a000170:	2000c000 	.word	0x2000c000
1a000174:	00000000 	.word	0x00000000

1a000178 <data_init>:
// are written as separate functions rather than being inlined within the
// ResetISR() function in order to cope with MCUs with multiple banks of
// memory.
//*****************************************************************************
__attribute__((section(".after_vectors"))) void data_init(unsigned int romstart, unsigned int start,
                                                          unsigned int len) {
1a000178:	b480      	push	{r7}
1a00017a:	b089      	sub	sp, #36	@ 0x24
1a00017c:	af00      	add	r7, sp, #0
1a00017e:	60f8      	str	r0, [r7, #12]
1a000180:	60b9      	str	r1, [r7, #8]
1a000182:	607a      	str	r2, [r7, #4]
    unsigned int * pulDest = (unsigned int *)start;
1a000184:	68bb      	ldr	r3, [r7, #8]
1a000186:	61fb      	str	r3, [r7, #28]
    unsigned int * pulSrc = (unsigned int *)romstart;
1a000188:	68fb      	ldr	r3, [r7, #12]
1a00018a:	61bb      	str	r3, [r7, #24]
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
1a00018c:	2300      	movs	r3, #0
1a00018e:	617b      	str	r3, [r7, #20]
1a000190:	e00a      	b.n	1a0001a8 <data_init+0x30>
        *pulDest++ = *pulSrc++;
1a000192:	69ba      	ldr	r2, [r7, #24]
1a000194:	1d13      	adds	r3, r2, #4
1a000196:	61bb      	str	r3, [r7, #24]
1a000198:	69fb      	ldr	r3, [r7, #28]
1a00019a:	1d19      	adds	r1, r3, #4
1a00019c:	61f9      	str	r1, [r7, #28]
1a00019e:	6812      	ldr	r2, [r2, #0]
1a0001a0:	601a      	str	r2, [r3, #0]
    for (loop = 0; loop < len; loop = loop + 4)
1a0001a2:	697b      	ldr	r3, [r7, #20]
1a0001a4:	3304      	adds	r3, #4
1a0001a6:	617b      	str	r3, [r7, #20]
1a0001a8:	697a      	ldr	r2, [r7, #20]
1a0001aa:	687b      	ldr	r3, [r7, #4]
1a0001ac:	429a      	cmp	r2, r3
1a0001ae:	d3f0      	bcc.n	1a000192 <data_init+0x1a>
}
1a0001b0:	bf00      	nop
1a0001b2:	bf00      	nop
1a0001b4:	3724      	adds	r7, #36	@ 0x24
1a0001b6:	46bd      	mov	sp, r7
1a0001b8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0001bc:	4770      	bx	lr

1a0001be <bss_init>:

__attribute__((section(".after_vectors"))) void bss_init(unsigned int start, unsigned int len) {
1a0001be:	b480      	push	{r7}
1a0001c0:	b085      	sub	sp, #20
1a0001c2:	af00      	add	r7, sp, #0
1a0001c4:	6078      	str	r0, [r7, #4]
1a0001c6:	6039      	str	r1, [r7, #0]
    unsigned int * pulDest = (unsigned int *)start;
1a0001c8:	687b      	ldr	r3, [r7, #4]
1a0001ca:	60fb      	str	r3, [r7, #12]
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
1a0001cc:	2300      	movs	r3, #0
1a0001ce:	60bb      	str	r3, [r7, #8]
1a0001d0:	e007      	b.n	1a0001e2 <bss_init+0x24>
        *pulDest++ = 0;
1a0001d2:	68fb      	ldr	r3, [r7, #12]
1a0001d4:	1d1a      	adds	r2, r3, #4
1a0001d6:	60fa      	str	r2, [r7, #12]
1a0001d8:	2200      	movs	r2, #0
1a0001da:	601a      	str	r2, [r3, #0]
    for (loop = 0; loop < len; loop = loop + 4)
1a0001dc:	68bb      	ldr	r3, [r7, #8]
1a0001de:	3304      	adds	r3, #4
1a0001e0:	60bb      	str	r3, [r7, #8]
1a0001e2:	68ba      	ldr	r2, [r7, #8]
1a0001e4:	683b      	ldr	r3, [r7, #0]
1a0001e6:	429a      	cmp	r2, r3
1a0001e8:	d3f3      	bcc.n	1a0001d2 <bss_init+0x14>
}
1a0001ea:	bf00      	nop
1a0001ec:	bf00      	nop
1a0001ee:	3714      	adds	r7, #20
1a0001f0:	46bd      	mov	sp, r7
1a0001f2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0001f6:	4770      	bx	lr

1a0001f8 <NMI_Handler>:

//*****************************************************************************
// Default exception handlers. Override the ones here by defining your own
// handler routines in your application code.
//*****************************************************************************
__attribute__((section(".after_vectors"))) void NMI_Handler(void) {
1a0001f8:	b480      	push	{r7}
1a0001fa:	af00      	add	r7, sp, #0
    while (1) {
1a0001fc:	bf00      	nop
1a0001fe:	e7fd      	b.n	1a0001fc <NMI_Handler+0x4>

1a000200 <HardFault_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void HardFault_Handler(void) {
1a000200:	b480      	push	{r7}
1a000202:	af00      	add	r7, sp, #0
    while (1) {
1a000204:	bf00      	nop
1a000206:	e7fd      	b.n	1a000204 <HardFault_Handler+0x4>

1a000208 <MemManage_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void MemManage_Handler(void) {
1a000208:	b480      	push	{r7}
1a00020a:	af00      	add	r7, sp, #0
    while (1) {
1a00020c:	bf00      	nop
1a00020e:	e7fd      	b.n	1a00020c <MemManage_Handler+0x4>

1a000210 <BusFault_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void BusFault_Handler(void) {
1a000210:	b480      	push	{r7}
1a000212:	af00      	add	r7, sp, #0
    while (1) {
1a000214:	bf00      	nop
1a000216:	e7fd      	b.n	1a000214 <BusFault_Handler+0x4>

1a000218 <UsageFault_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void UsageFault_Handler(void) {
1a000218:	b480      	push	{r7}
1a00021a:	af00      	add	r7, sp, #0
    while (1) {
1a00021c:	bf00      	nop
1a00021e:	e7fd      	b.n	1a00021c <UsageFault_Handler+0x4>

1a000220 <SVC_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void SVC_Handler(void) {
1a000220:	b480      	push	{r7}
1a000222:	af00      	add	r7, sp, #0
    while (1) {
1a000224:	bf00      	nop
1a000226:	e7fd      	b.n	1a000224 <SVC_Handler+0x4>

1a000228 <DebugMon_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void DebugMon_Handler(void) {
1a000228:	b480      	push	{r7}
1a00022a:	af00      	add	r7, sp, #0
    while (1) {
1a00022c:	bf00      	nop
1a00022e:	e7fd      	b.n	1a00022c <DebugMon_Handler+0x4>

1a000230 <PendSV_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void PendSV_Handler(void) {
1a000230:	b480      	push	{r7}
1a000232:	af00      	add	r7, sp, #0
    while (1) {
1a000234:	bf00      	nop
1a000236:	e7fd      	b.n	1a000234 <PendSV_Handler+0x4>

1a000238 <SysTick_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void SysTick_Handler(void) {
1a000238:	b480      	push	{r7}
1a00023a:	af00      	add	r7, sp, #0
    while (1) {
1a00023c:	bf00      	nop
1a00023e:	e7fd      	b.n	1a00023c <SysTick_Handler+0x4>

1a000240 <ADC0_IRQHandler>:
//
// Processor ends up here if an unexpected interrupt occurs or a specific
// handler is not present in the application code.
//
//*****************************************************************************
__attribute__((section(".after_vectors"))) void IntDefaultHandler(void) {
1a000240:	b480      	push	{r7}
1a000242:	af00      	add	r7, sp, #0
    while (1) {
1a000244:	bf00      	nop
1a000246:	e7fd      	b.n	1a000244 <ADC0_IRQHandler+0x4>

Disassembly of section .init:

1a000248 <_init>:
1a000248:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00024a:	bf00      	nop

Disassembly of section .fini:

1a00024c <_fini>:
1a00024c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00024e:	bf00      	nop

Disassembly of section .text:

1a000250 <Chip_SCU_PinMuxSet>:
 * @return	Nothing
 * @note	Do not use for clock pins (SFSCLK0 .. SFSCLK4). Use
 * Chip_SCU_ClockPinMux() function for SFSCLKx clock pins.
 */
STATIC INLINE void Chip_SCU_PinMuxSet(uint8_t port, uint8_t pin, uint16_t modefunc)
{
1a000250:	b480      	push	{r7}
1a000252:	b083      	sub	sp, #12
1a000254:	af00      	add	r7, sp, #0
1a000256:	4603      	mov	r3, r0
1a000258:	71fb      	strb	r3, [r7, #7]
1a00025a:	460b      	mov	r3, r1
1a00025c:	71bb      	strb	r3, [r7, #6]
1a00025e:	4613      	mov	r3, r2
1a000260:	80bb      	strh	r3, [r7, #4]
	LPC_SCU->SFSP[port][pin] = modefunc;
1a000262:	4807      	ldr	r0, [pc, #28]	@ (1a000280 <Chip_SCU_PinMuxSet+0x30>)
1a000264:	79f9      	ldrb	r1, [r7, #7]
1a000266:	79bb      	ldrb	r3, [r7, #6]
1a000268:	88ba      	ldrh	r2, [r7, #4]
1a00026a:	0149      	lsls	r1, r1, #5
1a00026c:	440b      	add	r3, r1
1a00026e:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
}
1a000272:	bf00      	nop
1a000274:	370c      	adds	r7, #12
1a000276:	46bd      	mov	sp, r7
1a000278:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00027c:	4770      	bx	lr
1a00027e:	bf00      	nop
1a000280:	40086000 	.word	0x40086000

1a000284 <BoardCreate>:
/* === Public variable definitions ================================================================================= */

/* === Private function definitions ================================================================================ */

/* === Public function implementation ============================================================================== */
Board_t BoardCreate(void){
1a000284:	b580      	push	{r7, lr}
1a000286:	b082      	sub	sp, #8
1a000288:	af00      	add	r7, sp, #0

    struct Board_s * self = malloc(sizeof(struct Board_s));
1a00028a:	2020      	movs	r0, #32
1a00028c:	f000 faf2 	bl	1a000874 <malloc>
1a000290:	4603      	mov	r3, r0
1a000292:	607b      	str	r3, [r7, #4]
    // Si malloc falla, self será NULL y se debe manejar apropiadamente.
    if (self == NULL) {
1a000294:	687b      	ldr	r3, [r7, #4]
1a000296:	2b00      	cmp	r3, #0
1a000298:	d101      	bne.n	1a00029e <BoardCreate+0x1a>
        return NULL; // Manejo de error: no se pudo asignar memoria
1a00029a:	2300      	movs	r3, #0
1a00029c:	e064      	b.n	1a000368 <BoardCreate+0xe4>
    }

    Chip_SCU_PinMuxSet(LED_B_PORT, LED_B_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_B_FUNC);
1a00029e:	2254      	movs	r2, #84	@ 0x54
1a0002a0:	2102      	movs	r1, #2
1a0002a2:	2002      	movs	r0, #2
1a0002a4:	f7ff ffd4 	bl	1a000250 <Chip_SCU_PinMuxSet>
    self->ledBlue = DigitalOutputCreate(LED_B_GPIO, LED_B_BIT);
1a0002a8:	2102      	movs	r1, #2
1a0002aa:	2005      	movs	r0, #5
1a0002ac:	f000 f910 	bl	1a0004d0 <DigitalOutputCreate>
1a0002b0:	4602      	mov	r2, r0
1a0002b2:	687b      	ldr	r3, [r7, #4]
1a0002b4:	609a      	str	r2, [r3, #8]

    Chip_SCU_PinMuxSet(LED_1_PORT, LED_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_1_FUNC);
1a0002b6:	2250      	movs	r2, #80	@ 0x50
1a0002b8:	210a      	movs	r1, #10
1a0002ba:	2002      	movs	r0, #2
1a0002bc:	f7ff ffc8 	bl	1a000250 <Chip_SCU_PinMuxSet>
    self->ledRed = DigitalOutputCreate(LED_1_GPIO, LED_1_BIT);
1a0002c0:	210e      	movs	r1, #14
1a0002c2:	2000      	movs	r0, #0
1a0002c4:	f000 f904 	bl	1a0004d0 <DigitalOutputCreate>
1a0002c8:	4602      	mov	r2, r0
1a0002ca:	687b      	ldr	r3, [r7, #4]
1a0002cc:	605a      	str	r2, [r3, #4]

    Chip_SCU_PinMuxSet(LED_2_PORT, LED_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_2_FUNC);
1a0002ce:	2250      	movs	r2, #80	@ 0x50
1a0002d0:	210b      	movs	r1, #11
1a0002d2:	2002      	movs	r0, #2
1a0002d4:	f7ff ffbc 	bl	1a000250 <Chip_SCU_PinMuxSet>
    self->ledYellow = DigitalOutputCreate(LED_2_GPIO, LED_2_BIT);
1a0002d8:	210b      	movs	r1, #11
1a0002da:	2001      	movs	r0, #1
1a0002dc:	f000 f8f8 	bl	1a0004d0 <DigitalOutputCreate>
1a0002e0:	4602      	mov	r2, r0
1a0002e2:	687b      	ldr	r3, [r7, #4]
1a0002e4:	60da      	str	r2, [r3, #12]

    Chip_SCU_PinMuxSet(LED_3_PORT, LED_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_3_FUNC);
1a0002e6:	2250      	movs	r2, #80	@ 0x50
1a0002e8:	210c      	movs	r1, #12
1a0002ea:	2002      	movs	r0, #2
1a0002ec:	f7ff ffb0 	bl	1a000250 <Chip_SCU_PinMuxSet>
    self->ledGreen = DigitalOutputCreate(LED_3_GPIO, LED_3_BIT);
1a0002f0:	210c      	movs	r1, #12
1a0002f2:	2001      	movs	r0, #1
1a0002f4:	f000 f8ec 	bl	1a0004d0 <DigitalOutputCreate>
1a0002f8:	4602      	mov	r2, r0
1a0002fa:	687b      	ldr	r3, [r7, #4]
1a0002fc:	601a      	str	r2, [r3, #0]


    Chip_SCU_PinMuxSet(TEC_1_PORT, TEC_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_1_FUNC);
1a0002fe:	2240      	movs	r2, #64	@ 0x40
1a000300:	2100      	movs	r1, #0
1a000302:	2001      	movs	r0, #1
1a000304:	f7ff ffa4 	bl	1a000250 <Chip_SCU_PinMuxSet>
    self->keyPush = DigitalInputCreate(TEC_1_GPIO, TEC_1_BIT, true);
1a000308:	2201      	movs	r2, #1
1a00030a:	2104      	movs	r1, #4
1a00030c:	2000      	movs	r0, #0
1a00030e:	f000 f943 	bl	1a000598 <DigitalInputCreate>
1a000312:	4602      	mov	r2, r0
1a000314:	687b      	ldr	r3, [r7, #4]
1a000316:	611a      	str	r2, [r3, #16]

    Chip_SCU_PinMuxSet(TEC_2_PORT, TEC_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_2_FUNC);
1a000318:	2240      	movs	r2, #64	@ 0x40
1a00031a:	2101      	movs	r1, #1
1a00031c:	2001      	movs	r0, #1
1a00031e:	f7ff ff97 	bl	1a000250 <Chip_SCU_PinMuxSet>
    self->keyToggle = DigitalInputCreate(TEC_2_GPIO, TEC_2_BIT, false);
1a000322:	2200      	movs	r2, #0
1a000324:	2108      	movs	r1, #8
1a000326:	2000      	movs	r0, #0
1a000328:	f000 f936 	bl	1a000598 <DigitalInputCreate>
1a00032c:	4602      	mov	r2, r0
1a00032e:	687b      	ldr	r3, [r7, #4]
1a000330:	615a      	str	r2, [r3, #20]

    Chip_SCU_PinMuxSet(TEC_3_PORT, TEC_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_3_FUNC);
1a000332:	2240      	movs	r2, #64	@ 0x40
1a000334:	2102      	movs	r1, #2
1a000336:	2001      	movs	r0, #1
1a000338:	f7ff ff8a 	bl	1a000250 <Chip_SCU_PinMuxSet>
    self->keyTurnOn = DigitalInputCreate(TEC_3_GPIO, TEC_3_BIT, true);
1a00033c:	2201      	movs	r2, #1
1a00033e:	2109      	movs	r1, #9
1a000340:	2000      	movs	r0, #0
1a000342:	f000 f929 	bl	1a000598 <DigitalInputCreate>
1a000346:	4602      	mov	r2, r0
1a000348:	687b      	ldr	r3, [r7, #4]
1a00034a:	619a      	str	r2, [r3, #24]

    Chip_SCU_PinMuxSet(TEC_4_PORT, TEC_4_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_4_FUNC);
1a00034c:	2240      	movs	r2, #64	@ 0x40
1a00034e:	2106      	movs	r1, #6
1a000350:	2001      	movs	r0, #1
1a000352:	f7ff ff7d 	bl	1a000250 <Chip_SCU_PinMuxSet>
    self->keyTurnOff = DigitalInputCreate(TEC_4_GPIO, TEC_4_BIT, true);
1a000356:	2201      	movs	r2, #1
1a000358:	2109      	movs	r1, #9
1a00035a:	2001      	movs	r0, #1
1a00035c:	f000 f91c 	bl	1a000598 <DigitalInputCreate>
1a000360:	4602      	mov	r2, r0
1a000362:	687b      	ldr	r3, [r7, #4]
1a000364:	61da      	str	r2, [r3, #28]

    return self;
1a000366:	687b      	ldr	r3, [r7, #4]
}
1a000368:	4618      	mov	r0, r3
1a00036a:	3708      	adds	r7, #8
1a00036c:	46bd      	mov	sp, r7
1a00036e:	bd80      	pop	{r7, pc}

1a000370 <Chip_GPIO_SetPinState>:
 * @param	setting	: true for high, false for low
 * @return	Nothing
 * @note	This function replaces Chip_GPIO_WritePortBit()
 */
STATIC INLINE void Chip_GPIO_SetPinState(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, bool setting)
{
1a000370:	b480      	push	{r7}
1a000372:	b083      	sub	sp, #12
1a000374:	af00      	add	r7, sp, #0
1a000376:	6078      	str	r0, [r7, #4]
1a000378:	4608      	mov	r0, r1
1a00037a:	4611      	mov	r1, r2
1a00037c:	461a      	mov	r2, r3
1a00037e:	4603      	mov	r3, r0
1a000380:	70fb      	strb	r3, [r7, #3]
1a000382:	460b      	mov	r3, r1
1a000384:	70bb      	strb	r3, [r7, #2]
1a000386:	4613      	mov	r3, r2
1a000388:	707b      	strb	r3, [r7, #1]
	pGPIO->B[port][pin] = setting;
1a00038a:	78fa      	ldrb	r2, [r7, #3]
1a00038c:	78bb      	ldrb	r3, [r7, #2]
1a00038e:	7878      	ldrb	r0, [r7, #1]
1a000390:	6879      	ldr	r1, [r7, #4]
1a000392:	0152      	lsls	r2, r2, #5
1a000394:	440a      	add	r2, r1
1a000396:	4413      	add	r3, r2
1a000398:	4602      	mov	r2, r0
1a00039a:	701a      	strb	r2, [r3, #0]
}
1a00039c:	bf00      	nop
1a00039e:	370c      	adds	r7, #12
1a0003a0:	46bd      	mov	sp, r7
1a0003a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003a6:	4770      	bx	lr

1a0003a8 <Chip_GPIO_ReadPortBit>:
 * @param	pin		: GPIO pin to read
 * @return	true of the GPIO is high, false if low
 * @note	It is recommended to use the Chip_GPIO_GetPinState() function instead.
 */
STATIC INLINE bool Chip_GPIO_ReadPortBit(LPC_GPIO_T *pGPIO, uint32_t port, uint8_t pin)
{
1a0003a8:	b480      	push	{r7}
1a0003aa:	b085      	sub	sp, #20
1a0003ac:	af00      	add	r7, sp, #0
1a0003ae:	60f8      	str	r0, [r7, #12]
1a0003b0:	60b9      	str	r1, [r7, #8]
1a0003b2:	4613      	mov	r3, r2
1a0003b4:	71fb      	strb	r3, [r7, #7]
	return (bool) pGPIO->B[port][pin];
1a0003b6:	79fb      	ldrb	r3, [r7, #7]
1a0003b8:	68f9      	ldr	r1, [r7, #12]
1a0003ba:	68ba      	ldr	r2, [r7, #8]
1a0003bc:	0152      	lsls	r2, r2, #5
1a0003be:	440a      	add	r2, r1
1a0003c0:	4413      	add	r3, r2
1a0003c2:	781b      	ldrb	r3, [r3, #0]
1a0003c4:	b2db      	uxtb	r3, r3
1a0003c6:	2b00      	cmp	r3, #0
1a0003c8:	bf14      	ite	ne
1a0003ca:	2301      	movne	r3, #1
1a0003cc:	2300      	moveq	r3, #0
1a0003ce:	b2db      	uxtb	r3, r3
}
1a0003d0:	4618      	mov	r0, r3
1a0003d2:	3714      	adds	r7, #20
1a0003d4:	46bd      	mov	sp, r7
1a0003d6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003da:	4770      	bx	lr

1a0003dc <Chip_GPIO_SetPinDIROutput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as output
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIROutput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a0003dc:	b480      	push	{r7}
1a0003de:	b083      	sub	sp, #12
1a0003e0:	af00      	add	r7, sp, #0
1a0003e2:	6078      	str	r0, [r7, #4]
1a0003e4:	460b      	mov	r3, r1
1a0003e6:	70fb      	strb	r3, [r7, #3]
1a0003e8:	4613      	mov	r3, r2
1a0003ea:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] |= 1UL << pin;
1a0003ec:	78fa      	ldrb	r2, [r7, #3]
1a0003ee:	687b      	ldr	r3, [r7, #4]
1a0003f0:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0003f4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0003f8:	78bb      	ldrb	r3, [r7, #2]
1a0003fa:	2201      	movs	r2, #1
1a0003fc:	fa02 f303 	lsl.w	r3, r2, r3
1a000400:	78fa      	ldrb	r2, [r7, #3]
1a000402:	4319      	orrs	r1, r3
1a000404:	687b      	ldr	r3, [r7, #4]
1a000406:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a00040a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a00040e:	bf00      	nop
1a000410:	370c      	adds	r7, #12
1a000412:	46bd      	mov	sp, r7
1a000414:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000418:	4770      	bx	lr

1a00041a <Chip_GPIO_SetPinDIRInput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIRInput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a00041a:	b480      	push	{r7}
1a00041c:	b083      	sub	sp, #12
1a00041e:	af00      	add	r7, sp, #0
1a000420:	6078      	str	r0, [r7, #4]
1a000422:	460b      	mov	r3, r1
1a000424:	70fb      	strb	r3, [r7, #3]
1a000426:	4613      	mov	r3, r2
1a000428:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] &= ~(1UL << pin);
1a00042a:	78fa      	ldrb	r2, [r7, #3]
1a00042c:	687b      	ldr	r3, [r7, #4]
1a00042e:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000432:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000436:	78bb      	ldrb	r3, [r7, #2]
1a000438:	2201      	movs	r2, #1
1a00043a:	fa02 f303 	lsl.w	r3, r2, r3
1a00043e:	43db      	mvns	r3, r3
1a000440:	78fa      	ldrb	r2, [r7, #3]
1a000442:	4019      	ands	r1, r3
1a000444:	687b      	ldr	r3, [r7, #4]
1a000446:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a00044a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a00044e:	bf00      	nop
1a000450:	370c      	adds	r7, #12
1a000452:	46bd      	mov	sp, r7
1a000454:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000458:	4770      	bx	lr

1a00045a <Chip_GPIO_SetPinDIR>:
 * @param	pin		: GPIO pin to set direction for
 * @param	output	: true for output, false for input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIR(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, bool output)
{
1a00045a:	b580      	push	{r7, lr}
1a00045c:	b082      	sub	sp, #8
1a00045e:	af00      	add	r7, sp, #0
1a000460:	6078      	str	r0, [r7, #4]
1a000462:	4608      	mov	r0, r1
1a000464:	4611      	mov	r1, r2
1a000466:	461a      	mov	r2, r3
1a000468:	4603      	mov	r3, r0
1a00046a:	70fb      	strb	r3, [r7, #3]
1a00046c:	460b      	mov	r3, r1
1a00046e:	70bb      	strb	r3, [r7, #2]
1a000470:	4613      	mov	r3, r2
1a000472:	707b      	strb	r3, [r7, #1]
	if (output) {
1a000474:	787b      	ldrb	r3, [r7, #1]
1a000476:	2b00      	cmp	r3, #0
1a000478:	d006      	beq.n	1a000488 <Chip_GPIO_SetPinDIR+0x2e>
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
1a00047a:	78ba      	ldrb	r2, [r7, #2]
1a00047c:	78fb      	ldrb	r3, [r7, #3]
1a00047e:	4619      	mov	r1, r3
1a000480:	6878      	ldr	r0, [r7, #4]
1a000482:	f7ff ffab 	bl	1a0003dc <Chip_GPIO_SetPinDIROutput>
	}
	else {
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
	}
}
1a000486:	e005      	b.n	1a000494 <Chip_GPIO_SetPinDIR+0x3a>
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
1a000488:	78ba      	ldrb	r2, [r7, #2]
1a00048a:	78fb      	ldrb	r3, [r7, #3]
1a00048c:	4619      	mov	r1, r3
1a00048e:	6878      	ldr	r0, [r7, #4]
1a000490:	f7ff ffc3 	bl	1a00041a <Chip_GPIO_SetPinDIRInput>
}
1a000494:	bf00      	nop
1a000496:	3708      	adds	r7, #8
1a000498:	46bd      	mov	sp, r7
1a00049a:	bd80      	pop	{r7, pc}

1a00049c <Chip_GPIO_SetPinToggle>:
 * @return	None
 * @note	Any bit set as a '0' will not have it's state changed. This only
 * applies to ports configured as an output.
 */
STATIC INLINE void Chip_GPIO_SetPinToggle(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a00049c:	b480      	push	{r7}
1a00049e:	b083      	sub	sp, #12
1a0004a0:	af00      	add	r7, sp, #0
1a0004a2:	6078      	str	r0, [r7, #4]
1a0004a4:	460b      	mov	r3, r1
1a0004a6:	70fb      	strb	r3, [r7, #3]
1a0004a8:	4613      	mov	r3, r2
1a0004aa:	70bb      	strb	r3, [r7, #2]
	pGPIO->NOT[port] = (1 << pin);
1a0004ac:	78bb      	ldrb	r3, [r7, #2]
1a0004ae:	2201      	movs	r2, #1
1a0004b0:	fa02 f303 	lsl.w	r3, r2, r3
1a0004b4:	78fa      	ldrb	r2, [r7, #3]
1a0004b6:	4619      	mov	r1, r3
1a0004b8:	687b      	ldr	r3, [r7, #4]
1a0004ba:	f502 620c 	add.w	r2, r2, #2240	@ 0x8c0
1a0004be:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a0004c2:	bf00      	nop
1a0004c4:	370c      	adds	r7, #12
1a0004c6:	46bd      	mov	sp, r7
1a0004c8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004cc:	4770      	bx	lr
	...

1a0004d0 <DigitalOutputCreate>:

/* === Private function definitions ================================================================================ */

/* === Public function implementation ============================================================================== */

digital_output_t DigitalOutputCreate(uint8_t gpio, uint8_t bit){
1a0004d0:	b580      	push	{r7, lr}
1a0004d2:	b084      	sub	sp, #16
1a0004d4:	af00      	add	r7, sp, #0
1a0004d6:	4603      	mov	r3, r0
1a0004d8:	460a      	mov	r2, r1
1a0004da:	71fb      	strb	r3, [r7, #7]
1a0004dc:	4613      	mov	r3, r2
1a0004de:	71bb      	strb	r3, [r7, #6]
    digital_output_t self = malloc(sizeof(struct digital_output_s));
1a0004e0:	2002      	movs	r0, #2
1a0004e2:	f000 f9c7 	bl	1a000874 <malloc>
1a0004e6:	4603      	mov	r3, r0
1a0004e8:	60fb      	str	r3, [r7, #12]
    if (self != NULL)
1a0004ea:	68fb      	ldr	r3, [r7, #12]
1a0004ec:	2b00      	cmp	r3, #0
1a0004ee:	d015      	beq.n	1a00051c <DigitalOutputCreate+0x4c>
    {
        self ->gpio = gpio;
1a0004f0:	68fb      	ldr	r3, [r7, #12]
1a0004f2:	79fa      	ldrb	r2, [r7, #7]
1a0004f4:	701a      	strb	r2, [r3, #0]
        self ->bit = bit;
1a0004f6:	68fb      	ldr	r3, [r7, #12]
1a0004f8:	79ba      	ldrb	r2, [r7, #6]
1a0004fa:	705a      	strb	r2, [r3, #1]
        Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->gpio, self->bit, false);
1a0004fc:	68fb      	ldr	r3, [r7, #12]
1a0004fe:	7819      	ldrb	r1, [r3, #0]
1a000500:	68fb      	ldr	r3, [r7, #12]
1a000502:	785a      	ldrb	r2, [r3, #1]
1a000504:	2300      	movs	r3, #0
1a000506:	4808      	ldr	r0, [pc, #32]	@ (1a000528 <DigitalOutputCreate+0x58>)
1a000508:	f7ff ff32 	bl	1a000370 <Chip_GPIO_SetPinState>
        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->gpio, self->bit, true);
1a00050c:	68fb      	ldr	r3, [r7, #12]
1a00050e:	7819      	ldrb	r1, [r3, #0]
1a000510:	68fb      	ldr	r3, [r7, #12]
1a000512:	785a      	ldrb	r2, [r3, #1]
1a000514:	2301      	movs	r3, #1
1a000516:	4804      	ldr	r0, [pc, #16]	@ (1a000528 <DigitalOutputCreate+0x58>)
1a000518:	f7ff ff9f 	bl	1a00045a <Chip_GPIO_SetPinDIR>
    }
    return self;
1a00051c:	68fb      	ldr	r3, [r7, #12]
} 
1a00051e:	4618      	mov	r0, r3
1a000520:	3710      	adds	r7, #16
1a000522:	46bd      	mov	sp, r7
1a000524:	bd80      	pop	{r7, pc}
1a000526:	bf00      	nop
1a000528:	400f4000 	.word	0x400f4000

1a00052c <DigitalOutputActivate>:

void DigitalOutputActivate(digital_output_t self){
1a00052c:	b580      	push	{r7, lr}
1a00052e:	b082      	sub	sp, #8
1a000530:	af00      	add	r7, sp, #0
1a000532:	6078      	str	r0, [r7, #4]
    Chip_GPIO_SetPinState(LPC_GPIO_PORT,self->gpio,self->bit,true);
1a000534:	687b      	ldr	r3, [r7, #4]
1a000536:	7819      	ldrb	r1, [r3, #0]
1a000538:	687b      	ldr	r3, [r7, #4]
1a00053a:	785a      	ldrb	r2, [r3, #1]
1a00053c:	2301      	movs	r3, #1
1a00053e:	4803      	ldr	r0, [pc, #12]	@ (1a00054c <DigitalOutputActivate+0x20>)
1a000540:	f7ff ff16 	bl	1a000370 <Chip_GPIO_SetPinState>
}
1a000544:	bf00      	nop
1a000546:	3708      	adds	r7, #8
1a000548:	46bd      	mov	sp, r7
1a00054a:	bd80      	pop	{r7, pc}
1a00054c:	400f4000 	.word	0x400f4000

1a000550 <DigitalOutputDeactivate>:

void DigitalOutputDeactivate(digital_output_t self){
1a000550:	b580      	push	{r7, lr}
1a000552:	b082      	sub	sp, #8
1a000554:	af00      	add	r7, sp, #0
1a000556:	6078      	str	r0, [r7, #4]
    Chip_GPIO_SetPinState(LPC_GPIO_PORT,self->gpio,self->bit,false);
1a000558:	687b      	ldr	r3, [r7, #4]
1a00055a:	7819      	ldrb	r1, [r3, #0]
1a00055c:	687b      	ldr	r3, [r7, #4]
1a00055e:	785a      	ldrb	r2, [r3, #1]
1a000560:	2300      	movs	r3, #0
1a000562:	4803      	ldr	r0, [pc, #12]	@ (1a000570 <DigitalOutputDeactivate+0x20>)
1a000564:	f7ff ff04 	bl	1a000370 <Chip_GPIO_SetPinState>
}
1a000568:	bf00      	nop
1a00056a:	3708      	adds	r7, #8
1a00056c:	46bd      	mov	sp, r7
1a00056e:	bd80      	pop	{r7, pc}
1a000570:	400f4000 	.word	0x400f4000

1a000574 <DigitalOutputToggle>:

void DigitalOutputToggle(digital_output_t self){
1a000574:	b580      	push	{r7, lr}
1a000576:	b082      	sub	sp, #8
1a000578:	af00      	add	r7, sp, #0
1a00057a:	6078      	str	r0, [r7, #4]
    Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, self->gpio, self->bit);
1a00057c:	687b      	ldr	r3, [r7, #4]
1a00057e:	7819      	ldrb	r1, [r3, #0]
1a000580:	687b      	ldr	r3, [r7, #4]
1a000582:	785b      	ldrb	r3, [r3, #1]
1a000584:	461a      	mov	r2, r3
1a000586:	4803      	ldr	r0, [pc, #12]	@ (1a000594 <DigitalOutputToggle+0x20>)
1a000588:	f7ff ff88 	bl	1a00049c <Chip_GPIO_SetPinToggle>
}
1a00058c:	bf00      	nop
1a00058e:	3708      	adds	r7, #8
1a000590:	46bd      	mov	sp, r7
1a000592:	bd80      	pop	{r7, pc}
1a000594:	400f4000 	.word	0x400f4000

1a000598 <DigitalInputCreate>:


digital_input_t DigitalInputCreate(uint8_t gpio, uint8_t bit,bool inverted){
1a000598:	b580      	push	{r7, lr}
1a00059a:	b084      	sub	sp, #16
1a00059c:	af00      	add	r7, sp, #0
1a00059e:	4603      	mov	r3, r0
1a0005a0:	71fb      	strb	r3, [r7, #7]
1a0005a2:	460b      	mov	r3, r1
1a0005a4:	71bb      	strb	r3, [r7, #6]
1a0005a6:	4613      	mov	r3, r2
1a0005a8:	717b      	strb	r3, [r7, #5]
    digital_input_t self = malloc(sizeof(struct digital_input_s));
1a0005aa:	2004      	movs	r0, #4
1a0005ac:	f000 f962 	bl	1a000874 <malloc>
1a0005b0:	4603      	mov	r3, r0
1a0005b2:	60fb      	str	r3, [r7, #12]
    if (self !=NULL)
1a0005b4:	68fb      	ldr	r3, [r7, #12]
1a0005b6:	2b00      	cmp	r3, #0
1a0005b8:	d017      	beq.n	1a0005ea <DigitalInputCreate+0x52>
    {
        self ->gpio=gpio;
1a0005ba:	68fb      	ldr	r3, [r7, #12]
1a0005bc:	79fa      	ldrb	r2, [r7, #7]
1a0005be:	701a      	strb	r2, [r3, #0]
        self->bit=bit;
1a0005c0:	68fb      	ldr	r3, [r7, #12]
1a0005c2:	79ba      	ldrb	r2, [r7, #6]
1a0005c4:	705a      	strb	r2, [r3, #1]
        self->inverted = inverted;
1a0005c6:	68fb      	ldr	r3, [r7, #12]
1a0005c8:	797a      	ldrb	r2, [r7, #5]
1a0005ca:	709a      	strb	r2, [r3, #2]

        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->gpio, self->bit, false);
1a0005cc:	68fb      	ldr	r3, [r7, #12]
1a0005ce:	7819      	ldrb	r1, [r3, #0]
1a0005d0:	68fb      	ldr	r3, [r7, #12]
1a0005d2:	785a      	ldrb	r2, [r3, #1]
1a0005d4:	2300      	movs	r3, #0
1a0005d6:	4807      	ldr	r0, [pc, #28]	@ (1a0005f4 <DigitalInputCreate+0x5c>)
1a0005d8:	f7ff ff3f 	bl	1a00045a <Chip_GPIO_SetPinDIR>

        self->lastState=DigitalInputGetIsActive(self);
1a0005dc:	68f8      	ldr	r0, [r7, #12]
1a0005de:	f000 f80b 	bl	1a0005f8 <DigitalInputGetIsActive>
1a0005e2:	4603      	mov	r3, r0
1a0005e4:	461a      	mov	r2, r3
1a0005e6:	68fb      	ldr	r3, [r7, #12]
1a0005e8:	70da      	strb	r2, [r3, #3]
    }
    return self; 
1a0005ea:	68fb      	ldr	r3, [r7, #12]
}
1a0005ec:	4618      	mov	r0, r3
1a0005ee:	3710      	adds	r7, #16
1a0005f0:	46bd      	mov	sp, r7
1a0005f2:	bd80      	pop	{r7, pc}
1a0005f4:	400f4000 	.word	0x400f4000

1a0005f8 <DigitalInputGetIsActive>:

bool DigitalInputGetIsActive(digital_input_t self){
1a0005f8:	b580      	push	{r7, lr}
1a0005fa:	b084      	sub	sp, #16
1a0005fc:	af00      	add	r7, sp, #0
1a0005fe:	6078      	str	r0, [r7, #4]
     bool state = Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, self->gpio, self->bit) != 0;
1a000600:	687b      	ldr	r3, [r7, #4]
1a000602:	781b      	ldrb	r3, [r3, #0]
1a000604:	4619      	mov	r1, r3
1a000606:	687b      	ldr	r3, [r7, #4]
1a000608:	785b      	ldrb	r3, [r3, #1]
1a00060a:	461a      	mov	r2, r3
1a00060c:	480d      	ldr	r0, [pc, #52]	@ (1a000644 <DigitalInputGetIsActive+0x4c>)
1a00060e:	f7ff fecb 	bl	1a0003a8 <Chip_GPIO_ReadPortBit>
1a000612:	4603      	mov	r3, r0
1a000614:	73fb      	strb	r3, [r7, #15]
    if (self->inverted)
1a000616:	687b      	ldr	r3, [r7, #4]
1a000618:	789b      	ldrb	r3, [r3, #2]
1a00061a:	2b00      	cmp	r3, #0
1a00061c:	d00d      	beq.n	1a00063a <DigitalInputGetIsActive+0x42>
    { 
        state = !state;
1a00061e:	7bfb      	ldrb	r3, [r7, #15]
1a000620:	2b00      	cmp	r3, #0
1a000622:	bf14      	ite	ne
1a000624:	2301      	movne	r3, #1
1a000626:	2300      	moveq	r3, #0
1a000628:	b2db      	uxtb	r3, r3
1a00062a:	f083 0301 	eor.w	r3, r3, #1
1a00062e:	b2db      	uxtb	r3, r3
1a000630:	73fb      	strb	r3, [r7, #15]
1a000632:	7bfb      	ldrb	r3, [r7, #15]
1a000634:	f003 0301 	and.w	r3, r3, #1
1a000638:	73fb      	strb	r3, [r7, #15]
    }
    
    return state;
1a00063a:	7bfb      	ldrb	r3, [r7, #15]
}
1a00063c:	4618      	mov	r0, r3
1a00063e:	3710      	adds	r7, #16
1a000640:	46bd      	mov	sp, r7
1a000642:	bd80      	pop	{r7, pc}
1a000644:	400f4000 	.word	0x400f4000

1a000648 <DigitalInputWasChanged>:

digital_states_t DigitalInputWasChanged(digital_input_t self){
1a000648:	b580      	push	{r7, lr}
1a00064a:	b084      	sub	sp, #16
1a00064c:	af00      	add	r7, sp, #0
1a00064e:	6078      	str	r0, [r7, #4]
    digital_states_t result = DIGITAL_INPUT_NO_CHANGE;
1a000650:	2300      	movs	r3, #0
1a000652:	73fb      	strb	r3, [r7, #15]

    bool state = DigitalInputGetIsActive(self);
1a000654:	6878      	ldr	r0, [r7, #4]
1a000656:	f7ff ffcf 	bl	1a0005f8 <DigitalInputGetIsActive>
1a00065a:	4603      	mov	r3, r0
1a00065c:	73bb      	strb	r3, [r7, #14]

    if (state && !self->lastState)
1a00065e:	7bbb      	ldrb	r3, [r7, #14]
1a000660:	2b00      	cmp	r3, #0
1a000662:	d009      	beq.n	1a000678 <DigitalInputWasChanged+0x30>
1a000664:	687b      	ldr	r3, [r7, #4]
1a000666:	78db      	ldrb	r3, [r3, #3]
1a000668:	f083 0301 	eor.w	r3, r3, #1
1a00066c:	b2db      	uxtb	r3, r3
1a00066e:	2b00      	cmp	r3, #0
1a000670:	d002      	beq.n	1a000678 <DigitalInputWasChanged+0x30>
    {
        result = DIGITAL_INPUT_WAS_ACTIVATED;
1a000672:	2301      	movs	r3, #1
1a000674:	73fb      	strb	r3, [r7, #15]
1a000676:	e00b      	b.n	1a000690 <DigitalInputWasChanged+0x48>
    }else if (!state && self->lastState)
1a000678:	7bbb      	ldrb	r3, [r7, #14]
1a00067a:	f083 0301 	eor.w	r3, r3, #1
1a00067e:	b2db      	uxtb	r3, r3
1a000680:	2b00      	cmp	r3, #0
1a000682:	d005      	beq.n	1a000690 <DigitalInputWasChanged+0x48>
1a000684:	687b      	ldr	r3, [r7, #4]
1a000686:	78db      	ldrb	r3, [r3, #3]
1a000688:	2b00      	cmp	r3, #0
1a00068a:	d001      	beq.n	1a000690 <DigitalInputWasChanged+0x48>
    {
        result = DIGITAL_INPUT_WAS_DEACTIVATED;
1a00068c:	23ff      	movs	r3, #255	@ 0xff
1a00068e:	73fb      	strb	r3, [r7, #15]
    }
    self->lastState=state;
1a000690:	687b      	ldr	r3, [r7, #4]
1a000692:	7bba      	ldrb	r2, [r7, #14]
1a000694:	70da      	strb	r2, [r3, #3]
    return result;
1a000696:	f997 300f 	ldrsb.w	r3, [r7, #15]
    
}
1a00069a:	4618      	mov	r0, r3
1a00069c:	3710      	adds	r7, #16
1a00069e:	46bd      	mov	sp, r7
1a0006a0:	bd80      	pop	{r7, pc}

1a0006a2 <DigitalInputWasActivated>:

bool DigitalInputWasActivated(digital_input_t self){
1a0006a2:	b580      	push	{r7, lr}
1a0006a4:	b082      	sub	sp, #8
1a0006a6:	af00      	add	r7, sp, #0
1a0006a8:	6078      	str	r0, [r7, #4]
    return DIGITAL_INPUT_WAS_ACTIVATED == DigitalInputWasChanged(self);
1a0006aa:	6878      	ldr	r0, [r7, #4]
1a0006ac:	f7ff ffcc 	bl	1a000648 <DigitalInputWasChanged>
1a0006b0:	4603      	mov	r3, r0
1a0006b2:	2b01      	cmp	r3, #1
1a0006b4:	bf0c      	ite	eq
1a0006b6:	2301      	moveq	r3, #1
1a0006b8:	2300      	movne	r3, #0
1a0006ba:	b2db      	uxtb	r3, r3
}
1a0006bc:	4618      	mov	r0, r3
1a0006be:	3708      	adds	r7, #8
1a0006c0:	46bd      	mov	sp, r7
1a0006c2:	bd80      	pop	{r7, pc}

1a0006c4 <main>:

/* === Private function implementation ========================================================= */

/* === Public function implementation ========================================================= */

int main(void) {
1a0006c4:	b580      	push	{r7, lr}
1a0006c6:	b084      	sub	sp, #16
1a0006c8:	af00      	add	r7, sp, #0

    int divisor  = 0;
1a0006ca:	2300      	movs	r3, #0
1a0006cc:	60fb      	str	r3, [r7, #12]


    Board_t boardIO = BoardCreate();
1a0006ce:	f7ff fdd9 	bl	1a000284 <BoardCreate>
1a0006d2:	6038      	str	r0, [r7, #0]

    while (true) {
        if (DigitalInputGetIsActive(boardIO->keyPush)) {
1a0006d4:	683b      	ldr	r3, [r7, #0]
1a0006d6:	691b      	ldr	r3, [r3, #16]
1a0006d8:	4618      	mov	r0, r3
1a0006da:	f7ff ff8d 	bl	1a0005f8 <DigitalInputGetIsActive>
1a0006de:	4603      	mov	r3, r0
1a0006e0:	2b00      	cmp	r3, #0
1a0006e2:	d005      	beq.n	1a0006f0 <main+0x2c>
             DigitalOutputActivate(boardIO->ledBlue);
1a0006e4:	683b      	ldr	r3, [r7, #0]
1a0006e6:	689b      	ldr	r3, [r3, #8]
1a0006e8:	4618      	mov	r0, r3
1a0006ea:	f7ff ff1f 	bl	1a00052c <DigitalOutputActivate>
1a0006ee:	e004      	b.n	1a0006fa <main+0x36>
        } else {
            DigitalOutputDeactivate(boardIO->ledBlue);
1a0006f0:	683b      	ldr	r3, [r7, #0]
1a0006f2:	689b      	ldr	r3, [r3, #8]
1a0006f4:	4618      	mov	r0, r3
1a0006f6:	f7ff ff2b 	bl	1a000550 <DigitalOutputDeactivate>
        }

        if (DigitalInputWasActivated(boardIO->keyToggle)) {
1a0006fa:	683b      	ldr	r3, [r7, #0]
1a0006fc:	695b      	ldr	r3, [r3, #20]
1a0006fe:	4618      	mov	r0, r3
1a000700:	f7ff ffcf 	bl	1a0006a2 <DigitalInputWasActivated>
1a000704:	4603      	mov	r3, r0
1a000706:	2b00      	cmp	r3, #0
1a000708:	d004      	beq.n	1a000714 <main+0x50>
            DigitalOutputToggle(boardIO->ledRed);
1a00070a:	683b      	ldr	r3, [r7, #0]
1a00070c:	685b      	ldr	r3, [r3, #4]
1a00070e:	4618      	mov	r0, r3
1a000710:	f7ff ff30 	bl	1a000574 <DigitalOutputToggle>
        }

        if (DigitalInputGetIsActive(boardIO->keyTurnOn)) {
1a000714:	683b      	ldr	r3, [r7, #0]
1a000716:	699b      	ldr	r3, [r3, #24]
1a000718:	4618      	mov	r0, r3
1a00071a:	f7ff ff6d 	bl	1a0005f8 <DigitalInputGetIsActive>
1a00071e:	4603      	mov	r3, r0
1a000720:	2b00      	cmp	r3, #0
1a000722:	d004      	beq.n	1a00072e <main+0x6a>
            DigitalOutputActivate(boardIO->ledYellow);
1a000724:	683b      	ldr	r3, [r7, #0]
1a000726:	68db      	ldr	r3, [r3, #12]
1a000728:	4618      	mov	r0, r3
1a00072a:	f7ff feff 	bl	1a00052c <DigitalOutputActivate>
        }
        if (DigitalInputGetIsActive(boardIO->keyTurnOff)) {
1a00072e:	683b      	ldr	r3, [r7, #0]
1a000730:	69db      	ldr	r3, [r3, #28]
1a000732:	4618      	mov	r0, r3
1a000734:	f7ff ff60 	bl	1a0005f8 <DigitalInputGetIsActive>
1a000738:	4603      	mov	r3, r0
1a00073a:	2b00      	cmp	r3, #0
1a00073c:	d004      	beq.n	1a000748 <main+0x84>
            DigitalOutputDeactivate(boardIO->ledYellow);
1a00073e:	683b      	ldr	r3, [r7, #0]
1a000740:	68db      	ldr	r3, [r3, #12]
1a000742:	4618      	mov	r0, r3
1a000744:	f7ff ff04 	bl	1a000550 <DigitalOutputDeactivate>
        }
        

        divisor++;
1a000748:	68fb      	ldr	r3, [r7, #12]
1a00074a:	3301      	adds	r3, #1
1a00074c:	60fb      	str	r3, [r7, #12]
        if (divisor == 5) {
1a00074e:	68fb      	ldr	r3, [r7, #12]
1a000750:	2b05      	cmp	r3, #5
1a000752:	d106      	bne.n	1a000762 <main+0x9e>
            divisor = 0;
1a000754:	2300      	movs	r3, #0
1a000756:	60fb      	str	r3, [r7, #12]
            DigitalOutputToggle(boardIO->ledGreen);
1a000758:	683b      	ldr	r3, [r7, #0]
1a00075a:	681b      	ldr	r3, [r3, #0]
1a00075c:	4618      	mov	r0, r3
1a00075e:	f7ff ff09 	bl	1a000574 <DigitalOutputToggle>
        }

        for (int index = 0; index < 100; index++) {
1a000762:	2300      	movs	r3, #0
1a000764:	60bb      	str	r3, [r7, #8]
1a000766:	e00e      	b.n	1a000786 <main+0xc2>
            for (int delay = 0; delay < 25000; delay++) {
1a000768:	2300      	movs	r3, #0
1a00076a:	607b      	str	r3, [r7, #4]
1a00076c:	e003      	b.n	1a000776 <main+0xb2>
                __asm("NOP");
1a00076e:	bf00      	nop
            for (int delay = 0; delay < 25000; delay++) {
1a000770:	687b      	ldr	r3, [r7, #4]
1a000772:	3301      	adds	r3, #1
1a000774:	607b      	str	r3, [r7, #4]
1a000776:	687b      	ldr	r3, [r7, #4]
1a000778:	f246 12a7 	movw	r2, #24999	@ 0x61a7
1a00077c:	4293      	cmp	r3, r2
1a00077e:	ddf6      	ble.n	1a00076e <main+0xaa>
        for (int index = 0; index < 100; index++) {
1a000780:	68bb      	ldr	r3, [r7, #8]
1a000782:	3301      	adds	r3, #1
1a000784:	60bb      	str	r3, [r7, #8]
1a000786:	68bb      	ldr	r3, [r7, #8]
1a000788:	2b63      	cmp	r3, #99	@ 0x63
1a00078a:	dded      	ble.n	1a000768 <main+0xa4>
        if (DigitalInputGetIsActive(boardIO->keyPush)) {
1a00078c:	e7a2      	b.n	1a0006d4 <main+0x10>
	...

1a000790 <ResetISR>:
void ResetISR(void) {
1a000790:	b580      	push	{r7, lr}
1a000792:	b088      	sub	sp, #32
1a000794:	af00      	add	r7, sp, #0
    __asm volatile("cpsid i");
1a000796:	b672      	cpsid	i
    unsigned int * RESET_CONTROL = (unsigned int *)0x40053100;
1a000798:	4b2c      	ldr	r3, [pc, #176]	@ (1a00084c <ResetISR+0xbc>)
1a00079a:	617b      	str	r3, [r7, #20]
    *(RESET_CONTROL + 0) = 0x10DF1000;
1a00079c:	697b      	ldr	r3, [r7, #20]
1a00079e:	4a2c      	ldr	r2, [pc, #176]	@ (1a000850 <ResetISR+0xc0>)
1a0007a0:	601a      	str	r2, [r3, #0]
    *(RESET_CONTROL + 1) = 0x01DFF7FF;
1a0007a2:	697b      	ldr	r3, [r7, #20]
1a0007a4:	3304      	adds	r3, #4
1a0007a6:	4a2b      	ldr	r2, [pc, #172]	@ (1a000854 <ResetISR+0xc4>)
1a0007a8:	601a      	str	r2, [r3, #0]
    volatile unsigned int * NVIC_ICPR = (unsigned int *)0xE000E280;
1a0007aa:	4b2b      	ldr	r3, [pc, #172]	@ (1a000858 <ResetISR+0xc8>)
1a0007ac:	613b      	str	r3, [r7, #16]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a0007ae:	2300      	movs	r3, #0
1a0007b0:	61fb      	str	r3, [r7, #28]
1a0007b2:	e009      	b.n	1a0007c8 <ResetISR+0x38>
        *(NVIC_ICPR + irqpendloop) = 0xFFFFFFFF;
1a0007b4:	69fb      	ldr	r3, [r7, #28]
1a0007b6:	009b      	lsls	r3, r3, #2
1a0007b8:	693a      	ldr	r2, [r7, #16]
1a0007ba:	4413      	add	r3, r2
1a0007bc:	f04f 32ff 	mov.w	r2, #4294967295
1a0007c0:	601a      	str	r2, [r3, #0]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a0007c2:	69fb      	ldr	r3, [r7, #28]
1a0007c4:	3301      	adds	r3, #1
1a0007c6:	61fb      	str	r3, [r7, #28]
1a0007c8:	69fb      	ldr	r3, [r7, #28]
1a0007ca:	2b07      	cmp	r3, #7
1a0007cc:	d9f2      	bls.n	1a0007b4 <ResetISR+0x24>
    __asm volatile("cpsie i");
1a0007ce:	b662      	cpsie	i
    SectionTableAddr = &__data_section_table;
1a0007d0:	4b22      	ldr	r3, [pc, #136]	@ (1a00085c <ResetISR+0xcc>)
1a0007d2:	61bb      	str	r3, [r7, #24]
    while (SectionTableAddr < &__data_section_table_end) {
1a0007d4:	e013      	b.n	1a0007fe <ResetISR+0x6e>
        LoadAddr = *SectionTableAddr++;
1a0007d6:	69bb      	ldr	r3, [r7, #24]
1a0007d8:	1d1a      	adds	r2, r3, #4
1a0007da:	61ba      	str	r2, [r7, #24]
1a0007dc:	681b      	ldr	r3, [r3, #0]
1a0007de:	603b      	str	r3, [r7, #0]
        ExeAddr = *SectionTableAddr++;
1a0007e0:	69bb      	ldr	r3, [r7, #24]
1a0007e2:	1d1a      	adds	r2, r3, #4
1a0007e4:	61ba      	str	r2, [r7, #24]
1a0007e6:	681b      	ldr	r3, [r3, #0]
1a0007e8:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a0007ea:	69bb      	ldr	r3, [r7, #24]
1a0007ec:	1d1a      	adds	r2, r3, #4
1a0007ee:	61ba      	str	r2, [r7, #24]
1a0007f0:	681b      	ldr	r3, [r3, #0]
1a0007f2:	607b      	str	r3, [r7, #4]
        data_init(LoadAddr, ExeAddr, SectionLen);
1a0007f4:	687a      	ldr	r2, [r7, #4]
1a0007f6:	68b9      	ldr	r1, [r7, #8]
1a0007f8:	6838      	ldr	r0, [r7, #0]
1a0007fa:	f7ff fcbd 	bl	1a000178 <data_init>
    while (SectionTableAddr < &__data_section_table_end) {
1a0007fe:	69bb      	ldr	r3, [r7, #24]
1a000800:	4a17      	ldr	r2, [pc, #92]	@ (1a000860 <ResetISR+0xd0>)
1a000802:	4293      	cmp	r3, r2
1a000804:	d3e7      	bcc.n	1a0007d6 <ResetISR+0x46>
    while (SectionTableAddr < &__bss_section_table_end) {
1a000806:	e00d      	b.n	1a000824 <ResetISR+0x94>
        ExeAddr = *SectionTableAddr++;
1a000808:	69bb      	ldr	r3, [r7, #24]
1a00080a:	1d1a      	adds	r2, r3, #4
1a00080c:	61ba      	str	r2, [r7, #24]
1a00080e:	681b      	ldr	r3, [r3, #0]
1a000810:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a000812:	69bb      	ldr	r3, [r7, #24]
1a000814:	1d1a      	adds	r2, r3, #4
1a000816:	61ba      	str	r2, [r7, #24]
1a000818:	681b      	ldr	r3, [r3, #0]
1a00081a:	607b      	str	r3, [r7, #4]
        bss_init(ExeAddr, SectionLen);
1a00081c:	6879      	ldr	r1, [r7, #4]
1a00081e:	68b8      	ldr	r0, [r7, #8]
1a000820:	f7ff fccd 	bl	1a0001be <bss_init>
    while (SectionTableAddr < &__bss_section_table_end) {
1a000824:	69bb      	ldr	r3, [r7, #24]
1a000826:	4a0f      	ldr	r2, [pc, #60]	@ (1a000864 <ResetISR+0xd4>)
1a000828:	4293      	cmp	r3, r2
1a00082a:	d3ed      	bcc.n	1a000808 <ResetISR+0x78>
    asm("LDR.W R0, =0xE000ED88");
1a00082c:	f8df 0040 	ldr.w	r0, [pc, #64]	@ 1a000870 <ResetISR+0xe0>
    asm("LDR R1, [R0]");
1a000830:	6801      	ldr	r1, [r0, #0]
    asm(" ORR R1, R1, #(0xF << 20)");
1a000832:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
    asm("STR R1, [R0]");
1a000836:	6001      	str	r1, [r0, #0]
    unsigned int * pSCB_VTOR = (unsigned int *)0xE000ED08;
1a000838:	4b0b      	ldr	r3, [pc, #44]	@ (1a000868 <ResetISR+0xd8>)
1a00083a:	60fb      	str	r3, [r7, #12]
        *pSCB_VTOR = (unsigned int)g_pfnVectors;
1a00083c:	4a0b      	ldr	r2, [pc, #44]	@ (1a00086c <ResetISR+0xdc>)
1a00083e:	68fb      	ldr	r3, [r7, #12]
1a000840:	601a      	str	r2, [r3, #0]
    main();
1a000842:	f7ff ff3f 	bl	1a0006c4 <main>
    while (1) {
1a000846:	bf00      	nop
1a000848:	e7fd      	b.n	1a000846 <ResetISR+0xb6>
1a00084a:	bf00      	nop
1a00084c:	40053100 	.word	0x40053100
1a000850:	10df1000 	.word	0x10df1000
1a000854:	01dff7ff 	.word	0x01dff7ff
1a000858:	e000e280 	.word	0xe000e280
1a00085c:	1a000114 	.word	0x1a000114
1a000860:	1a000150 	.word	0x1a000150
1a000864:	1a000178 	.word	0x1a000178
1a000868:	e000ed08 	.word	0xe000ed08
1a00086c:	1a000000 	.word	0x1a000000
1a000870:	e000ed88 	.word	0xe000ed88

1a000874 <malloc>:
1a000874:	4b02      	ldr	r3, [pc, #8]	@ (1a000880 <malloc+0xc>)
1a000876:	4601      	mov	r1, r0
1a000878:	6818      	ldr	r0, [r3, #0]
1a00087a:	f000 b82f 	b.w	1a0008dc <_malloc_r>
1a00087e:	bf00      	nop
1a000880:	10000000 	.word	0x10000000

1a000884 <free>:
1a000884:	4b02      	ldr	r3, [pc, #8]	@ (1a000890 <free+0xc>)
1a000886:	4601      	mov	r1, r0
1a000888:	6818      	ldr	r0, [r3, #0]
1a00088a:	f000 b8d9 	b.w	1a000a40 <_free_r>
1a00088e:	bf00      	nop
1a000890:	10000000 	.word	0x10000000

1a000894 <sbrk_aligned>:
1a000894:	b570      	push	{r4, r5, r6, lr}
1a000896:	4e10      	ldr	r6, [pc, #64]	@ (1a0008d8 <sbrk_aligned+0x44>)
1a000898:	6833      	ldr	r3, [r6, #0]
1a00089a:	4605      	mov	r5, r0
1a00089c:	460c      	mov	r4, r1
1a00089e:	b1b3      	cbz	r3, 1a0008ce <sbrk_aligned+0x3a>
1a0008a0:	4621      	mov	r1, r4
1a0008a2:	4628      	mov	r0, r5
1a0008a4:	f000 f8a6 	bl	1a0009f4 <_sbrk_r>
1a0008a8:	1c43      	adds	r3, r0, #1
1a0008aa:	d00c      	beq.n	1a0008c6 <sbrk_aligned+0x32>
1a0008ac:	1cc4      	adds	r4, r0, #3
1a0008ae:	f024 0403 	bic.w	r4, r4, #3
1a0008b2:	42a0      	cmp	r0, r4
1a0008b4:	d005      	beq.n	1a0008c2 <sbrk_aligned+0x2e>
1a0008b6:	1a21      	subs	r1, r4, r0
1a0008b8:	4628      	mov	r0, r5
1a0008ba:	f000 f89b 	bl	1a0009f4 <_sbrk_r>
1a0008be:	3001      	adds	r0, #1
1a0008c0:	d001      	beq.n	1a0008c6 <sbrk_aligned+0x32>
1a0008c2:	4620      	mov	r0, r4
1a0008c4:	bd70      	pop	{r4, r5, r6, pc}
1a0008c6:	f04f 34ff 	mov.w	r4, #4294967295
1a0008ca:	4620      	mov	r0, r4
1a0008cc:	bd70      	pop	{r4, r5, r6, pc}
1a0008ce:	4619      	mov	r1, r3
1a0008d0:	f000 f890 	bl	1a0009f4 <_sbrk_r>
1a0008d4:	6030      	str	r0, [r6, #0]
1a0008d6:	e7e3      	b.n	1a0008a0 <sbrk_aligned+0xc>
1a0008d8:	10000050 	.word	0x10000050

1a0008dc <_malloc_r>:
1a0008dc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
1a0008e0:	1ccd      	adds	r5, r1, #3
1a0008e2:	f025 0503 	bic.w	r5, r5, #3
1a0008e6:	3508      	adds	r5, #8
1a0008e8:	2d0c      	cmp	r5, #12
1a0008ea:	bf38      	it	cc
1a0008ec:	250c      	movcc	r5, #12
1a0008ee:	2d00      	cmp	r5, #0
1a0008f0:	4606      	mov	r6, r0
1a0008f2:	db18      	blt.n	1a000926 <_malloc_r+0x4a>
1a0008f4:	42a9      	cmp	r1, r5
1a0008f6:	d816      	bhi.n	1a000926 <_malloc_r+0x4a>
1a0008f8:	f8df 80dc 	ldr.w	r8, [pc, #220]	@ 1a0009d8 <_malloc_r+0xfc>
1a0008fc:	f000 f86e 	bl	1a0009dc <__malloc_lock>
1a000900:	f8d8 2004 	ldr.w	r2, [r8, #4]
1a000904:	b1a2      	cbz	r2, 1a000930 <_malloc_r+0x54>
1a000906:	4614      	mov	r4, r2
1a000908:	e003      	b.n	1a000912 <_malloc_r+0x36>
1a00090a:	6863      	ldr	r3, [r4, #4]
1a00090c:	4622      	mov	r2, r4
1a00090e:	b17b      	cbz	r3, 1a000930 <_malloc_r+0x54>
1a000910:	461c      	mov	r4, r3
1a000912:	6823      	ldr	r3, [r4, #0]
1a000914:	1b5b      	subs	r3, r3, r5
1a000916:	d4f8      	bmi.n	1a00090a <_malloc_r+0x2e>
1a000918:	2b0b      	cmp	r3, #11
1a00091a:	d81f      	bhi.n	1a00095c <_malloc_r+0x80>
1a00091c:	4294      	cmp	r4, r2
1a00091e:	6863      	ldr	r3, [r4, #4]
1a000920:	d054      	beq.n	1a0009cc <_malloc_r+0xf0>
1a000922:	6053      	str	r3, [r2, #4]
1a000924:	e00c      	b.n	1a000940 <_malloc_r+0x64>
1a000926:	230c      	movs	r3, #12
1a000928:	6033      	str	r3, [r6, #0]
1a00092a:	2000      	movs	r0, #0
1a00092c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
1a000930:	4629      	mov	r1, r5
1a000932:	4630      	mov	r0, r6
1a000934:	f7ff ffae 	bl	1a000894 <sbrk_aligned>
1a000938:	1c43      	adds	r3, r0, #1
1a00093a:	4604      	mov	r4, r0
1a00093c:	d019      	beq.n	1a000972 <_malloc_r+0x96>
1a00093e:	6005      	str	r5, [r0, #0]
1a000940:	4630      	mov	r0, r6
1a000942:	f000 f851 	bl	1a0009e8 <__malloc_unlock>
1a000946:	f104 000b 	add.w	r0, r4, #11
1a00094a:	1d23      	adds	r3, r4, #4
1a00094c:	f020 0007 	bic.w	r0, r0, #7
1a000950:	1ac2      	subs	r2, r0, r3
1a000952:	bf1c      	itt	ne
1a000954:	1a1b      	subne	r3, r3, r0
1a000956:	50a3      	strne	r3, [r4, r2]
1a000958:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
1a00095c:	1961      	adds	r1, r4, r5
1a00095e:	4294      	cmp	r4, r2
1a000960:	6025      	str	r5, [r4, #0]
1a000962:	bf14      	ite	ne
1a000964:	6051      	strne	r1, [r2, #4]
1a000966:	f8c8 1004 	streq.w	r1, [r8, #4]
1a00096a:	5163      	str	r3, [r4, r5]
1a00096c:	6863      	ldr	r3, [r4, #4]
1a00096e:	604b      	str	r3, [r1, #4]
1a000970:	e7e6      	b.n	1a000940 <_malloc_r+0x64>
1a000972:	f8d8 7004 	ldr.w	r7, [r8, #4]
1a000976:	b31f      	cbz	r7, 1a0009c0 <_malloc_r+0xe4>
1a000978:	463c      	mov	r4, r7
1a00097a:	687f      	ldr	r7, [r7, #4]
1a00097c:	2f00      	cmp	r7, #0
1a00097e:	d1fb      	bne.n	1a000978 <_malloc_r+0x9c>
1a000980:	6823      	ldr	r3, [r4, #0]
1a000982:	4639      	mov	r1, r7
1a000984:	4630      	mov	r0, r6
1a000986:	eb04 0903 	add.w	r9, r4, r3
1a00098a:	f000 f833 	bl	1a0009f4 <_sbrk_r>
1a00098e:	4581      	cmp	r9, r0
1a000990:	d116      	bne.n	1a0009c0 <_malloc_r+0xe4>
1a000992:	6823      	ldr	r3, [r4, #0]
1a000994:	1aed      	subs	r5, r5, r3
1a000996:	4629      	mov	r1, r5
1a000998:	4630      	mov	r0, r6
1a00099a:	f7ff ff7b 	bl	1a000894 <sbrk_aligned>
1a00099e:	3001      	adds	r0, #1
1a0009a0:	d00e      	beq.n	1a0009c0 <_malloc_r+0xe4>
1a0009a2:	6823      	ldr	r3, [r4, #0]
1a0009a4:	f8d8 2004 	ldr.w	r2, [r8, #4]
1a0009a8:	442b      	add	r3, r5
1a0009aa:	6023      	str	r3, [r4, #0]
1a0009ac:	6853      	ldr	r3, [r2, #4]
1a0009ae:	b183      	cbz	r3, 1a0009d2 <_malloc_r+0xf6>
1a0009b0:	42a3      	cmp	r3, r4
1a0009b2:	d003      	beq.n	1a0009bc <_malloc_r+0xe0>
1a0009b4:	461a      	mov	r2, r3
1a0009b6:	685b      	ldr	r3, [r3, #4]
1a0009b8:	429c      	cmp	r4, r3
1a0009ba:	d1fb      	bne.n	1a0009b4 <_malloc_r+0xd8>
1a0009bc:	2300      	movs	r3, #0
1a0009be:	e7b0      	b.n	1a000922 <_malloc_r+0x46>
1a0009c0:	230c      	movs	r3, #12
1a0009c2:	6033      	str	r3, [r6, #0]
1a0009c4:	4630      	mov	r0, r6
1a0009c6:	f000 f80f 	bl	1a0009e8 <__malloc_unlock>
1a0009ca:	e7ae      	b.n	1a00092a <_malloc_r+0x4e>
1a0009cc:	f8c8 3004 	str.w	r3, [r8, #4]
1a0009d0:	e7b6      	b.n	1a000940 <_malloc_r+0x64>
1a0009d2:	f8c8 7004 	str.w	r7, [r8, #4]
1a0009d6:	e7b3      	b.n	1a000940 <_malloc_r+0x64>
1a0009d8:	10000050 	.word	0x10000050

1a0009dc <__malloc_lock>:
1a0009dc:	4801      	ldr	r0, [pc, #4]	@ (1a0009e4 <__malloc_lock+0x8>)
1a0009de:	f000 b825 	b.w	1a000a2c <__retarget_lock_acquire_recursive>
1a0009e2:	bf00      	nop
1a0009e4:	100001a8 	.word	0x100001a8

1a0009e8 <__malloc_unlock>:
1a0009e8:	4801      	ldr	r0, [pc, #4]	@ (1a0009f0 <__malloc_unlock+0x8>)
1a0009ea:	f000 b827 	b.w	1a000a3c <__retarget_lock_release_recursive>
1a0009ee:	bf00      	nop
1a0009f0:	100001a8 	.word	0x100001a8

1a0009f4 <_sbrk_r>:
1a0009f4:	b538      	push	{r3, r4, r5, lr}
1a0009f6:	4d07      	ldr	r5, [pc, #28]	@ (1a000a14 <_sbrk_r+0x20>)
1a0009f8:	2200      	movs	r2, #0
1a0009fa:	4604      	mov	r4, r0
1a0009fc:	4608      	mov	r0, r1
1a0009fe:	602a      	str	r2, [r5, #0]
1a000a00:	f000 f87c 	bl	1a000afc <_sbrk>
1a000a04:	1c43      	adds	r3, r0, #1
1a000a06:	d000      	beq.n	1a000a0a <_sbrk_r+0x16>
1a000a08:	bd38      	pop	{r3, r4, r5, pc}
1a000a0a:	682b      	ldr	r3, [r5, #0]
1a000a0c:	2b00      	cmp	r3, #0
1a000a0e:	d0fb      	beq.n	1a000a08 <_sbrk_r+0x14>
1a000a10:	6023      	str	r3, [r4, #0]
1a000a12:	bd38      	pop	{r3, r4, r5, pc}
1a000a14:	10000194 	.word	0x10000194

1a000a18 <__retarget_lock_init>:
1a000a18:	4770      	bx	lr
1a000a1a:	bf00      	nop

1a000a1c <__retarget_lock_init_recursive>:
1a000a1c:	4770      	bx	lr
1a000a1e:	bf00      	nop

1a000a20 <__retarget_lock_close>:
1a000a20:	4770      	bx	lr
1a000a22:	bf00      	nop

1a000a24 <__retarget_lock_close_recursive>:
1a000a24:	4770      	bx	lr
1a000a26:	bf00      	nop

1a000a28 <__retarget_lock_acquire>:
1a000a28:	4770      	bx	lr
1a000a2a:	bf00      	nop

1a000a2c <__retarget_lock_acquire_recursive>:
1a000a2c:	4770      	bx	lr
1a000a2e:	bf00      	nop

1a000a30 <__retarget_lock_try_acquire>:
1a000a30:	2001      	movs	r0, #1
1a000a32:	4770      	bx	lr

1a000a34 <__retarget_lock_try_acquire_recursive>:
1a000a34:	2001      	movs	r0, #1
1a000a36:	4770      	bx	lr

1a000a38 <__retarget_lock_release>:
1a000a38:	4770      	bx	lr
1a000a3a:	bf00      	nop

1a000a3c <__retarget_lock_release_recursive>:
1a000a3c:	4770      	bx	lr
1a000a3e:	bf00      	nop

1a000a40 <_free_r>:
1a000a40:	2900      	cmp	r1, #0
1a000a42:	d050      	beq.n	1a000ae6 <_free_r+0xa6>
1a000a44:	b538      	push	{r3, r4, r5, lr}
1a000a46:	f851 3c04 	ldr.w	r3, [r1, #-4]
1a000a4a:	1f0c      	subs	r4, r1, #4
1a000a4c:	2b00      	cmp	r3, #0
1a000a4e:	bfb8      	it	lt
1a000a50:	18e4      	addlt	r4, r4, r3
1a000a52:	4605      	mov	r5, r0
1a000a54:	f7ff ffc2 	bl	1a0009dc <__malloc_lock>
1a000a58:	4a27      	ldr	r2, [pc, #156]	@ (1a000af8 <_free_r+0xb8>)
1a000a5a:	6813      	ldr	r3, [r2, #0]
1a000a5c:	b12b      	cbz	r3, 1a000a6a <_free_r+0x2a>
1a000a5e:	42a3      	cmp	r3, r4
1a000a60:	d90c      	bls.n	1a000a7c <_free_r+0x3c>
1a000a62:	6821      	ldr	r1, [r4, #0]
1a000a64:	1860      	adds	r0, r4, r1
1a000a66:	4283      	cmp	r3, r0
1a000a68:	d02c      	beq.n	1a000ac4 <_free_r+0x84>
1a000a6a:	6063      	str	r3, [r4, #4]
1a000a6c:	4628      	mov	r0, r5
1a000a6e:	6014      	str	r4, [r2, #0]
1a000a70:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a000a74:	f7ff bfb8 	b.w	1a0009e8 <__malloc_unlock>
1a000a78:	42a3      	cmp	r3, r4
1a000a7a:	d80f      	bhi.n	1a000a9c <_free_r+0x5c>
1a000a7c:	461a      	mov	r2, r3
1a000a7e:	685b      	ldr	r3, [r3, #4]
1a000a80:	2b00      	cmp	r3, #0
1a000a82:	d1f9      	bne.n	1a000a78 <_free_r+0x38>
1a000a84:	6811      	ldr	r1, [r2, #0]
1a000a86:	1850      	adds	r0, r2, r1
1a000a88:	4284      	cmp	r4, r0
1a000a8a:	d017      	beq.n	1a000abc <_free_r+0x7c>
1a000a8c:	d32c      	bcc.n	1a000ae8 <_free_r+0xa8>
1a000a8e:	6063      	str	r3, [r4, #4]
1a000a90:	6054      	str	r4, [r2, #4]
1a000a92:	4628      	mov	r0, r5
1a000a94:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a000a98:	f7ff bfa6 	b.w	1a0009e8 <__malloc_unlock>
1a000a9c:	6811      	ldr	r1, [r2, #0]
1a000a9e:	1850      	adds	r0, r2, r1
1a000aa0:	42a0      	cmp	r0, r4
1a000aa2:	d014      	beq.n	1a000ace <_free_r+0x8e>
1a000aa4:	d820      	bhi.n	1a000ae8 <_free_r+0xa8>
1a000aa6:	6821      	ldr	r1, [r4, #0]
1a000aa8:	1860      	adds	r0, r4, r1
1a000aaa:	4283      	cmp	r3, r0
1a000aac:	d1ef      	bne.n	1a000a8e <_free_r+0x4e>
1a000aae:	6818      	ldr	r0, [r3, #0]
1a000ab0:	685b      	ldr	r3, [r3, #4]
1a000ab2:	4408      	add	r0, r1
1a000ab4:	e9c4 0300 	strd	r0, r3, [r4]
1a000ab8:	6054      	str	r4, [r2, #4]
1a000aba:	e7ea      	b.n	1a000a92 <_free_r+0x52>
1a000abc:	6823      	ldr	r3, [r4, #0]
1a000abe:	440b      	add	r3, r1
1a000ac0:	6013      	str	r3, [r2, #0]
1a000ac2:	e7e6      	b.n	1a000a92 <_free_r+0x52>
1a000ac4:	6818      	ldr	r0, [r3, #0]
1a000ac6:	685b      	ldr	r3, [r3, #4]
1a000ac8:	4408      	add	r0, r1
1a000aca:	6020      	str	r0, [r4, #0]
1a000acc:	e7cd      	b.n	1a000a6a <_free_r+0x2a>
1a000ace:	6820      	ldr	r0, [r4, #0]
1a000ad0:	4401      	add	r1, r0
1a000ad2:	1850      	adds	r0, r2, r1
1a000ad4:	4283      	cmp	r3, r0
1a000ad6:	6011      	str	r1, [r2, #0]
1a000ad8:	d1db      	bne.n	1a000a92 <_free_r+0x52>
1a000ada:	e9d3 0400 	ldrd	r0, r4, [r3]
1a000ade:	4401      	add	r1, r0
1a000ae0:	e9c2 1400 	strd	r1, r4, [r2]
1a000ae4:	e7d5      	b.n	1a000a92 <_free_r+0x52>
1a000ae6:	4770      	bx	lr
1a000ae8:	230c      	movs	r3, #12
1a000aea:	602b      	str	r3, [r5, #0]
1a000aec:	4628      	mov	r0, r5
1a000aee:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a000af2:	f7ff bf79 	b.w	1a0009e8 <__malloc_unlock>
1a000af6:	bf00      	nop
1a000af8:	10000054 	.word	0x10000054

1a000afc <_sbrk>:
1a000afc:	4a04      	ldr	r2, [pc, #16]	@ (1a000b10 <_sbrk+0x14>)
1a000afe:	4905      	ldr	r1, [pc, #20]	@ (1a000b14 <_sbrk+0x18>)
1a000b00:	6813      	ldr	r3, [r2, #0]
1a000b02:	2b00      	cmp	r3, #0
1a000b04:	bf08      	it	eq
1a000b06:	460b      	moveq	r3, r1
1a000b08:	4418      	add	r0, r3
1a000b0a:	6010      	str	r0, [r2, #0]
1a000b0c:	4618      	mov	r0, r3
1a000b0e:	4770      	bx	lr
1a000b10:	100001b8 	.word	0x100001b8
1a000b14:	100001bc 	.word	0x100001bc
