#include <stdio.h>
#include <stdlib.h>

int main(){
    int n;
    int *as;

    scanf("%d\n", &n);
    as = malloc(sizeof(int) * n);
    for(int i = 0; i < n; i++){
        scanf("%d[ \n]", &as[i]);
    }
    for(int i = 0; i < n; i++){
        if(as[i] % 2 == 1){
            continue;
        }
        if(as[i] % 3 == 0 || as[i] % 5 == 0){
            continue;
        }else{
            printf("DENIED\n");
            return 0;
        }
    }
    printf("APPROVED\n");
    return 0;
}
