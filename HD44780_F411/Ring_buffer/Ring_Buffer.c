/*
 * Ring_Buffer.c
 *
 *  Created on: Jun 11, 2023
 *      Author: oem
 */

#include "Ring_buffer.h"
#include "stdint.h"





/*============= Запись в буфер ==============*/
void BufferWrite(RingBuff *buffer, uint8_t data)
{

	uint8_t next  = (buffer->head + 1) % BUFFER_SIZE;	//индекс следующей свободной ячейки
	if(next != buffer->tail)	//проверяем, не заполнен ли буфер
	{
		buffer->data[buffer->head] = data;	//сохраняем данные
		buffer->head = next;	//обновляем индекс головы
	}

}
/*============= Запись в буфер ==============*/





/*============= Чтение с буфера ==============*/
uint8_t BufferRead(RingBuff *buffer)
{

	 if(buffer->tail != buffer->head)//	перевіряємо, пустий буфєр чи повний
	 {
		 uint8_t data = buffer->data[buffer->tail];//	якщо буфер не пустий,витягується єлемент, на який указує  buffer->tail
		 buffer->tail = (buffer->tail +1) % BUFFER_SIZE;//	обчислення ногого індексу хвоста
		 return data;
	 }else
	 {
		 return 0;//	buffer is empty
	 }
}
/*============= Чтение с буфера ==============*/










