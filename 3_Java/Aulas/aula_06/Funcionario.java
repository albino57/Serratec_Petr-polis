// declaração da classe [extends] -> herança
public class Funcionario extends Pessoa {

    // atributos
    // protected String nome
    private Double salario;

    // contrutores new Funcionar
    public Funcionario() {
    }

    public Funcionario(String primeiroNome, String segundoNome, String cpf, Double salario) {
        super(primeiroNome, cpf, segundoNome);
//        super.nome = nome;
//        super.cpf = cpf;
        this.salario = salario;
    }

    // função pra poder imprimir o funcionario
    public void imprimir() {
        System.out.println("O nome é: " + super.primeiroNome);
        System.out.println("O cpf é: " + this.getCpf());
        System.out.println("O salario é: " + this.salario);
    }

    // get e set especificos
    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

}
