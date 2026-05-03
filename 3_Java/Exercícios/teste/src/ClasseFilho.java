public class ClasseFilho extends ClassePai{

    public ClasseFilho(String nome, String idade, String segundoNome){

        super(nome, idade, segundoNome);
    }

    @Override
    public String getNome() {
        return super.nome + " Oliveira";
    }
}
