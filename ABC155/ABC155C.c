#include <stdio.h>
#include <stdlib.h>

typedef struct node_t {
    char *key;
    int value;
    int diff;
    struct node_t *left, *right;
} node;

void single(char *k, int v, node **n){
    *n = malloc(sizeof(node));
    (*n)->key = k;
    (*n)->value= v;
    (*n)->diff = 0;
    (*n)->left = NULL;
    (*n)->right = NULL;
}

void right_rotate(node **n){
    node *x, *y, *z, *a, *b;
    x = (*n)->left->left;
    y = (*n)->left->right;
    z = (*n)->right;
    a = *n;
    b = (*n)->left;

    a->left = y;
    a->right = z;
    b->left = x;
    b->right = a;
    *n = b;
}

void left_rotate(node **n){
    node *x, *y, *z, *a, *b;
    x = (*n)->left;
    y = (*n)->right->left;
    z = (*n)->right->right;
    a = (*n)-> right;
    b = *n;

    b->left = x;
    b->right = y;
    a->left = b;
    a->right = z;
    *n = a;
}

void insert(char *k, int v, node **n){
    if(*n == NULL){
        single(k, v, n);
    }else{
    }
}

int main(){
    node *na, *nb, *nx, *ny, *nz;
    single("a", 1, &na);
    single("b", 2, &nb);
    single("x", 3, &nx);
    single("y", 4, &ny);
    single("z", 5, &nz);
    nb->left = nx;
    nb->right = ny;
    na->left = nb;
    na->right = nz;
    right_rotate(&na);
    left_rotate(&na);
    printf("%s", na->left->left->key);
}
