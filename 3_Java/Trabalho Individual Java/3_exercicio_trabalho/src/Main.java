import java.io.IOException;

/*
3 - Relacionamentos e Encapsulamento:
Exercício: E-commerce (Cliente -> Pedido -> ItemPedido).
Detalhes: Modelar um Pedido que pertence a um Cliente e contém uma Lista de
ItemPedido.
Regra de Negócio:
Calcular o Frete: Criar um metodo fecharPedido(). Se o valor total dos itens for superior a
R$ 250,00, o frete é grátis. Caso contrário, cobrar uma taxa fixa de R$ 25,00. Imprimir o recibo
detalhado.
*/
public class Main {
    public static void main(String[] args) {

        Cliente cliente1 = new Cliente("1", "Rafael"); //Aqui Cria um cliente.
        Pedido pedido1 = new Pedido(cliente1); //Aqui eu crio um pedido para o cliente Rafael.

        //Aqui eu crio os itens.
        ItemPedido itemPedido1 = new ItemPedido("Caneta", 10, 10.0);
        ItemPedido itemPedido2 = new ItemPedido("Mochila", 1, 120.0);
        ItemPedido itemPedido3 = new ItemPedido("Caderno", 1, 20.0);

        //Aqui eu adiciono os itens de cima ao pedido1.
        pedido1.adicionarItem(itemPedido1);
        pedido1.adicionarItem(itemPedido2);
        pedido1.adicionarItem(itemPedido3);

        //Agora eu faço a conta do valor final.
        pedido1.fecharPedido();
    }
}

/*AJUDA no printf (print formatado).
%i  Integer
%u  int positivos
%s	String
%d  (byte, short, int, long)
    byte  = 1 byte  ( 8 bits) | -128 até 127
    short = 2 bytes (16 bits) | -32.768 até 32.767
    int   = 4 bytes (32 bits) | -2.147.483.648 até 2.147.483.647
    long  = 8 bytes (64 bits) | -9.223.372.036.854.775.808 até 9.223.372.036.854.775.807

%f	Floating-point (float, double)
    float  = 4 bytes (32 bits) |  7 casas decimais
    double = 8 bytes (64 bits) | 15 casas decimais

%e  Floating-point em notação exponencial
%b	Boolean
%c	char
%t  data/hora

* --- Modificadores de Precisão (Exemplos) ---
%.2f -> Limita um float/double a 2 casas decimais (ex: 10.50)
%03d -> Preenche um inteiro com zeros à esquerda (ex: 007)
*/