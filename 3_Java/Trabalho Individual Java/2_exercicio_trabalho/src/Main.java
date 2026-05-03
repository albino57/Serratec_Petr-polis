/*2 - Classes e Objetos
Exercício: Criando a classe ContaBancaria.
Detalhes: Migrar a lógica do exercício anterior para uma estrutura Orientada a Objetos. Criar
a classe com os atributos numero, titular e saldo, e os métodos depositar() e sacar(). Instanciar no main.
Regra de Negócio:
-Todas as regras do exercício anterior devem ser seguidas também
-Toda conta nova aberta ganha um bônus de boas-vindas de R$ 50,00 (isso deve ser
garantido no momento da criação do objeto/construtor). */

import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException, InterruptedException {
        Scanner scan = new Scanner(System.in);
        ContaBancaria conta1 = new ContaBancaria("0001", "Rafael",50.00);

        int opcao;
        do {
            ContaBancaria.limpar();
            conta1.menu();
            opcao = scan.nextInt();
            switch (opcao) {
                case 1:
                    ContaBancaria.limpar();
                    ContaBancaria.logo();
                    System.out.print("Conta: "   + conta1.getNumero()  + "\n" +
                                     "Títular: " + conta1.getTitular() + "\n");
                    System.out.printf("Saldo: R$ %.2f", conta1.getSaldo());
                    Thread.sleep(3000);
                    break;

                case 2:
                    ContaBancaria.limpar();
                    ContaBancaria.logo();
                    System.out.print("Quanto você gostaria de depositar R$: ");
                    String deposito = scan.next();
                    conta1.depositar(deposito);

                    ContaBancaria.limpar();
                    ContaBancaria.logo();
                    System.out.printf("Seu deposito de R$: %.2f foi realizado com sucesso!", Double.parseDouble(deposito)); //Aqui coverte o valor de String para Double. printf precisa disso.
                    System.out.printf("\n\nSeu saldo atual é de R$: %.2f", conta1.getSaldo());

                    Thread.sleep(4000);
                    break;

                case 3:
                    ContaBancaria.limpar();
                    ContaBancaria.logo();

                    //Checa se ainda pode fazer saques.
                    if(conta1.getSaques() == 0){
                        System.out.print("\nLimite diário de saques atingido.");
                        Thread.sleep(3000);
                        break;

                    }else{
                        System.out.print("Digite o valor de saque (limite max R$ 1000.00): ");
                        double valorSaq = scan.nextDouble();

                        //Checa se o valor digito não excede o limite por vez/saque.
                        if(valorSaq <= 1000.00){
                            double saldo = conta1.getSaldo() - valorSaq;

                            //Checa se tem saldo para sacar hehe
                            if(valorSaq > conta1.getSaldo()){
                                System.out.printf("\nSeu saldo R$ '%.2f' é insuficiente para o saque de R$ %.2f!", conta1.getSaldo(), valorSaq);
                                Thread.sleep(4000);
                                break;
                            }

                            conta1.setSaldo((saldo)); // Aqui é alterado o saldo.
                            conta1.setSaques(); // Aqui diminiu o número de saques.

                            ContaBancaria.limpar();
                            ContaBancaria.logo();

                            System.out.printf("Você sacou R$: %.2f", valorSaq);
                            System.out.printf("\n\nSeu saldo atual é de R$: %.2f", conta1.getSaldo());
                            Thread.sleep(4000);
                        }else{
                            ContaBancaria.limpar();

                            ContaBancaria.logo();
                            System.out.print("Você não pode sacar mais que R$: 1000.00 por vez/saque.");
                            Thread.sleep(3000);
                        }
                    }
                    break;
            }

        }while (opcao != 0);
    }
}
/*AJUDA
%s	String
%d	Integer (byte, short, int, long)
%f	Floating-point (float, double)
%b	Boolean
%c	Character
*/