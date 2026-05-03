import java.util.ArrayList;
public class Pedido {
    private Cliente cliente;
    private ArrayList <ItemPedido> listaPedido = new ArrayList<>();

    public Pedido(Cliente cliente){
        this.cliente = cliente;
    }

    //Metodo que adiciona itens na lista.
    public void adicionarItem(ItemPedido item){
       listaPedido.add(item);
    }

    // Metodo que somas todos os pedidos.
    public void fecharPedido(){
        double precoFinal = 0.0;
        float frete = 25.0f;

        for(int x=0; x < listaPedido.size(); x++){
            ItemPedido itemAtual = listaPedido.get(x);
            precoFinal += itemAtual.getPreco() * itemAtual.getQtd();
        }
        if(precoFinal <= 250.0){
            precoFinal += 25.0;
        }else{
            frete = 0.0f;
        }
        System.out.printf("\nCliente: %s", cliente.getNome());
        System.out.printf("\nFrete: R$ %.2f", frete);
        System.out.printf("\nValor das compras: R$ %.2f", precoFinal - frete);
        System.out.printf("\nValor Total: R$ %.2f\n", precoFinal);
    }
}