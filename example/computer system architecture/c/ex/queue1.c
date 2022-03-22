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

int main() {
  // printf("q[0].data=%s\n", q[0].data);
  for (struct list_node *p=&q[0]; p!=NULL; p=p->next) {
    printf("p->data=%s ", p->data);
  }
  printf("\n");
}