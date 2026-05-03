package entidades;
import java.time.LocalDate;

public class FolhaPagamento {
    private static int contador = 0;
    private int id;
    private Funcionario funcionario;
    private LocalDate dataPagamento;
    private double descontoINSS;
    private double descontoIR;
    private double salarioLiquido;

    public FolhaPagamento(Funcionario funcionario, LocalDate dataPagamento){
        this.funcionario = funcionario;
        this.dataPagamento = dataPagamento;
    }

    // Getter ↓
    public double getDescontoINSS() { return descontoINSS; }
    public double getDescontoIR() { return descontoIR; }
    public double getSalarioLiquido() { return salarioLiquido; }

    //Metodo para calcular ↓
    public void calcularFolha() {
        double salarioBruto = funcionario.getSalario();
        double qtdDependentes = funcionario.getDependente().size() * 189.59;

        //Calculo INSS ↓
        if (salarioBruto <= 1518.00) {
            descontoINSS = (salarioBruto * 0.075);

        } else if (salarioBruto > 1518.00 && salarioBruto <= 2793.88) {
            descontoINSS = (salarioBruto * 0.09) - 22.77;

        } else if (salarioBruto > 2793.88 && salarioBruto <= 4190.83) {
            descontoINSS = (salarioBruto * 0.12) - 106.60;

        } else{
            descontoINSS = (salarioBruto * 0.14) - 190.42;
        }
        //Calculo INSS ↑
        //Calculo IR ↓
        if(salarioBruto < 2259.21){
            descontoIR = 0.0;
        }else if(salarioBruto >= 2259.21 && salarioBruto <= 2826.65){
            descontoIR = ((salarioBruto - qtdDependentes - descontoINSS) * 0.075) - 169.44;

        }else if(salarioBruto > 2826.65 && salarioBruto <= 3751.05){
            descontoIR = ((salarioBruto - qtdDependentes - descontoINSS) * 0.15) - 381.44;

        }else if(salarioBruto > 3751.05 && salarioBruto <= 4664.68){
            descontoIR = ((salarioBruto - qtdDependentes - descontoINSS) * 0.225) - 662.77;

        }else if(salarioBruto > 4664.68){
            descontoIR = ((salarioBruto - qtdDependentes - descontoINSS) * 0.275) - 896.0;
        }
        //Calculo IR ↑
        //Calculo Final ↓
        if(descontoIR < 0){ descontoIR = 0; }
        if(descontoINSS > 951.62){ descontoINSS = 951.62; }
        //Calculo Final ↑

        salarioLiquido = salarioBruto - descontoINSS - descontoIR;
        System.out.println("entidades.Funcionario: " + funcionario.getNome()
                +"\nCPF: " + funcionario.getcpf()
                +"\nSalário Bruto: R$" + String.format("%.2f",salarioBruto)
                +"\nDesconto INSS: R$" + String.format("%.2f", descontoINSS)
                +"\nDesconto IR: R$" + String.format("%.2f", descontoIR)
                +"\nSalario Liquido: R$" + String.format("%.2f", salarioLiquido));
        //Metodo para calcular ↑
    }
}
