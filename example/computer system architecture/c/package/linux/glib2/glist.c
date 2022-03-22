/* Compile with:
export CFLAGS="`pkg-config --cflags glib-2.0` -g -Wall -std=gnu11 -O3"
export LDLIBS="`pkg-config --libs   glib-2.0`"
make glist
*/
#include <stdio.h>
#include <glib.h>

GList *list;

int main(){
    list = g_list_append(list, "a");
    list = g_list_append(list, "b");
    list = g_list_append(list, "c");
    printf("The list is now %d items long\n", g_list_length(list));

    for ( ; list!= NULL; list=list->next)
        printf("%s\n", (char*)list->data);

    printf("The list is now %d items long\n", g_list_length(list));
}