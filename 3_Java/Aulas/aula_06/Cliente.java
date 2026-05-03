public class Cliente extends Pessoa {

    public Cliente(String primeiroNome, String cpf, String segundoNome) {
        super(primeiroNome, cpf, segundoNome);
     }

    @Override
    public String getNome() {
        return "Senhor " + super.segundoNome;
    }

}
