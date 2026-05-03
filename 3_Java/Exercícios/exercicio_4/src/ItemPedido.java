public class ItemPedido{

    private Integer quantidade;
    private Double subtotal;
    private Produto produto;

    ItemPedido(Produto produto, Integer quantidade){
        this.subtotal = quantidade * produto.getValor();

    }

    public String toString() {
        return this.quantidade +"x " + produto.getNome() +" | "+ "SubTotal: R$" + this.subtotal;
    }
}