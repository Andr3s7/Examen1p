/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.examenl;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author andre_
 */
 import java.util.*;
public class BuscarArreglo {
  
   public static int binarySearch(int[] a, int x) {
        int l = 0, r = a.length - 1;
        while (l <= r) {
            int m = l + (r - l) / 2;
            if (a[m] == x) return m;
            else if (a[m] < x) l = m + 1;
            else r = m - 1;
        }
        return -1;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("--- Problema 8 (Java): Buscar en arreglo ---");
        System.out.print("Ingrese el tamano n del arreglo: ");
        int n = sc.nextInt();
        if (n <= 0) { System.out.println("n debe ser positivo."); return; }
        int[] arr = new int[n];
        int[] arrSorted = new int[n];
        System.out.println("Ingrese " + n + " enteros:");
        for (int i = 0; i < n; i++) arr[i] = sc.nextInt();
        System.out.print("Ingrese el valor a buscar: ");
        int target = sc.nextInt();

        
        int pos = -1;
        for (int i = 0; i < n; i++) if (arr[i] == target) { pos = i; break; }
        if (pos != -1) System.out.println(" (no ordenado): Encontrado en posicion " + pos);
        else System.out.println(" (no ordenado): No encontrado.");

        System.arraycopy(arr, 0, arrSorted, 0, n);
        Arrays.sort(arrSorted);
        int posBin = binarySearch(arrSorted, target);
        if (posBin != -1) System.out.println(" (ordenado): Encontrado en posicion ordenada " + posBin);
        else System.out.println(" (ordenado): No encontrado.");
    }
} 

