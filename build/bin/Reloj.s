
build/bin/Reloj.elf:     file format elf32-littlearm
build/bin/Reloj.elf
architecture: armv7e-m, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x1a00061d

Program Header:
    LOAD off    0x00001000 vaddr 0x1a000000 paddr 0x1a000000 align 2**12
         filesz 0x00000700 memsz 0x00000700 flags r-x
private flags = 0x5000200: [Version5 EABI] [soft-float ABI]

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00000248  1a000000  1a000000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .init         00000004  1a000248  1a000248  00001248  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .fini         00000004  1a00024c  1a00024c  0000124c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  3 .data         00000000  10000000  10000000  00001700  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  4 .data_RAM2    00000000  10080000  10080000  00001700  2**2
                  CONTENTS
  5 .data_RAM3    00000000  20000000  20000000  00001700  2**2
                  CONTENTS
  6 .data_RAM4    00000000  20008000  20008000  00001700  2**2
                  CONTENTS
  7 .data_RAM5    00000000  2000c000  2000c000  00001700  2**2
                  CONTENTS
  8 .bss          00000000  10000000  10000000  00000000  2**2
                  ALLOC
  9 .text         000004b0  1a000250  1a000250  00001250  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .uninit_RESERVED 00000000  10000000  10000000  00001700  2**2
                  CONTENTS
 11 .noinit_RAM2  00000000  10080000  10080000  00001700  2**2
                  CONTENTS
 12 .noinit_RAM3  00000000  20000000  20000000  00001700  2**2
                  CONTENTS
 13 .noinit_RAM4  00000000  20008000  20008000  00001700  2**2
                  CONTENTS
 14 .noinit_RAM5  00000000  2000c000  2000c000  00001700  2**2
                  CONTENTS
 15 .noinit       00000000  10000000  10000000  00000000  2**2
                  ALLOC
 16 .ARM.attributes 0000002e  00000000  00000000  00001700  2**0
                  CONTENTS, READONLY
 17 .comment      00000012  00000000  00000000  0000172e  2**0
                  CONTENTS, READONLY
 18 .debug_info   00000856  00000000  00000000  00001740  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 19 .debug_abbrev 00000331  00000000  00000000  00001f96  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 20 .debug_aranges 000000d8  00000000  00000000  000022c7  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 21 .debug_rnglists 0000009a  00000000  00000000  0000239f  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 22 .debug_macro  000043ce  00000000  00000000  00002439  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 23 .debug_line   00000a5a  00000000  00000000  00006807  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 24 .debug_str    000170c5  00000000  00000000  00007261  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 25 .debug_frame  000002b4  00000000  00000000  0001e328  2**2
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
10000000 l    d  .bss	00000000 .bss
1a000250 l    d  .text	00000000 .text
10000000 l    d  .uninit_RESERVED	00000000 .uninit_RESERVED
10080000 l    d  .noinit_RAM2	00000000 .noinit_RAM2
20000000 l    d  .noinit_RAM3	00000000 .noinit_RAM3
20008000 l    d  .noinit_RAM4	00000000 .noinit_RAM4
2000c000 l    d  .noinit_RAM5	00000000 .noinit_RAM5
10000000 l    d  .noinit	00000000 .noinit
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
00000000 l    df *ABS*	00000000 cr_startup_lpc43xx.c
00000000 l    df *ABS*	00000000 crti.o
00000000 l    df *ABS*	00000000 main.c
1a000250 l     F .text	00000034 Chip_SCU_PinMuxSet
1a000284 l     F .text	00000038 Chip_GPIO_SetPinState
1a0002bc l     F .text	00000034 Chip_GPIO_ReadPortBit
1a0002f0 l     F .text	0000003e Chip_GPIO_SetPinDIROutput
1a00032e l     F .text	00000040 Chip_GPIO_SetPinDIRInput
1a00036e l     F .text	00000042 Chip_GPIO_SetPinDIR
1a0003b0 l     F .text	00000032 Chip_GPIO_SetPinToggle
1a000240  w    F .text	00000008 TIMER2_IRQHandler
1a000228  w    F .text	00000008 DebugMon_Handler
1a000240  w    F .text	00000008 RIT_IRQHandler
1a080000 g       *ABS*	00000000 __top_MFlashA512
1a000114 g       .text	00000000 __section_table_start
1a000240  w    F .text	00000008 FLASH_EEPROM_IRQHandler
1a000240  w    F .text	00000008 I2C0_IRQHandler
1a000200  w    F .text	00000008 HardFault_Handler
2000c000 g       *ABS*	00000000 __base_RamAHB_ETB16
1a000000 g       *ABS*	00000000 __vectors_start__
1a000238  w    F .text	00000008 SysTick_Handler
2000c000 g       *ABS*	00000000 __top_RAM4
1a000240  w    F .text	00000008 SDIO_IRQHandler
20000000 g       *ABS*	00000000 __base_RamAHB32
1a000240  w    F .text	00000008 ATIMER_IRQHandler
10080000 g       *ABS*	00000000 __base_RAM2
1a000230  w    F .text	00000008 PendSV_Handler
1a0001f8  w    F .text	00000008 NMI_Handler
1a000700 g       .text	00000000 __exidx_end
1a000150 g       .text	00000000 __data_section_table_end
1a000240  w    F .text	00000008 I2C1_IRQHandler
1a000240  w    F .text	00000008 UART1_IRQHandler
1a000240  w    F .text	00000008 GPIO5_IRQHandler
1a000240  w    F .text	00000008 CAN1_IRQHandler
53ff6fb6 g       *ABS*	00000000 __valid_user_code_checksum
1a000700 g       .text	00000000 _etext
1a000240  w    F .text	00000008 USB1_IRQHandler
1a000240  w    F .text	00000008 I2S0_IRQHandler
1a000240  w    F .text	00000008 TIMER3_IRQHandler
1a000240  w    F .text	00000008 UART0_IRQHandler
1a0001be g     F .text	0000003a bss_init
1a000240  w    F .text	00000008 SGPIO_IRQHandler
10000000 g       .noinit	00000000 _noinit
2000c000 g       *ABS*	00000000 __base_RAM5
1a000240  w    F .text	00000008 ADC0_IRQHandler
1a000218  w    F .text	00000008 UsageFault_Handler
10008000 g       *ABS*	00000000 __top_RAM
1a000240  w    F .text	00000008 GPIO6_IRQHandler
20008000 g       *ABS*	00000000 __top_RamAHB32
1a000240  w    F .text	00000008 IntDefaultHandler
1008a000 g       *ABS*	00000000 __top_RAM2
1a000240  w    F .text	00000008 GPIO1_IRQHandler
1a000240  w    F .text	00000008 SSP0_IRQHandler
1a000700 g       .text	00000000 __exidx_start
1a000240  w    F .text	00000008 ADC1_IRQHandler
1a000248 g     F .init	00000000 _init
1a000114 g       .text	00000000 __data_section_table
10000000 g       *ABS*	00000000 __base_RamLoc32
1a000240  w    F .text	00000008 RTC_IRQHandler
10000000 g       .bss	00000000 _ebss
1a000240  w    F .text	00000008 TIMER0_IRQHandler
20010000 g       *ABS*	00000000 __top_RamAHB_ETB16
1a000240  w    F .text	00000008 SPI_IRQHandler
1a000240  w    F .text	00000008 LCD_IRQHandler
20000000 g       *ABS*	00000000 __base_RAM3
20010000 g       *ABS*	00000000 __top_RAM5
10008000 g       *ABS*	00000000 __top_RamLoc32
1a000240  w    F .text	00000008 VADC_IRQHandler
1a000178 g     F .text	00000046 data_init
1a000240  w    F .text	00000008 TIMER1_IRQHandler
10000000 g       .bss	00000000 end
1a000240  w    F .text	00000008 UART2_IRQHandler
1a000000 g       *ABS*	00000000 __base_Flash
1a000240  w    F .text	00000008 GPIO2_IRQHandler
1b080000 g       *ABS*	00000000 __top_Flash2
10000000 g       .bss	00000000 _bss
1a000240  w    F .text	00000008 I2S1_IRQHandler
1a080000 g       *ABS*	00000000 __top_Flash
10000000 g       .noinit	00000000 _end_noinit
10008000 g       *ABS*	00000000 _vStackTop
1a000240  w    F .text	00000008 SSP1_IRQHandler
1a000178 g       .text	00000000 __bss_section_table_end
1a000000 g       *ABS*	00000000 __base_MFlashA512
1b000000 g       *ABS*	00000000 __base_Flash2
1a000240  w    F .text	00000008 USB0_IRQHandler
20008000 g       *ABS*	00000000 __base_RamAHB16
1a000240  w    F .text	00000008 GPIO3_IRQHandler
1a000240  w    F .text	00000008 SCT_IRQHandler
1a000208  w    F .text	00000008 MemManage_Handler
1a0003e4 g     F .text	00000238 main
1a000240  w    F .text	00000008 WDT_IRQHandler
2000c000 g       *ABS*	00000000 __top_RamAHB16
1008a000 g       *ABS*	00000000 __top_RamLoc40
1a000220  w    F .text	00000008 SVC_Handler
20008000 g       *ABS*	00000000 __base_RAM4
1a000240  w    F .text	00000008 GPIO7_IRQHandler
1a000240  w    F .text	00000008 SPIFI_IRQHandler
1a000240  w    F .text	00000008 QEI_IRQHandler
1a000150 g       .text	00000000 __bss_section_table
1a00024c g     F .fini	00000000 _fini
10080000 g       *ABS*	00000000 __base_RamLoc40
1a000240  w    F .text	00000008 ETH_IRQHandler
1a000240  w    F .text	00000008 M0CORE_IRQHandler
10000000 g       .uninit_RESERVED	00000000 _end_uninit_RESERVED
1a000240  w    F .text	00000008 CAN0_IRQHandler
10000000 g       .data	00000000 _data
1a000178 g       .text	00000000 __section_table_end
1a000240  w    F .text	00000008 GINT0_IRQHandler
1b000000 g       *ABS*	00000000 __base_MFlashB512
1a000240  w    F .text	00000008 DAC_IRQHandler
10000000 g       .data	00000000 _edata
1a000240  w    F .text	00000008 M0SUB_IRQHandler
1a000240  w    F .text	00000008 GPIO0_IRQHandler
10000000 g       *ABS*	00000000 __base_RAM
1a000000 g     O .text	00000114 g_pfnVectors
1a00061c g     F .text	000000e0 ResetISR
1a000240  w    F .text	00000008 DMA_IRQHandler
1a000240  w    F .text	00000008 EVRT_IRQHandler
1b080000 g       *ABS*	00000000 __top_MFlashB512
20008000 g       *ABS*	00000000 __top_RAM3
1a000210  w    F .text	00000008 BusFault_Handler
1a000240  w    F .text	00000008 UART3_IRQHandler
1a000240  w    F .text	00000008 MCPWM_IRQHandler
1a000240  w    F .text	00000008 GINT1_IRQHandler
1a000240  w    F .text	00000008 GPIO4_IRQHandler



