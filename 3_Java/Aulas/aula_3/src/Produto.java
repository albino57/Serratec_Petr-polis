import java.util.UUID;

public class Produto {
    private String id;
    private String nome;
    private String preco;

    public Produto() { //Aqui é o construtor :D e ele é executado sempre quando o 'new' é chamado.
        this.id = UUID.randomUUID().toString(); // UUID gera valor aleátrio.
    }

    //Overload, ótimo para já configurar um valor na hora da chamada do 'new'.
    public Produto(String nome, String preco){
        this.nome = nome;
        this.preco = preco;
    }

    //Get e set é para acessar atributos privados :D, é mais do que um barato. :D
    public void setNome(String nome){
        this.nome = nome;
    }

    public String getNome(){
        return this.nome;
    }

}

