#include <stdio.h>

int main(){
    int a, b, c;

    scanf("%d %d %d\n", &a, &b, &c);

    if((a != b && b != c && c != a) || (a == b && b == c )){
        printf("No\n");
    }else{
        printf("Yes\n");
    }
}