Disassembly of section .text:

1a000000 <g_pfnVectors>:
1a000000:	00 80 00 10 1d 06 00 1a f9 01 00 1a 01 02 00 1a     ................
1a000010:	09 02 00 1a 11 02 00 1a 19 02 00 1a b6 6f ff 53     .............o.S
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
1a000114:	1a000700 	.word	0x1a000700
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000
1a000120:	1a000700 	.word	0x1a000700
1a000124:	10080000 	.word	0x10080000
1a000128:	00000000 	.word	0x00000000
1a00012c:	1a000700 	.word	0x1a000700
1a000130:	20000000 	.word	0x20000000
1a000134:	00000000 	.word	0x00000000
1a000138:	1a000700 	.word	0x1a000700
1a00013c:	20008000 	.word	0x20008000
1a000140:	00000000 	.word	0x00000000
1a000144:	1a000700 	.word	0x1a000700
1a000148:	2000c000 	.word	0x2000c000
1a00014c:	00000000 	.word	0x00000000

1a000150 <__bss_section_table>:
1a000150:	10000000 	.word	0x10000000
1a000154:	00000000 	.word	0x00000000
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

1a000284 <Chip_GPIO_SetPinState>:
 * @param	setting	: true for high, false for low
 * @return	Nothing
 * @note	This function replaces Chip_GPIO_WritePortBit()
 */
