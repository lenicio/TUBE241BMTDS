import java.util.Scanner;

public class Main {
  public static void main(String[] args) {
  // int, double, String, bool, char
    String nome;
    int idade;
    double altura = 1.71;
    Scanner sc = new Scanner(System.in);

    System.out.print("Informe o seu nome: ");
    nome = sc.nextLine();

    System.out.print("Informe a sua idade: ");
    idade = sc.nextInt();

    System.out.print("Informe a sua altura: ");
    altura = sc.nextDouble();

    System.out.println("Olá " + nome + ", você tem " + idade + " anos, e possui " + altura + " metros de altura.");
    System.out.printf("Olá %s, você tem %d anos, e possui %.2f metros de altura.", nome, idade, altura);
  }
}