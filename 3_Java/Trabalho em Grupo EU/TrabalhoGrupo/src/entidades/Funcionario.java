package entidades;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;

public class Funcionario extends Pessoa{
    private Double salario;
    private Double descontoINSS;
    private Double descontoIR;
    // Aqui cria uma lista de dependentes para cada funcionario.
    private List<Dependentes> dependentes = new ArrayList<>();

    public Funcionario(String nome, String cpf, LocalDate dataNascimento, Double salario){
        super(nome, cpf, dataNascimento); // Aqui eu herdo da SuperClass
        this.salario = salario;

        //Validações de segurança.
        if(this.salario <= 0.0) throw new IllegalArgumentException("Salário não pode ser <= que 0!");
        if(nome.isEmpty() || nome.isBlank()) throw new IllegalArgumentException("Nome está vazio!");
        if(cpf.isEmpty() || cpf.isBlank()) throw new IllegalArgumentException("CPF está vazio!");
        if(cpf.length() != 11) throw new IllegalArgumentException("CPF inválido ou menor/maior que 11 Digitos!");

        // ↓ Aqui o '\\d' significa que aceita de 0-9 e o '+' que aceita um ou mais de um número ↓
        if(!cpf.matches("\\d+")) throw new IllegalArgumentException("CPF deve conter apenas números!");
        int idade = Period.between(dataNascimento, LocalDate.now()).getYears();
        if(idade >= 0 && idade < 18) throw new IllegalArgumentException("Data de nascimento (Menor de Idade)!");
        if(idade < 0 || idade > 120) throw new IllegalArgumentException
                ("Data de nascimento inválida (Fora da faixa válida 'MENOR que 0 ou MAIOR que 120 anos'!");
    }

    //Metodo para adicionar dependetes.
    public void adicionarDependentes(Dependentes dependente){
        this.dependentes.add(dependente);
    }

    // Os getters ↓
    public double getSalario(){return this.salario;}
    public List<Dependentes> getDependente(){return this.dependentes;}

    //public void setSalario(Double salario){this.salario = salario;}
    //public void setDescontoINSS(Double descontoINSS){this.descontoINSS = descontoINSS;}
    //public void setDescontoIR(Double descontoIR) {this.descontoIR = descontoIR;}
}
