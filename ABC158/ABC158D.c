#include <stdio.h>
#include <stdlib.h>


typedef struct p_tag{
    char c;
    struct p_tag *prev;
    struct p_tag *next;
} string;

int main(){
    char c;
    int qn;
    int i;
    char q[5];
    int rot = 0;
    string *head, *tail, *buf;

    scanf("%c", &c);
    (void)getchar();
    scanf("%d", &qn);
    (void)getchar();

    head = malloc(sizeof(string));
    head->c = c;
    head->prev = NULL;
    head->next = NULL;
    tail = head;

    for(i=0; i < qn; i++){
        scanf("%s\n", q);
        if(q[0] == '1'){
            rot++;
        }else{
            if(q[2] == '1'){
                buf = malloc(sizeof(string));
                buf->c = q[4];
                buf->next = NULL;
                buf->prev = head;
                head->next = buf;
            }else{
                buf = malloc(sizeof(string));
                buf->c = q[4];
                buf->next = tail;
                buf->prev = NULL;
                tail->prev = buf;
            }
        }
    }
    if(rot % 2 == 0){
        putchar(head->c);
        while(1){
            head = head->next;
            if(head == NULL){
                putchar('\n');
                return 0;
            }
            putchar(head->c);
        }
    }else{
        putchar(tail->c);
        while(1){
            tail = tail->prev;
            if(tail == NULL){
                putchar('\n');
                return 0;
            }
            putchar(tail->c);
        }
    }
}

