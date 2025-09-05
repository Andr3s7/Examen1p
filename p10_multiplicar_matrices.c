// Problema 10: Multiplicacion de dos matrices
#include <stdio.h>

int main(void) {
    int r1, c1, r2, c2, i, j, k;
    printf("Ingrese dimensiones de A (r1 c1): ");
    if (scanf("%d %d", &r1, &c1) != 2) return 0;
    printf("Ingrese dimensiones de B (r2 c2): ");
    if (scanf("%d %d", &r2, &c2) != 2) return 0;

    if (r1<=0 || c1<=0 || r2<=0 || c2<=0) { printf("Dimensiones invalidas.\n"); return 0; }
    if (c1 != r2) { printf("No se puede multiplicar: c1 debe ser igual a r2.\n"); return 0; }

    int A[r1][c1], B[r2][c2], C[r1][c2];
    printf("Ingrese la matriz A:\n");
    for (i = 0; i < r1; ++i) for (j = 0; j < c1; ++j) scanf("%d", &A[i][j]);
    printf("Ingrese la matriz B:\n");
    for (i = 0; i < r2; ++i) for (j = 0; j < c2; ++j) scanf("%d", &B[i][j]);

    for (i = 0; i < r1; ++i) for (j = 0; j < c2; ++j) {
        C[i][j] = 0;
        for (k = 0; k < c1; ++k) C[i][j] += A[i][k] * B[k][j];
    }

    printf("Resultado C = A x B:\n");
    for (i = 0; i < r1; ++i) {
        for (j = 0; j < c2; ++j) printf("%8d", C[i][j]);
        printf("\n");
    }
    return 0;
}
