void main() {
    //Versão do Java usado = 17
    //Exercício_1----------------------------------------------------------
    //1.Calculadora de Média: Declare duas variáveis do tipo double para notas de um aluno.
    //  Calcule a média e exiba: "Aprovado" se for >= 7, "Reprovado" se < 7, e "Aprovado Parabéns" se for exatamente 10.
    //  Elabore este exercicio duas vezes, uma utilizando If/else e outra utilizando ternário
    System.out.println("__Exercício 1__");

    double nota_1 = 7.5;
    double nota_2 = 7.7;
    double nota_final = (nota_1 + nota_2) / 2;

    if(nota_final == 10){
        System.out.println("Aprovado Parabéns, com " + nota_final + " de média.");
    }else if(nota_final >= 7){
        System.out.println("Aprovado com " + nota_final + " de média.");
    }else{
        System.out.println("Reprovado com " + nota_final + " de média.");
    }

    System.out.println(nota_final == 10 ? "Aprovado Parabéns" : (nota_final >= 7 ? "Aprovado" : "Reprovado"));
    //Exercício_1----------------------------------------------------------


    //Exercício_2----------------------------------------------------------
    //2.Contador com While: Crie um laço while que imprima os números de 1 a 10 no console.
    System.out.println("\n__Exercício 2__");

    int cont = 1;
    System.out.printf("Imprimindo número: ");
    while(cont <= 10){
        System.out.print(cont + " ");
        cont += 1;
    }
    //Exercício_2----------------------------------------------------------


    //Exercício_3----------------------------------------------------------
    //3.Contador de números: Faça um programa que percorra números entre 0 e 30 e exiba a
    //  quantidade de números pares e impares.
    System.out.println("\n\n__Exercício 3__");
    int[] num = {24,26,23,30,4,75,875,6,5,8,11,15,13,18};
    int tam = num.length-1, pares=0, impares=0;

    for(int x=0; x <=tam; x++){
        if((num[x] >= 0 && num[x] <= 30) && (num[x] % 2) == 0){
            pares += 1;
        }else if((num[x] >= 0 && num[x] <= 30) && (num[x] % 2) != 0){
            impares += 1;
        }
    }

    System.out.println("QTD de números Pares: " + pares + "\nQTD de números Impares: " + impares);
    //Exercício_3----------------------------------------------------------


    //Exercício_4----------------------------------------------------------
    //4.Tabuada com For: Utilize a estrutura for para imprimir a tabuada do número 5 (de 5x1 até 5x10).
    System.out.println("\n__Exercício 4__");

    System.out.print("Tabuada de 5:\n");
    for(int x=1; x <=10; x++){
        System.out.println("5x" + x + " = " + (5*x));
    }

    //Exercício_4----------------------------------------------------------


    //Exercício_5----------------------------------------------------------
    //5.Concatenação de Tipos: Crie variáveis de diferentes tipos (int, double, String, boolean) e
    //exiba uma frase que concatene todas elas em uma única mensagem de saída.
    System.out.println("\n__Exercício 5__");

    int num2 = 2;
    double dobro = 1.5;
    String nome = "Rafael";
    boolean verdade = true;

    System.out.println(num2 + " " + dobro + " " + nome + " " + verdade);
    //Exercício_5----------------------------------------------------------


    //Exercício_6----------------------------------------------------------
    //6 Desconto INSS: Crie uma variável para o salário.
    //  Aplique a lógica de regra do INSS e exiba o valor final com desconto.
    //  Faixa 1: Até R$ 1.518,00                -> Alíquota de 7,5%
    //  Faixa 2: de R$ 1.518,01 até R$ 2.793,88 -> Alíquota de 9%.
    //  Faixa 3: de R$ 2.793,89 até R$ 4.190,83 -> Alíquota de 12%.
    //  Faixa 4: Acima de R$ 4.190,84           -> Alíquota de 14%.

    System.out.println("\n__Exercício 6__");

    double salario = 5000.00;

    if(salario >=1 && salario <= 1518.00){
        System.out.println("Salário com desconto de 7,5%: " + (salario - (7.5/100 * salario)));

    }else if(salario > 1518.00 && salario <= 2793.88){
        System.out.println("Salário com desconto de 9%: "   + (salario - (9.0/100 * salario)));

    }else if(salario > 2793.88 && salario <= 4190.83){
        System.out.println("Salário com desconto de 12%: "  + (salario - (12.0/100 * salario)));

    }else if(salario > 4190.83){
        System.out.println("Salário com desconto de 14%: "  + (salario - (14.0/100 * salario)));
    }
    //Exercício_6----------------------------------------------------------
}