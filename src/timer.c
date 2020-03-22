/*
 * tiempo.c
 *
 *  Created on: 11 mar. 2020
 *      Author: santi
 */
#include <timer.h>

static tiempo_t t;

void set_time(tiempo_t t_inicial){
    t = t_inicial;
}

void get_time(tiempo_t* timePointer){
    *timePointer = t;
}

void inc_time(){
    if (t.milisegundos+250 >= 1000){
        t.milisegundos = t.milisegundos+250-1000;
        if (t.segundos == 59){
            t.segundos = 0;
            if (t.minutos == 59){
                t.minutos = 0;
                if (t.horas == 23){
                    t.horas = 0;
                }else
                    t.horas++;
            }else
                t.minutos++;
        }else
            t.segundos++;
    }else
        t.milisegundos= t.milisegundos + 250;
}
