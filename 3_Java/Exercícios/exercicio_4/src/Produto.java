public class Produto {

    private String nome;
    private Double valor;

    Produto(String nome, Double valor){
        this.nome = nome;
        this.valor = valor;
    }

    public String getNome(){
        return this.nome;
    }
    public Double getValor(){
        return this.valor;
    }
}
