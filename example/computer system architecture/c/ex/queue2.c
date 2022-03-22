#include <stdio.h>

struct list_node {
  char *data;
  struct list_node *next;
};

struct list_node q[10] = {
  {.data="a", .next=&q[1]},
  {.data="b", .next=&q[2]},
  {.data="c", .next=&q[3]},
  {.data="d", .next=NULL},
};

struct queue {
  struct list_node *front, *rear;
};

struct queue Q = {
  .front = &q[0],
  .rear = &q[3],
};

int main() {
  // printf("q[0].data=%s\n", q[0].data);
  for (struct list_node *p=Q.front; p!=NULL; p=p->next) {
    printf("p->data=%s ", p->data);
  }
  printf("\n");
}