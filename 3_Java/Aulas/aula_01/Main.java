public class Main {

    public static void main(String[] args) {

        // tipo nome;
        // nome = "cadu";

        byte informacao = 0;

        // inteiro que consegue guardar valores menores
        short idade = 22; // 0 - 255

        // inteiro
        int idade2 = 22; // 0 1000000 Integer

        // inteiro longo
        long idade3 = 22; // 0 111111111 Long

        // real
        float peso = 70.5f;

        // real com mais casas decimais
        double peso2 = 70.5; // Double

        // boleano
        boolean taDandoAula = false; // true e false

        // caractere
        char nomePrimeiraLetra = 'C';

        // cadeia
        String nome = "Cadu";
        // escreva()
        System.out.println(nome);

        int mult = 2 * 3;
        System.out.println("O valor da multiplicação é: " + mult);

        double div = 5 / 2;
        int div2 = 5 / 2;

        System.out.println("div: " + div + " é esse valor aqui");
        System.out.println("div2: " + div2);

        // faço o resto da divisão de 11 por 2, coloco na variavel resto que é do tipo int(guarda inteiros)
        long resto = 11 % 2;
        int soma = 2 + 3;
        int sub = 2 - 3;

        // sout => System.out.println
        // ctrl + D
        // int ex = 1651465165165161;


        //
        boolean eIgual = 2 == 3;
        boolean diferente = 2 != 2;
        boolean eMenor = 2 > 5; // false
        boolean eMaior = 2 < 5; // true

        boolean ehMaiorIgual = 2 >= 2;
        boolean eMenorIgual = 2 <= 5;


        // =
        int numUm = 1;
        int numDois = 2;

        numUm = numUm + numDois;
        numUm += numDois;

        // declaração da variavel soma e atribuimos o valor 0
        int somaDois = 0;
        // enquanto somaDois é menor do que 10
        while(somaDois < 10) {
            // incrementando o soma 4 a 4
            somaDois += 4;
        }

        // declaração da variavel soma e atribuimos o valor 20
        int somaTres = 20;
        // enquanto somaDois é menor do que 10
        while(somaTres > 10) {
            // decrementa o soma 4 a 4
            somaTres -= 4;
        }
    }
}