STATIC INLINE void Chip_GPIO_SetPinState(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, bool setting)
{
1a000284:	b480      	push	{r7}
1a000286:	b083      	sub	sp, #12
1a000288:	af00      	add	r7, sp, #0
1a00028a:	6078      	str	r0, [r7, #4]
1a00028c:	4608      	mov	r0, r1
1a00028e:	4611      	mov	r1, r2
1a000290:	461a      	mov	r2, r3
1a000292:	4603      	mov	r3, r0
1a000294:	70fb      	strb	r3, [r7, #3]
1a000296:	460b      	mov	r3, r1
1a000298:	70bb      	strb	r3, [r7, #2]
1a00029a:	4613      	mov	r3, r2
1a00029c:	707b      	strb	r3, [r7, #1]
	pGPIO->B[port][pin] = setting;
1a00029e:	78fa      	ldrb	r2, [r7, #3]
1a0002a0:	78bb      	ldrb	r3, [r7, #2]
1a0002a2:	7878      	ldrb	r0, [r7, #1]
1a0002a4:	6879      	ldr	r1, [r7, #4]
1a0002a6:	0152      	lsls	r2, r2, #5
1a0002a8:	440a      	add	r2, r1
1a0002aa:	4413      	add	r3, r2
1a0002ac:	4602      	mov	r2, r0
1a0002ae:	701a      	strb	r2, [r3, #0]
}
1a0002b0:	bf00      	nop
1a0002b2:	370c      	adds	r7, #12
1a0002b4:	46bd      	mov	sp, r7
1a0002b6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0002ba:	4770      	bx	lr

1a0002bc <Chip_GPIO_ReadPortBit>:
 * @param	pin		: GPIO pin to read
 * @return	true of the GPIO is high, false if low
 * @note	It is recommended to use the Chip_GPIO_GetPinState() function instead.
 */
STATIC INLINE bool Chip_GPIO_ReadPortBit(LPC_GPIO_T *pGPIO, uint32_t port, uint8_t pin)
{
1a0002bc:	b480      	push	{r7}
1a0002be:	b085      	sub	sp, #20
1a0002c0:	af00      	add	r7, sp, #0
1a0002c2:	60f8      	str	r0, [r7, #12]
1a0002c4:	60b9      	str	r1, [r7, #8]
1a0002c6:	4613      	mov	r3, r2
1a0002c8:	71fb      	strb	r3, [r7, #7]
	return (bool) pGPIO->B[port][pin];
1a0002ca:	79fb      	ldrb	r3, [r7, #7]
1a0002cc:	68f9      	ldr	r1, [r7, #12]
1a0002ce:	68ba      	ldr	r2, [r7, #8]
1a0002d0:	0152      	lsls	r2, r2, #5
1a0002d2:	440a      	add	r2, r1
1a0002d4:	4413      	add	r3, r2
1a0002d6:	781b      	ldrb	r3, [r3, #0]
1a0002d8:	b2db      	uxtb	r3, r3
1a0002da:	2b00      	cmp	r3, #0
1a0002dc:	bf14      	ite	ne
1a0002de:	2301      	movne	r3, #1
1a0002e0:	2300      	moveq	r3, #0
1a0002e2:	b2db      	uxtb	r3, r3
}
1a0002e4:	4618      	mov	r0, r3
1a0002e6:	3714      	adds	r7, #20
1a0002e8:	46bd      	mov	sp, r7
1a0002ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0002ee:	4770      	bx	lr

1a0002f0 <Chip_GPIO_SetPinDIROutput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as output
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIROutput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a0002f0:	b480      	push	{r7}
1a0002f2:	b083      	sub	sp, #12
1a0002f4:	af00      	add	r7, sp, #0
1a0002f6:	6078      	str	r0, [r7, #4]
1a0002f8:	460b      	mov	r3, r1
1a0002fa:	70fb      	strb	r3, [r7, #3]
1a0002fc:	4613      	mov	r3, r2
1a0002fe:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] |= 1UL << pin;
1a000300:	78fa      	ldrb	r2, [r7, #3]
1a000302:	687b      	ldr	r3, [r7, #4]
1a000304:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000308:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a00030c:	78bb      	ldrb	r3, [r7, #2]
1a00030e:	2201      	movs	r2, #1
1a000310:	fa02 f303 	lsl.w	r3, r2, r3
1a000314:	78fa      	ldrb	r2, [r7, #3]
1a000316:	4319      	orrs	r1, r3
1a000318:	687b      	ldr	r3, [r7, #4]
1a00031a:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a00031e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a000322:	bf00      	nop
1a000324:	370c      	adds	r7, #12
1a000326:	46bd      	mov	sp, r7
1a000328:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00032c:	4770      	bx	lr

1a00032e <Chip_GPIO_SetPinDIRInput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIRInput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a00032e:	b480      	push	{r7}
1a000330:	b083      	sub	sp, #12
1a000332:	af00      	add	r7, sp, #0
1a000334:	6078      	str	r0, [r7, #4]
1a000336:	460b      	mov	r3, r1
1a000338:	70fb      	strb	r3, [r7, #3]
1a00033a:	4613      	mov	r3, r2
1a00033c:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] &= ~(1UL << pin);
1a00033e:	78fa      	ldrb	r2, [r7, #3]
1a000340:	687b      	ldr	r3, [r7, #4]
1a000342:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000346:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a00034a:	78bb      	ldrb	r3, [r7, #2]
1a00034c:	2201      	movs	r2, #1
1a00034e:	fa02 f303 	lsl.w	r3, r2, r3
1a000352:	43db      	mvns	r3, r3
1a000354:	78fa      	ldrb	r2, [r7, #3]
1a000356:	4019      	ands	r1, r3
1a000358:	687b      	ldr	r3, [r7, #4]
1a00035a:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a00035e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a000362:	bf00      	nop
1a000364:	370c      	adds	r7, #12
1a000366:	46bd      	mov	sp, r7
1a000368:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00036c:	4770      	bx	lr

1a00036e <Chip_GPIO_SetPinDIR>:
 * @param	pin		: GPIO pin to set direction for
 * @param	output	: true for output, false for input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIR(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, bool output)
{
1a00036e:	b580      	push	{r7, lr}
1a000370:	b082      	sub	sp, #8
1a000372:	af00      	add	r7, sp, #0
1a000374:	6078      	str	r0, [r7, #4]
1a000376:	4608      	mov	r0, r1
1a000378:	4611      	mov	r1, r2
1a00037a:	461a      	mov	r2, r3
1a00037c:	4603      	mov	r3, r0
1a00037e:	70fb      	strb	r3, [r7, #3]
1a000380:	460b      	mov	r3, r1
1a000382:	70bb      	strb	r3, [r7, #2]
1a000384:	4613      	mov	r3, r2
1a000386:	707b      	strb	r3, [r7, #1]
	if (output) {
1a000388:	787b      	ldrb	r3, [r7, #1]
1a00038a:	2b00      	cmp	r3, #0
1a00038c:	d006      	beq.n	1a00039c <Chip_GPIO_SetPinDIR+0x2e>
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
1a00038e:	78ba      	ldrb	r2, [r7, #2]
1a000390:	78fb      	ldrb	r3, [r7, #3]
1a000392:	4619      	mov	r1, r3
1a000394:	6878      	ldr	r0, [r7, #4]
1a000396:	f7ff ffab 	bl	1a0002f0 <Chip_GPIO_SetPinDIROutput>
	}
	else {
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
	}
}
1a00039a:	e005      	b.n	1a0003a8 <Chip_GPIO_SetPinDIR+0x3a>
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
1a00039c:	78ba      	ldrb	r2, [r7, #2]
1a00039e:	78fb      	ldrb	r3, [r7, #3]
1a0003a0:	4619      	mov	r1, r3
1a0003a2:	6878      	ldr	r0, [r7, #4]
1a0003a4:	f7ff ffc3 	bl	1a00032e <Chip_GPIO_SetPinDIRInput>
}
1a0003a8:	bf00      	nop
1a0003aa:	3708      	adds	r7, #8
1a0003ac:	46bd      	mov	sp, r7
1a0003ae:	bd80      	pop	{r7, pc}

1a0003b0 <Chip_GPIO_SetPinToggle>:
 * @return	None
 * @note	Any bit set as a '0' will not have it's state changed. This only
 * applies to ports configured as an output.
 */
STATIC INLINE void Chip_GPIO_SetPinToggle(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a0003b0:	b480      	push	{r7}
1a0003b2:	b083      	sub	sp, #12
1a0003b4:	af00      	add	r7, sp, #0
1a0003b6:	6078      	str	r0, [r7, #4]
1a0003b8:	460b      	mov	r3, r1
1a0003ba:	70fb      	strb	r3, [r7, #3]
1a0003bc:	4613      	mov	r3, r2
1a0003be:	70bb      	strb	r3, [r7, #2]
	pGPIO->NOT[port] = (1 << pin);
1a0003c0:	78bb      	ldrb	r3, [r7, #2]
1a0003c2:	2201      	movs	r2, #1
1a0003c4:	fa02 f303 	lsl.w	r3, r2, r3
1a0003c8:	78fa      	ldrb	r2, [r7, #3]
1a0003ca:	4619      	mov	r1, r3
1a0003cc:	687b      	ldr	r3, [r7, #4]
1a0003ce:	f502 620c 	add.w	r2, r2, #2240	@ 0x8c0
1a0003d2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a0003d6:	bf00      	nop
1a0003d8:	370c      	adds	r7, #12
1a0003da:	46bd      	mov	sp, r7
1a0003dc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003e0:	4770      	bx	lr
	...

1a0003e4 <main>:

/* === Private function implementation ========================================================= */

/* === Public function implementation ========================================================= */

int main(void) {
1a0003e4:	b580      	push	{r7, lr}
1a0003e6:	b086      	sub	sp, #24
1a0003e8:	af00      	add	r7, sp, #0

    int divisor  = 0;
1a0003ea:	2300      	movs	r3, #0
1a0003ec:	617b      	str	r3, [r7, #20]
    bool current_state, last_state = false;
1a0003ee:	2300      	movs	r3, #0
1a0003f0:	74fb      	strb	r3, [r7, #19]

    Chip_SCU_PinMuxSet(LED_R_PORT, LED_R_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_R_FUNC);
1a0003f2:	2254      	movs	r2, #84	@ 0x54
1a0003f4:	2100      	movs	r1, #0
1a0003f6:	2002      	movs	r0, #2
1a0003f8:	f7ff ff2a 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, false);
1a0003fc:	2300      	movs	r3, #0
1a0003fe:	2200      	movs	r2, #0
1a000400:	2105      	movs	r1, #5
1a000402:	4885      	ldr	r0, [pc, #532]	@ (1a000618 <main+0x234>)
1a000404:	f7ff ff3e 	bl	1a000284 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, true);
1a000408:	2301      	movs	r3, #1
1a00040a:	2200      	movs	r2, #0
1a00040c:	2105      	movs	r1, #5
1a00040e:	4882      	ldr	r0, [pc, #520]	@ (1a000618 <main+0x234>)
1a000410:	f7ff ffad 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_G_PORT, LED_G_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_G_FUNC);
1a000414:	2254      	movs	r2, #84	@ 0x54
1a000416:	2101      	movs	r1, #1
1a000418:	2002      	movs	r0, #2
1a00041a:	f7ff ff19 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, false);
1a00041e:	2300      	movs	r3, #0
1a000420:	2201      	movs	r2, #1
1a000422:	2105      	movs	r1, #5
1a000424:	487c      	ldr	r0, [pc, #496]	@ (1a000618 <main+0x234>)
1a000426:	f7ff ff2d 	bl	1a000284 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, true);
1a00042a:	2301      	movs	r3, #1
1a00042c:	2201      	movs	r2, #1
1a00042e:	2105      	movs	r1, #5
1a000430:	4879      	ldr	r0, [pc, #484]	@ (1a000618 <main+0x234>)
1a000432:	f7ff ff9c 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_B_PORT, LED_B_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_B_FUNC);
1a000436:	2254      	movs	r2, #84	@ 0x54
1a000438:	2102      	movs	r1, #2
1a00043a:	2002      	movs	r0, #2
1a00043c:	f7ff ff08 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, false);
1a000440:	2300      	movs	r3, #0
1a000442:	2202      	movs	r2, #2
1a000444:	2105      	movs	r1, #5
1a000446:	4874      	ldr	r0, [pc, #464]	@ (1a000618 <main+0x234>)
1a000448:	f7ff ff1c 	bl	1a000284 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, true);
1a00044c:	2301      	movs	r3, #1
1a00044e:	2202      	movs	r2, #2
1a000450:	2105      	movs	r1, #5
1a000452:	4871      	ldr	r0, [pc, #452]	@ (1a000618 <main+0x234>)
1a000454:	f7ff ff8b 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    /******************/
    Chip_SCU_PinMuxSet(LED_1_PORT, LED_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_1_FUNC);
1a000458:	2250      	movs	r2, #80	@ 0x50
1a00045a:	210a      	movs	r1, #10
1a00045c:	2002      	movs	r0, #2
1a00045e:	f7ff fef7 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, false);
1a000462:	2300      	movs	r3, #0
1a000464:	220e      	movs	r2, #14
1a000466:	2100      	movs	r1, #0
1a000468:	486b      	ldr	r0, [pc, #428]	@ (1a000618 <main+0x234>)
1a00046a:	f7ff ff0b 	bl	1a000284 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, true);
1a00046e:	2301      	movs	r3, #1
1a000470:	220e      	movs	r2, #14
1a000472:	2100      	movs	r1, #0
1a000474:	4868      	ldr	r0, [pc, #416]	@ (1a000618 <main+0x234>)
1a000476:	f7ff ff7a 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_2_PORT, LED_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_2_FUNC);
1a00047a:	2250      	movs	r2, #80	@ 0x50
1a00047c:	210b      	movs	r1, #11
1a00047e:	2002      	movs	r0, #2
1a000480:	f7ff fee6 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, false);
1a000484:	2300      	movs	r3, #0
1a000486:	220b      	movs	r2, #11
1a000488:	2101      	movs	r1, #1
1a00048a:	4863      	ldr	r0, [pc, #396]	@ (1a000618 <main+0x234>)
1a00048c:	f7ff fefa 	bl	1a000284 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, true);
1a000490:	2301      	movs	r3, #1
1a000492:	220b      	movs	r2, #11
1a000494:	2101      	movs	r1, #1
1a000496:	4860      	ldr	r0, [pc, #384]	@ (1a000618 <main+0x234>)
1a000498:	f7ff ff69 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_3_PORT, LED_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_3_FUNC);
1a00049c:	2250      	movs	r2, #80	@ 0x50
1a00049e:	210c      	movs	r1, #12
1a0004a0:	2002      	movs	r0, #2
1a0004a2:	f7ff fed5 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, false);
1a0004a6:	2300      	movs	r3, #0
1a0004a8:	220c      	movs	r2, #12
1a0004aa:	2101      	movs	r1, #1
1a0004ac:	485a      	ldr	r0, [pc, #360]	@ (1a000618 <main+0x234>)
1a0004ae:	f7ff fee9 	bl	1a000284 <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, true);
1a0004b2:	2301      	movs	r3, #1
1a0004b4:	220c      	movs	r2, #12
1a0004b6:	2101      	movs	r1, #1
1a0004b8:	4857      	ldr	r0, [pc, #348]	@ (1a000618 <main+0x234>)
1a0004ba:	f7ff ff58 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    /******************/
    Chip_SCU_PinMuxSet(TEC_1_PORT, TEC_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_1_FUNC);
1a0004be:	2240      	movs	r2, #64	@ 0x40
1a0004c0:	2100      	movs	r1, #0
1a0004c2:	2001      	movs	r0, #1
1a0004c4:	f7ff fec4 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_1_GPIO, TEC_1_BIT, false);
1a0004c8:	2300      	movs	r3, #0
1a0004ca:	2204      	movs	r2, #4
1a0004cc:	2100      	movs	r1, #0
1a0004ce:	4852      	ldr	r0, [pc, #328]	@ (1a000618 <main+0x234>)
1a0004d0:	f7ff ff4d 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_2_PORT, TEC_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_2_FUNC);
1a0004d4:	2240      	movs	r2, #64	@ 0x40
1a0004d6:	2101      	movs	r1, #1
1a0004d8:	2001      	movs	r0, #1
1a0004da:	f7ff feb9 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_2_GPIO, TEC_2_BIT, false);
1a0004de:	2300      	movs	r3, #0
1a0004e0:	2208      	movs	r2, #8
1a0004e2:	2100      	movs	r1, #0
1a0004e4:	484c      	ldr	r0, [pc, #304]	@ (1a000618 <main+0x234>)
1a0004e6:	f7ff ff42 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_3_PORT, TEC_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_3_FUNC);
1a0004ea:	2240      	movs	r2, #64	@ 0x40
1a0004ec:	2102      	movs	r1, #2
1a0004ee:	2001      	movs	r0, #1
1a0004f0:	f7ff feae 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_3_GPIO, TEC_3_BIT, false);
1a0004f4:	2300      	movs	r3, #0
1a0004f6:	2209      	movs	r2, #9
1a0004f8:	2100      	movs	r1, #0
1a0004fa:	4847      	ldr	r0, [pc, #284]	@ (1a000618 <main+0x234>)
1a0004fc:	f7ff ff37 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_4_PORT, TEC_4_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_4_FUNC);
1a000500:	2240      	movs	r2, #64	@ 0x40
1a000502:	2106      	movs	r1, #6
1a000504:	2001      	movs	r0, #1
1a000506:	f7ff fea3 	bl	1a000250 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_4_GPIO, TEC_4_BIT, false);
1a00050a:	2300      	movs	r3, #0
1a00050c:	2209      	movs	r2, #9
1a00050e:	2101      	movs	r1, #1
1a000510:	4841      	ldr	r0, [pc, #260]	@ (1a000618 <main+0x234>)
1a000512:	f7ff ff2c 	bl	1a00036e <Chip_GPIO_SetPinDIR>

    while (true) {
        if (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_1_GPIO, TEC_1_BIT) == 0) {
1a000516:	2204      	movs	r2, #4
1a000518:	2100      	movs	r1, #0
1a00051a:	483f      	ldr	r0, [pc, #252]	@ (1a000618 <main+0x234>)
1a00051c:	f7ff fece 	bl	1a0002bc <Chip_GPIO_ReadPortBit>
1a000520:	4603      	mov	r3, r0
1a000522:	f083 0301 	eor.w	r3, r3, #1
1a000526:	b2db      	uxtb	r3, r3
1a000528:	2b00      	cmp	r3, #0
1a00052a:	d006      	beq.n	1a00053a <main+0x156>
            Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, true);
1a00052c:	2301      	movs	r3, #1
1a00052e:	2202      	movs	r2, #2
1a000530:	2105      	movs	r1, #5
1a000532:	4839      	ldr	r0, [pc, #228]	@ (1a000618 <main+0x234>)
1a000534:	f7ff fea6 	bl	1a000284 <Chip_GPIO_SetPinState>
1a000538:	e005      	b.n	1a000546 <main+0x162>
        } else {
            Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, false);
1a00053a:	2300      	movs	r3, #0
1a00053c:	2202      	movs	r2, #2
1a00053e:	2105      	movs	r1, #5
1a000540:	4835      	ldr	r0, [pc, #212]	@ (1a000618 <main+0x234>)
1a000542:	f7ff fe9f 	bl	1a000284 <Chip_GPIO_SetPinState>
        }

        current_state = (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_2_GPIO, TEC_2_BIT) == 0);
1a000546:	2208      	movs	r2, #8
1a000548:	2100      	movs	r1, #0
1a00054a:	4833      	ldr	r0, [pc, #204]	@ (1a000618 <main+0x234>)
1a00054c:	f7ff feb6 	bl	1a0002bc <Chip_GPIO_ReadPortBit>
1a000550:	4603      	mov	r3, r0
1a000552:	2b00      	cmp	r3, #0
1a000554:	bf14      	ite	ne
1a000556:	2301      	movne	r3, #1
1a000558:	2300      	moveq	r3, #0
1a00055a:	b2db      	uxtb	r3, r3
1a00055c:	f083 0301 	eor.w	r3, r3, #1
1a000560:	b2db      	uxtb	r3, r3
1a000562:	71fb      	strb	r3, [r7, #7]
1a000564:	79fb      	ldrb	r3, [r7, #7]
1a000566:	f003 0301 	and.w	r3, r3, #1
1a00056a:	71fb      	strb	r3, [r7, #7]
        if ((current_state) && (!last_state)) {
1a00056c:	79fb      	ldrb	r3, [r7, #7]
1a00056e:	2b00      	cmp	r3, #0
1a000570:	d00a      	beq.n	1a000588 <main+0x1a4>
1a000572:	7cfb      	ldrb	r3, [r7, #19]
1a000574:	f083 0301 	eor.w	r3, r3, #1
1a000578:	b2db      	uxtb	r3, r3
1a00057a:	2b00      	cmp	r3, #0
1a00057c:	d004      	beq.n	1a000588 <main+0x1a4>
            Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT);
1a00057e:	220e      	movs	r2, #14
1a000580:	2100      	movs	r1, #0
1a000582:	4825      	ldr	r0, [pc, #148]	@ (1a000618 <main+0x234>)
1a000584:	f7ff ff14 	bl	1a0003b0 <Chip_GPIO_SetPinToggle>
        }
        last_state = current_state;
1a000588:	79fb      	ldrb	r3, [r7, #7]
1a00058a:	74fb      	strb	r3, [r7, #19]

        if (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_3_GPIO, TEC_3_BIT) == 0) {
1a00058c:	2209      	movs	r2, #9
1a00058e:	2100      	movs	r1, #0
1a000590:	4821      	ldr	r0, [pc, #132]	@ (1a000618 <main+0x234>)
1a000592:	f7ff fe93 	bl	1a0002bc <Chip_GPIO_ReadPortBit>
1a000596:	4603      	mov	r3, r0
1a000598:	f083 0301 	eor.w	r3, r3, #1
1a00059c:	b2db      	uxtb	r3, r3
1a00059e:	2b00      	cmp	r3, #0
1a0005a0:	d005      	beq.n	1a0005ae <main+0x1ca>
            Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, true);
1a0005a2:	2301      	movs	r3, #1
1a0005a4:	220b      	movs	r2, #11
1a0005a6:	2101      	movs	r1, #1
1a0005a8:	481b      	ldr	r0, [pc, #108]	@ (1a000618 <main+0x234>)
1a0005aa:	f7ff fe6b 	bl	1a000284 <Chip_GPIO_SetPinState>
        }
        if (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_4_GPIO, TEC_4_BIT) == 0) {
1a0005ae:	2209      	movs	r2, #9
1a0005b0:	2101      	movs	r1, #1
1a0005b2:	4819      	ldr	r0, [pc, #100]	@ (1a000618 <main+0x234>)
1a0005b4:	f7ff fe82 	bl	1a0002bc <Chip_GPIO_ReadPortBit>
1a0005b8:	4603      	mov	r3, r0
1a0005ba:	f083 0301 	eor.w	r3, r3, #1
1a0005be:	b2db      	uxtb	r3, r3
1a0005c0:	2b00      	cmp	r3, #0
1a0005c2:	d005      	beq.n	1a0005d0 <main+0x1ec>
            Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, false);
1a0005c4:	2300      	movs	r3, #0
1a0005c6:	220b      	movs	r2, #11
1a0005c8:	2101      	movs	r1, #1
1a0005ca:	4813      	ldr	r0, [pc, #76]	@ (1a000618 <main+0x234>)
1a0005cc:	f7ff fe5a 	bl	1a000284 <Chip_GPIO_SetPinState>
        }

        divisor++;
1a0005d0:	697b      	ldr	r3, [r7, #20]
1a0005d2:	3301      	adds	r3, #1
1a0005d4:	617b      	str	r3, [r7, #20]
        if (divisor == 5) {
1a0005d6:	697b      	ldr	r3, [r7, #20]
1a0005d8:	2b05      	cmp	r3, #5
1a0005da:	d106      	bne.n	1a0005ea <main+0x206>
            divisor = 0;
1a0005dc:	2300      	movs	r3, #0
1a0005de:	617b      	str	r3, [r7, #20]
            Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT);
1a0005e0:	220c      	movs	r2, #12
1a0005e2:	2101      	movs	r1, #1
1a0005e4:	480c      	ldr	r0, [pc, #48]	@ (1a000618 <main+0x234>)
1a0005e6:	f7ff fee3 	bl	1a0003b0 <Chip_GPIO_SetPinToggle>
        }

        for (int index = 0; index < 100; index++) {
1a0005ea:	2300      	movs	r3, #0
1a0005ec:	60fb      	str	r3, [r7, #12]
1a0005ee:	e00e      	b.n	1a00060e <main+0x22a>
            for (int delay = 0; delay < 25000; delay++) {
1a0005f0:	2300      	movs	r3, #0
1a0005f2:	60bb      	str	r3, [r7, #8]
1a0005f4:	e003      	b.n	1a0005fe <main+0x21a>
                __asm("NOP");
1a0005f6:	bf00      	nop
            for (int delay = 0; delay < 25000; delay++) {
1a0005f8:	68bb      	ldr	r3, [r7, #8]
1a0005fa:	3301      	adds	r3, #1
1a0005fc:	60bb      	str	r3, [r7, #8]
1a0005fe:	68bb      	ldr	r3, [r7, #8]
1a000600:	f246 12a7 	movw	r2, #24999	@ 0x61a7
1a000604:	4293      	cmp	r3, r2
1a000606:	ddf6      	ble.n	1a0005f6 <main+0x212>
        for (int index = 0; index < 100; index++) {
1a000608:	68fb      	ldr	r3, [r7, #12]
1a00060a:	3301      	adds	r3, #1
1a00060c:	60fb      	str	r3, [r7, #12]
1a00060e:	68fb      	ldr	r3, [r7, #12]
1a000610:	2b63      	cmp	r3, #99	@ 0x63
1a000612:	dded      	ble.n	1a0005f0 <main+0x20c>
        if (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, TEC_1_GPIO, TEC_1_BIT) == 0) {
1a000614:	e77f      	b.n	1a000516 <main+0x132>
1a000616:	bf00      	nop
1a000618:	400f4000 	.word	0x400f4000

1a00061c <ResetISR>:
void ResetISR(void) {
1a00061c:	b580      	push	{r7, lr}
1a00061e:	b088      	sub	sp, #32
1a000620:	af00      	add	r7, sp, #0
    __asm volatile("cpsid i");
1a000622:	b672      	cpsid	i
    unsigned int * RESET_CONTROL = (unsigned int *)0x40053100;
1a000624:	4b2c      	ldr	r3, [pc, #176]	@ (1a0006d8 <ResetISR+0xbc>)
1a000626:	617b      	str	r3, [r7, #20]
    *(RESET_CONTROL + 0) = 0x10DF1000;
1a000628:	697b      	ldr	r3, [r7, #20]
1a00062a:	4a2c      	ldr	r2, [pc, #176]	@ (1a0006dc <ResetISR+0xc0>)
1a00062c:	601a      	str	r2, [r3, #0]
    *(RESET_CONTROL + 1) = 0x01DFF7FF;
1a00062e:	697b      	ldr	r3, [r7, #20]
1a000630:	3304      	adds	r3, #4
1a000632:	4a2b      	ldr	r2, [pc, #172]	@ (1a0006e0 <ResetISR+0xc4>)
1a000634:	601a      	str	r2, [r3, #0]
    volatile unsigned int * NVIC_ICPR = (unsigned int *)0xE000E280;
1a000636:	4b2b      	ldr	r3, [pc, #172]	@ (1a0006e4 <ResetISR+0xc8>)
1a000638:	613b      	str	r3, [r7, #16]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a00063a:	2300      	movs	r3, #0
1a00063c:	61fb      	str	r3, [r7, #28]
1a00063e:	e009      	b.n	1a000654 <ResetISR+0x38>
        *(NVIC_ICPR + irqpendloop) = 0xFFFFFFFF;
1a000640:	69fb      	ldr	r3, [r7, #28]
1a000642:	009b      	lsls	r3, r3, #2
1a000644:	693a      	ldr	r2, [r7, #16]
1a000646:	4413      	add	r3, r2
1a000648:	f04f 32ff 	mov.w	r2, #4294967295
1a00064c:	601a      	str	r2, [r3, #0]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a00064e:	69fb      	ldr	r3, [r7, #28]
1a000650:	3301      	adds	r3, #1
1a000652:	61fb      	str	r3, [r7, #28]
1a000654:	69fb      	ldr	r3, [r7, #28]
1a000656:	2b07      	cmp	r3, #7
1a000658:	d9f2      	bls.n	1a000640 <ResetISR+0x24>
    __asm volatile("cpsie i");
1a00065a:	b662      	cpsie	i
    SectionTableAddr = &__data_section_table;
1a00065c:	4b22      	ldr	r3, [pc, #136]	@ (1a0006e8 <ResetISR+0xcc>)
1a00065e:	61bb      	str	r3, [r7, #24]
    while (SectionTableAddr < &__data_section_table_end) {
1a000660:	e013      	b.n	1a00068a <ResetISR+0x6e>
        LoadAddr = *SectionTableAddr++;
1a000662:	69bb      	ldr	r3, [r7, #24]
1a000664:	1d1a      	adds	r2, r3, #4
1a000666:	61ba      	str	r2, [r7, #24]
1a000668:	681b      	ldr	r3, [r3, #0]
1a00066a:	603b      	str	r3, [r7, #0]
        ExeAddr = *SectionTableAddr++;
1a00066c:	69bb      	ldr	r3, [r7, #24]
1a00066e:	1d1a      	adds	r2, r3, #4
1a000670:	61ba      	str	r2, [r7, #24]
1a000672:	681b      	ldr	r3, [r3, #0]
1a000674:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a000676:	69bb      	ldr	r3, [r7, #24]
1a000678:	1d1a      	adds	r2, r3, #4
1a00067a:	61ba      	str	r2, [r7, #24]
1a00067c:	681b      	ldr	r3, [r3, #0]
1a00067e:	607b      	str	r3, [r7, #4]
        data_init(LoadAddr, ExeAddr, SectionLen);
1a000680:	687a      	ldr	r2, [r7, #4]
1a000682:	68b9      	ldr	r1, [r7, #8]
1a000684:	6838      	ldr	r0, [r7, #0]
1a000686:	f7ff fd77 	bl	1a000178 <data_init>
    while (SectionTableAddr < &__data_section_table_end) {
1a00068a:	69bb      	ldr	r3, [r7, #24]
1a00068c:	4a17      	ldr	r2, [pc, #92]	@ (1a0006ec <ResetISR+0xd0>)
1a00068e:	4293      	cmp	r3, r2
1a000690:	d3e7      	bcc.n	1a000662 <ResetISR+0x46>
    while (SectionTableAddr < &__bss_section_table_end) {
1a000692:	e00d      	b.n	1a0006b0 <ResetISR+0x94>
        ExeAddr = *SectionTableAddr++;
1a000694:	69bb      	ldr	r3, [r7, #24]
1a000696:	1d1a      	adds	r2, r3, #4
1a000698:	61ba      	str	r2, [r7, #24]
1a00069a:	681b      	ldr	r3, [r3, #0]
1a00069c:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a00069e:	69bb      	ldr	r3, [r7, #24]
1a0006a0:	1d1a      	adds	r2, r3, #4
1a0006a2:	61ba      	str	r2, [r7, #24]
1a0006a4:	681b      	ldr	r3, [r3, #0]
1a0006a6:	607b      	str	r3, [r7, #4]
        bss_init(ExeAddr, SectionLen);
1a0006a8:	6879      	ldr	r1, [r7, #4]
1a0006aa:	68b8      	ldr	r0, [r7, #8]
1a0006ac:	f7ff fd87 	bl	1a0001be <bss_init>
    while (SectionTableAddr < &__bss_section_table_end) {
1a0006b0:	69bb      	ldr	r3, [r7, #24]
1a0006b2:	4a0f      	ldr	r2, [pc, #60]	@ (1a0006f0 <ResetISR+0xd4>)
1a0006b4:	4293      	cmp	r3, r2
1a0006b6:	d3ed      	bcc.n	1a000694 <ResetISR+0x78>
    asm("LDR.W R0, =0xE000ED88");
1a0006b8:	f8df 0040 	ldr.w	r0, [pc, #64]	@ 1a0006fc <ResetISR+0xe0>
    asm("LDR R1, [R0]");
1a0006bc:	6801      	ldr	r1, [r0, #0]
    asm(" ORR R1, R1, #(0xF << 20)");
1a0006be:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
    asm("STR R1, [R0]");
1a0006c2:	6001      	str	r1, [r0, #0]
    unsigned int * pSCB_VTOR = (unsigned int *)0xE000ED08;
1a0006c4:	4b0b      	ldr	r3, [pc, #44]	@ (1a0006f4 <ResetISR+0xd8>)
1a0006c6:	60fb      	str	r3, [r7, #12]
        *pSCB_VTOR = (unsigned int)g_pfnVectors;
1a0006c8:	4a0b      	ldr	r2, [pc, #44]	@ (1a0006f8 <ResetISR+0xdc>)
1a0006ca:	68fb      	ldr	r3, [r7, #12]
1a0006cc:	601a      	str	r2, [r3, #0]
    main();
1a0006ce:	f7ff fe89 	bl	1a0003e4 <main>
    while (1) {
1a0006d2:	bf00      	nop
1a0006d4:	e7fd      	b.n	1a0006d2 <ResetISR+0xb6>
1a0006d6:	bf00      	nop
1a0006d8:	40053100 	.word	0x40053100
1a0006dc:	10df1000 	.word	0x10df1000
1a0006e0:	01dff7ff 	.word	0x01dff7ff
1a0006e4:	e000e280 	.word	0xe000e280
1a0006e8:	1a000114 	.word	0x1a000114
1a0006ec:	1a000150 	.word	0x1a000150
1a0006f0:	1a000178 	.word	0x1a000178
1a0006f4:	e000ed08 	.word	0xe000ed08
1a0006f8:	1a000000 	.word	0x1a000000
1a0006fc:	e000ed88 	.word	0xe000ed88
