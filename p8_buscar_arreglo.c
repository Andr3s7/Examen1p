#include <stdio.h>
#include <stdlib.h>

int cmp_int(const void* a, const void* b) {
    int ia = *(const int*)a, ib = *(const int*)b;
    return (ia > ib) - (ia < ib);
}
int binary_search(const int* a, int n, int x) {
    int l = 0, r = n - 1;
    while (l <= r) {
        int m = l + (r - l) / 2;
        if (a[m] == x) return m;
        else if (a[m] < x) l = m + 1;
        else r = m - 1;
    }
    return -1;
}

int main(void) {
    int n, i, target, pos = -1, posBin = -1;
    printf("Ingrese el tamano n del arreglo: ");
    if (scanf("%d", &n) != 1 || n <= 0) { printf("n invalido.\n"); return 0; }

    int* arr = (int*)malloc(n * sizeof(int));
    int* arrSorted = (int*)malloc(n * sizeof(int));
    printf("Ingrese %d enteros:\n", n);
    for (i = 0; i < n; ++i) scanf("%d", &arr[i]);
    printf("Ingrese el valor a buscar: ");
    scanf("%d", &target);

    // Lineal
    for (i = 0; i < n; ++i) if (arr[i] == target) { pos = i; break; }
    if (pos != -1) printf("Lineal (no ordenado): Encontrado en posicion %d\n", pos);
    else printf("Lineal (no ordenado): No encontrado.\n");

    // Binaria en copia ordenada
    for (i = 0; i < n; ++i) arrSorted[i] = arr[i];
    qsort(arrSorted, n, sizeof(int), cmp_int);
    posBin = binary_search(arrSorted, n, target);
    if (posBin != -1) printf("Binaria (ordenado): Encontrado en posicion ordenada %d\n", posBin);
    else printf("Binaria (ordenado): No encontrado.\n");

    free(arr); free(arrSorted);
    return 0;
}
