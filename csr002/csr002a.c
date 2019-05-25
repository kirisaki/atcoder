#include <stdio.h>

int main() {
  long int n;
  scanf("%ld", &n);
  (void)getchar();
  long int max;
  for (int i = 0; i < n; i++) {
    long int a, b;
    scanf("%ld %ld", &a, &b);
    (void)getchar();
    long int sum = a + b;
    if (sum > max)
      max = sum;
  }
  printf("%ld", max);
  return 0;
}
