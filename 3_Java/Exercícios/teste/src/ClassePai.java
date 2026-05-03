public class ClassePai {
    protected String nome;
    protected String idade;
    protected String segundoNome;

    public ClassePai(String nome, String idade, String segundoNome){
        this.nome = nome;
        this.idade = idade;
        this.segundoNome = segundoNome;
    }

    public String getNome() {
        return nome;
    }

    public String getSegundoNome(){
        return segundoNome;
    }

    public void setSegundoNome(String segundoNome){
        this.segundoNome = segundoNome;
    }
}
