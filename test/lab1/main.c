#include<msp430.h>
#include<timer.h>


tiempo_t t_inicial = {23, 59, 59, 750};
tiempo_t t1;
tiempo_t t2;


int main(void){

    tiempo_t t_local;
    WDTCTL = WDTPW | WDTHOLD; // stop watchdog timer
    set_time(t_inicial);
    get_time(&t1);

    inc_time(); // com gaby2
    inc_time(); // com gaby 3
    inc_time(); // com gaby 4
    inc_time();//comentario santi2

    get_time(&t2);
    get_time(&t_local);


    return 0;

}
