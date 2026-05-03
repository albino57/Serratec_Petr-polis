import java.util.Scanner;
import java.util.ArrayList;

public class main {
    public static void main(String[] args) {
// 1.Escolha algo do seu cotidiano, crie uma classe contendo 5 atributos e uma função. Crie uma
// classe Main onde você vai instanciar essa classe, preencha seus dados e imprima na tela formatado.

        System.out.println("1º===============================================================");
        Casa casa = new Casa("12 metros²", "6 metros²", "16 metros²", "9 metros²", "20 metros²");

        System.out.println("Lista de cômodos: " +
                           "\nCozinha:--" + casa.getCozinha() +
                           "\nBanheiro:-"+ casa.getBanheiro() +
                           "\nSala:-----"    + casa.getSala() +
                           "\nQuarto:---"  + casa.getQuarto() +
                           "\nGaragem:--" + casa.getGaragem());

// 2. Crie um programa que leia um número inteiro e imprima o seu antecessor e seu sucessor.
        System.out.println("\n2º===============================================================");
        Scanner scan = new Scanner(System.in);

        System.out.print("Digite um número: ");
        int num = scan.nextInt();

        System.out.printf("O número digito foi: %d \nNúmero antecessor: %d\nNúmero sucessor: %d", num, (num-1), (num+1));

// 3. Faça um programa para ler os dados de 4 pessoas contendo nome, peso e altura.
//    Calcule e escreva: O nome da pessoa com maior peso, o nome da pessoa com maior altura, a média de peso, a média de altura.
        System.out.println("\n\n3º===============================================================");
        Pessoa pessoa1 = new Pessoa("Rafael", 65.0, 1.70);
        Pessoa pessoa2 = new Pessoa("Carina", 46.0, 1.60);
        Pessoa pessoa3 = new Pessoa("Luna"  , 5.0 , 0.60);
        Pessoa pessoa4 = new Pessoa("Java"  , 75.0, 1.40);

        if((pessoa1.getPeso() > pessoa2.getPeso()) && (pessoa1.getPeso() > pessoa3.getPeso()) && (pessoa1.getPeso() > pessoa4.getPeso())){
            System.out.println(pessoa1.getNome() + " tem o maior peso!");

        }else if((pessoa2.getPeso() > pessoa1.getPeso()) && (pessoa2.getPeso() > pessoa3.getPeso()) && (pessoa2.getPeso() > pessoa4.getPeso())){
            System.out.println(pessoa2.getNome() + " tem o maior peso!");

        } else if((pessoa3.getPeso() > pessoa1.getPeso()) && (pessoa3.getPeso() > pessoa2.getPeso()) && (pessoa3.getPeso() > pessoa4.getPeso())){
            System.out.println(pessoa3.getNome() + " tem o maior peso!");

        }else{
            System.out.println(pessoa4.getNome() + " tem o maior peso!");
        }

        if((pessoa1.getAltura() > pessoa2.getAltura()) && (pessoa1.getAltura() > pessoa3.getAltura()) && (pessoa1.getAltura() > pessoa4.getAltura())){
            System.out.println(pessoa1.getNome() + " tem a maior altura!");

        }else if((pessoa2.getAltura() > pessoa1.getAltura()) && (pessoa2.getAltura() > pessoa3.getAltura()) && (pessoa2.getAltura() > pessoa4.getAltura())){
            System.out.println(pessoa2.getNome() + " tem a maior altura!");

        } else if((pessoa3.getAltura() > pessoa1.getAltura()) && (pessoa3.getAltura() > pessoa2.getAltura()) && (pessoa3.getAltura() > pessoa4.getAltura())){
            System.out.println(pessoa3.getNome() + " tem a maior altura!");

        }else{
            System.out.println(pessoa4.getNome() + " tem a maior altura!");
        }

        double peso = (pessoa1.getPeso() + pessoa2.getPeso() + pessoa3.getPeso() + pessoa4.getPeso()) / 4;
        System.out.println("A média dos pesos são: " + peso + "Kg");

        double altura = (pessoa1.getAltura() + pessoa2.getAltura() + pessoa3.getAltura() + pessoa4.getAltura()) / 4;
        System.out.println("A média das alturas são: " + altura + "m");

// 4. Liste os fatoriais de 1 a 10. Deve ser exibido da seguinte maneira:
        System.out.println("\n4º===============================================================\n");
        int numero = 6;
        long fatorial = 1;

        for (int i = 1; i <= numero; i++) {
            fatorial *= i;
        }

        System.out.println("O fatorial de " + numero + " é: " + fatorial);
    }
}

/*AJUDA
%s	String
%d	Integer (byte, short, int, long)
%f	Floating-point (float, double)
%b	Boolean
%c	Character
ArrayList<Pessoa> listaPessoa = new ArrayList<>(); // Aqui criamos uma instância com lista de array.
listaPessoa.add(new Pessoa());
*/