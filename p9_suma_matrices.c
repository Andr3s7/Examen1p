// Problema 9: Suma de dos matrices
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int r, c, i, j;
    printf("Ingrese filas y columnas (r c): ");
    if (scanf("%d %d", &r, &c) != 2 || r <= 0 || c <= 0) { printf("Dimensiones invalidas.\n"); return 0; }

    int A[r][c], B[r][c], C[r][c];
    printf("Ingrese la matriz A:\n");
    for (i = 0; i < r; ++i) for (j = 0; j < c; ++j) scanf("%d", &A[i][j]);
    printf("Ingrese la matriz B:\n");
    for (i = 0; i < r; ++i) for (j = 0; j < c; ++j) scanf("%d", &B[i][j]);

    for (i = 0; i < r; ++i) for (j = 0; j < c; ++j) C[i][j] = A[i][j] + B[i][j];

    printf("Resultado C = A + B:\n");
    for (i = 0; i < r; ++i) {
        for (j = 0; j < c; ++j) printf("%8d", C[i][j]);
        printf("\n");
    }
    return 0;
}
