#ifndef LISTS_H
#define LISTS_H

#include <stdio.h>
#include <stdlib.h>

 /**
 * struct list_s - singly linked list
 *
 * @i: integer
 * @next: points to the next node
 *
 * Description: singly linked list node structure
 */
typedef struct list_s
{
	int i;
	struct list_s *next;
} list_t;

#endif
