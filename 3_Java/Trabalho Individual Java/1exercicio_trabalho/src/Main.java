//1 - Lógica e Estruturas de Controle
//Exercício: Simulador de Caixa Eletrônico (Apenas Lógica no main).
//Detalhes: Criar um menu com do-while e switch (1-Ver Saldo, 2-Depositar, 3-Sacar, 0-Sair).
//Regra de Negócio:
//-O caixa eletrônico tem um limite máximo de 3 saques diários. Se o usuário tentar um 4º
//saque, o sistema deve bloquear a operação informando "Limite de saques diários atingido".
//-O valor máximo por saque é de R$ 1.000,00, por questões de segurança.

import java.util.Scanner;
import java.io.IOException; //Biblioteca usada na função limpar!

public class Main {

    public static Integer saques = 3; //Variável Global para usar no método menu()
    public static void main(String[] args) throws IOException, InterruptedException {
        Scanner scan = new Scanner(System.in);
        Integer opcao = 0;
        Double saldo = 5000.0, deposito = 0.0, valorSaq = 0.0;
        
        do{
            limpar(); //Limpa a tela antes de iniciar caso tenha algo antes.
            menu();   //Carrega o menu.

            opcao = scan.nextInt();
            //scan.close();

            switch (opcao){
                case 1:
                    limpar();
                    logo();
                    System.out.printf("Seu saldo atual é: %.2f", saldo);
                    Thread.sleep(3000);
                    break;

                case 2:
                    limpar();
                    logo();
                    System.out.print("Quanto você gostaria de depositar R$: ");
                    deposito = scan.nextDouble();
                    saldo = saldo + deposito;

                    limpar();
                    logo();
                    System.out.printf("Seu deposito de R$: %.2f foi realizado com sucesso!", deposito);
                    System.out.printf("\n\nSeu saldo atual é de R$: %.2f", saldo);
                    Thread.sleep(4000);
                    break;

                case 3:
                    limpar();
                    logo();
                    
                    //Checa se ainda pode fazer saques.
                    if(saques == 0){
                        System.out.print("\nLimite diário de saques atingido.");
                        Thread.sleep(3000);
                        break;
                    }else{
                        System.out.print("Digite o valor de saque (limite max R$ 1000.00): ");
                        valorSaq = scan.nextDouble();

                        //Checa se o valor digito não excede o limite por vez/saque.
                        if(valorSaq <= 1000.00){
                            saldo = saldo - valorSaq;
                            saques -= 1;
                            limpar();
                            logo();
                            System.out.printf("Você sacou R$: %.2f", valorSaq);
                            System.out.printf("\n\nSeu saldo atual é de R$: %.2f", saldo);
                            Thread.sleep(4000);
                        }else{
                            limpar();
                            logo();
                            System.out.print("Você não pode sacar mais que R$: 1000.00 por vez/saque.");
                            Thread.sleep(3000);
                        }
                    }
                    break;

                case 0:
                    limpar();
                    logo();
                    System.out.print("-Muito obrigado por usar o Caixa Eletrônico-\n\n" + 
                                     "---------------Volte Sempre :D--------------");
                    Thread.sleep(4000);
                    break;

                default:
                    limpar();
                    logo();
                    System.out.print("Opção Inválida!");
                    Thread.sleep(2500);
                    break;
            }

            

            limpar(); //Método que limpa a tela.
        }while(opcao != 0);

        scan.close(); //Fecha o método Scanner.
    }

    //------------Métodos Auxiliares------------
    public static void limpar() throws IOException, InterruptedException {
        final String os = System.getProperty("os.name"); //Variável que armazena o OS que está em uso.
        if(os == "Windows"){
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        }else{
            new ProcessBuilder("clear").inheritIO().start().waitFor();
        }
    }


    public static void logo(){
        System.out.println("--- C a i x a   E l e t r ô n i c o ----\n");
    }


    public static void menu(){
        if(saques > 0){
            System.out.print
                ("--- C a i x a   E l e t r ô n i c o ----\n" +
                 "\nSelecione uma opção" +
                 "\n1-Ver Saldo" +
                 "\n2-Depositar" +
                 "\n3-Sacar  (+" + saques + ")" +
                 "\n0-Sair"      +
                 "\n---------------------" + 
                 "\nDigite: "
            );
        }else{
            System.out.print
                ("--- C a i x a   E l e t r ô n i c o ----\n" +
                 "\nSelecione uma opção" +
                 "\n1-Ver Saldo" +
                 "\n2-Depositar" +
                 "\n3-Sacar  (Limite Diário Atingido!)"+
                 "\n0-Sair"      +
                "\n---------------------" + 
                 "\nDigite: "
            );
        }
    
    }
    //------------Métodos Auxiliares------------
}

/*AJUDA
%s	String	
%d	Integer (byte, short, int, long) 
%f	Floating-point (float, double)
%b	Boolean
%c	Character
*/