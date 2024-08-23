/*
* Atividade: Adaptar o código para encontrar o maior e menor número do array;
* Desafio: Ordenar o array no menor para o mair;
* */

import java.util.Scanner;

public class Main {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int[] numeros = new int[6];

    for (int x = 0; x < numeros.length; x++) {
      System.out.printf("Informe um número para posição %d: ", x);
      numeros[x] = sc.nextInt();
    }

    for (int x = 0; x < numeros.length; x++) {
      System.out.printf("Índice %d: %d%n", x, numeros[x]);
    }


  }
}