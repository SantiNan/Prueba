#include <msp430.h>
#include <temp.h>

void tempInit()
{
    ADC10CTL0=SREF_1 + REFON + ADC10ON + ADC10SHT_3 ; //1.5V ref(/* VR+ = VREF+ and VR- = AVSS */),Ref on,ADC habilitado, 64 clocks por muestra
    ADC10CTL1=INCH_10+ ADC10DIV_3; //temp sensor is at 10 and clock/4 (/* Selects Channel 10 */) + ( /* ADC10 Clock Divider Select 3 */)
}



int tempOut()
{
    int datoTemp=0;
    __delay_cycles(1000);              //esperar 4 ref a que se establezcan las cosas
    ADC10CTL0 |= ENC + ADC10SC;      //enable conversion (/* ADC10 Enable Conversion */) and start conversion (/* ADC10 Start Conversion */)
    while(ADC10CTL1 & BUSY);         //Esperar..mientras esta convirtiendo (/* Flash busy: 1 */)
    datoTemp=ADC10MEM;                       //guardi el valor en t
    ADC10CTL0&=~ENC;                     //disable adc conv
    return(int) (((datoTemp - 673) * 423)/1024); //convierto y devuelvo
}

