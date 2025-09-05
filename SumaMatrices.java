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
public class SumaMatrices {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese filas y columnas (r c): ");
        int r = sc.nextInt(), c = sc.nextInt();
        if (r <= 0 || c <= 0) { System.out.println("Dimensiones deben ser positivas."); return; }
        int[][] A = new int[r][c], B = new int[r][c], C = new int[r][c];
        System.out.println("Ingrese la matriz A:");
        for (int i=0;i<r;i++) for (int j=0;j<c;j++) A[i][j] = sc.nextInt();
        System.out.println("Ingrese la matriz B:");
        for (int i=0;i<r;i++) for (int j=0;j<c;j++) B[i][j] = sc.nextInt();
        for (int i=0;i<r;i++) for (int j=0;j<c;j++) C[i][j] = A[i][j] + B[i][j];
        System.out.println("Resultado C = A + B:");
        for (int i=0;i<r;i++) {
            for (int j=0;j<c;j++) System.out.printf("%8d", C[i][j]);
            System.out.println();
        }
    }
}

