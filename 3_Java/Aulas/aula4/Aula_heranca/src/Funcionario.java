public class Funcionario extends Pessoa{ //extends signica que vai ter a herança da classe Pessoa.

    private Double salario;

    public Funcionario(String nome, String cpf, Double salario){
        super(nome, cpf);
        this.salario = salario;
    }

    public void imprimir(){
        System.out.println("O nome é: " + super.nome);
        System.out.println("O cpf é: " + this.getCpf());
        System.out.println("O salário é: " + getSelario());

    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public Double getSelario(){
        return salario;
    }
}
