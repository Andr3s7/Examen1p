/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.examenl;

import java.util.Scanner;

/**
 *
 * @author andre_
 */
import java.util.*;

public class MultiplicarMatrices {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese dimensiones de A (r1 c1): ");
        int r1 = sc.nextInt(), c1 = sc.nextInt();
        System.out.print("Ingrese dimensiones de B (r2 c2): ");
        int r2 = sc.nextInt(), c2 = sc.nextInt();
        if (r1<=0 || c1<=0 || r2<=0 || c2<=0) { System.out.println("Dimensiones invalidas."); return; }
        if (c1 != r2) { System.out.println("No se puede multiplicar: c1 debe ser igual a r2."); return; }
        int[][] A = new int[r1][c1], B = new int[r2][c2], C = new int[r1][c2];
        System.out.println("Ingrese la matriz A:");
        for (int i=0;i<r1;i++) for (int j=0;j<c1;j++) A[i][j] = sc.nextInt();
        System.out.println("Ingrese la matriz B:");
        for (int i=0;i<r2;i++) for (int j=0;j<c2;j++) B[i][j] = sc.nextInt();
        for (int i=0;i<r1;i++) for (int j=0;j<c2;j++) {
            C[i][j] = 0;
            for (int k=0;k<c1;k++) C[i][j] += A[i][k]*B[k][j];
        }
        System.out.println("Resultado C = A x B:");
        for (int i=0;i<r1;i++) {
            for (int j=0;j<c2;j++) System.out.printf("%8d", C[i][j]);
            System.out.println();
        }
    }
}
