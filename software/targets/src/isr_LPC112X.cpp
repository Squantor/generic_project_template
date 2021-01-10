/*
MIT License

Copyright (c) 2019 Bart Bilos

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#if defined (__cplusplus)
extern "C" {
#endif

void WAKEUP0_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP1_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP2_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP3_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP4_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP5_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP6_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP7_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP8_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP9_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP10_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP11_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WAKEUP12_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void ADC_B_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void SSP1_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void I2C_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void TIMER_16_0_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void TIMER_16_1_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void TIMER_32_0_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void TIMER_32_1_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void SSP0_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void UART0_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void UART1_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void UART2_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void ADC_A_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void WDT_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void BOD_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void FMC_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void EINT3_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void EINT2_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void EINT1_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));
void EINT0_IRQHandler(void) __attribute__((weak, alias("Dummy_Handler")));

#if defined (__cplusplus)
} // extern "C"
#endif

extern void (* const vendor_vector_table[])(void);
void (* const vendor_vector_table[])(void) __attribute__ ((used,section(".vendor_vectors"))) = {
    WAKEUP0_IRQHandler,        // WAKEUP0
    WAKEUP1_IRQHandler,        // WAKEUP1
    WAKEUP2_IRQHandler,        // WAKEUP2
    WAKEUP3_IRQHandler,        // WAKEUP3
    WAKEUP4_IRQHandler,        // WAKEUP4
    WAKEUP5_IRQHandler,        // WAKEUP5
    WAKEUP6_IRQHandler,        // WAKEUP6
    WAKEUP7_IRQHandler,        // WAKEUP7
    WAKEUP8_IRQHandler,        // WAKEUP8
    WAKEUP9_IRQHandler,        // WAKEUP9
    WAKEUP10_IRQHandler,       // WAKEUP10
    WAKEUP11_IRQHandler,       // WAKEUP11
    WAKEUP12_IRQHandler,       // WAKEUP12
    ADC_B_IRQHandler,          // ADC_B
    SSP1_IRQHandler,           // SSP1
    I2C_IRQHandler,            // I2C
    TIMER_16_0_IRQHandler,     // TIMER_16_0
    TIMER_16_1_IRQHandler,     // TIMER_16_1
    TIMER_32_0_IRQHandler,     // TIMER_32_0
    TIMER_32_1_IRQHandler,     // TIMER_32_1
    SSP0_IRQHandler,           // SSP0
    UART0_IRQHandler,          // UART0
    UART1_IRQHandler,          // UART1
    UART2_IRQHandler,          // UART2
    ADC_A_IRQHandler,          // ADC_A
    WDT_IRQHandler,            // Watchdog timer
    BOD_IRQHandler,            // Brown Out Detect
    FMC_IRQHandler,            // FMC
    EINT3_IRQHandler,          // EINT3
    EINT2_IRQHandler,          // EINT2
    EINT1_IRQHandler,          // EINT1
    EINT0_IRQHandler,          // EINT0
};
