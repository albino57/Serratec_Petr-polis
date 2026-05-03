public class Cliente {
    private String id;
    private String nome;

    public Cliente(String id, String nome){
        this.id = id;
        this.nome = nome;
    }

        public String getNome(){
            return this.nome;
        }
}
