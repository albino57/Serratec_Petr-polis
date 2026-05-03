public class Funcionario {

    private String nome;
    private String cpf;
    private String salario;

    public Funcionario(String nome, String cpf, String salario){ // Contrutor que está recebendo parâmentros

        Double valorSalario = Double.parseDouble(salario); // Transforma a String em Double para fazer conta.

        if(nome.isEmpty() || valorSalario < 1630.00){
            System.out.println("Nome está vazio ou salário é menor que R$: 1630,00");
            return;
        }

        this.nome = nome;
        this.cpf = cpf;
        this.salario = salario;
    }

    public String getNome(){
        return this.nome;
    }

    public String getCpf() {
        return cpf;
    }

    public String getSalario(){
        return this.salario;
    }
}
