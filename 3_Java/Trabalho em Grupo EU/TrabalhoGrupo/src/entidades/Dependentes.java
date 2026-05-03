package entidades;
import enums.TipoParentesco;
import excecoes.DependenteException;
import java.time.LocalDate;
import java.time.Period;

public class Dependentes extends Pessoa{
    private TipoParentesco parentesco;

    public Dependentes(String nome, String cpf , LocalDate dataNascimento, TipoParentesco parentesco)
            throws DependenteException {
        super(nome, cpf, dataNascimento);
        this.parentesco = parentesco;

        // Exception para idade do dependente.
        int idade = Period.between(dataNascimento, LocalDate.now()).getYears();
        if(idade >= 18){
            throw new DependenteException("A idade do dependente é maior que 17 anos.");
        }
    }

    // Getter ↓
    public TipoParentesco getParentesco() { return parentesco; }
}