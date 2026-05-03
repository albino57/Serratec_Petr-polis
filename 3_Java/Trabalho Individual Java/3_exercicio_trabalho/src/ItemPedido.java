public class ItemPedido {
    private String item;
    private Integer qtd;
    private Double preco;

    public ItemPedido(String item, Integer qtd, Double preco){
        this.item = item;
        this.qtd = qtd;
        this.preco = preco;
    }

    public String getItem() {
        return item;
    }

    public Integer getQtd() {
        return qtd;
    }

    public Double getPreco() {
        return preco;
    }
}
