public class Pessoa {

    // protected
    // private, mas quando alguem herdar, pode acessar livremente
    protected String primeiroNome;
    protected String segundoNome;
    protected String cpf;

    public Pessoa() {

    }

    public Pessoa(String primeiroNome, String cpf, String segundoNome) {
        this.primeiroNome = primeiroNome;
        this.segundoNome = segundoNome;
        this.cpf = cpf;
    }

    public String getNome() {
        return this.primeiroNome;
    }

    public String getPrimeiroNome() {
        return this.primeiroNome;
    }

    public String getCpf() {
        return this.cpf;
    }

    public void setPrimeiroNome(String primeiroNome) {
        this.primeiroNome = primeiroNome;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
// alt + insert
    public String getSegundoNome() {
        return segundoNome;
    }

    public void setSegundoNome(String segundoNome) {
        this.segundoNome = segundoNome;
    }
}
