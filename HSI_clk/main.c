
#include <stdint.h>


#define RCC_BASE_ADDR 		  	0x40023800UL
#define GPIOA_BASE_ADDR 		0x40020000UL

#define RCC_CR_OFFSET 			0x00UL
#define RCC_CFGR_OFFSET 		0x08UL
#define RCC_AHB1ENR_OFFSET 		0x30UL

#define RCC_CFGR_REG_ADDR 		(RCC_BASE_ADDR + RCC_CFGR_OFFSET)


#define RCC_AHB1ENR_REG_ADDR 		(RCC_BASE_ADDR + RCC_AHB1ENR_OFFSET)
#define RCC_CR_REG_ADDR 		(RCC_BASE_ADDR + RCC_CR_OFFSET)





int main(void)
{

	//1. Configure the RCC_CR MCO1 bits field to select HSE as a clock source
	uint32_t *RccCrReg = (uint32_t*) RCC_CR_REG_ADDR;
	*RccCrReg |=(1<<18)|(1<<16);	//HSE oscillator bypassed with an external clock & HSE clock enable

	//1. Configure the rcc_cfgr SW bits field to select HSE as a clock source
	uint32_t *RccCfgrReg = (uint32_t*) RCC_CFGR_REG_ADDR;
	//System clock switch HSE oscillator selected as system clock
	*RccCfgrReg |=(1<<0);//set 0 bit position

	//1. Configure the rcc_cfgr MCO1 bits field to select HSE as a clock source
	*RccCfgrReg |=(1<<22);//set 22 bit position

	//2. Configure PA8 to AF0 mode to behave as a MCO1 signal
	uint32_t *RccAhb1enrReg = (uint32_t*) RCC_AHB1ENR_REG_ADDR;
	*RccAhb1enrReg = (1<<0); //Enable GPIOA peripheral clock

	//configure the mode of GPIOA pin 8 as alternate function mode
	uint32_t *pGPIOAModeReg = (uint32_t*) (GPIOA_BASE_ADDR + 0x00UL);
	*pGPIOAModeReg &=~(0x3<<16); //clear
	*pGPIOAModeReg |=(0x2<<16);  //set

	//configure the alternate function register to set the mode 0 for PA8
	uint32_t *pGPIOAAltFunHighReg = (uint32_t*) (GPIOA_BASE_ADDR + 0x24UL);
	*pGPIOAAltFunHighReg &=~(0xf<<0); //clear
    /* Loop forever */
	for(;;);
	return 0;
}
