/**
 * @file timer.h
 * @brief Archivo con definiciones del modulo timer
 *
 * Proyecto Lab1
 * Modulo timer
 *
 * @author  Santiago Nan <santiagonan.c@gmail.com>
 * @version 1.1
 * @date 17 Marzo 2020
 */


#ifndef TIMER_H_
#define TIMER_H_

typedef struct tiempo {
    int horas;
    int minutos;
    int segundos;
    int milisegundos;
}tiempo_t;


/**
 * Setea el tiempo inicial.
 * @param tiempo_t t_inicial: Parametro con el tiempo a setear
 * @return void
 */


void set_time(tiempo_t t_inicial);

/**
 * Guarda el tiempo actual en una direccion de memoria.
 * @param tiempo_t* timePointer: Parametro con el puntero a la direccion donde guerdar el tiempo
 * @return Nada
 */


void get_time(tiempo_t* timePointer);

/**
 * Incrementa el tiempo en 250ms
 * @param void
 * @return
 */
void inc_time();

#endif /* TIMER_H_ */
