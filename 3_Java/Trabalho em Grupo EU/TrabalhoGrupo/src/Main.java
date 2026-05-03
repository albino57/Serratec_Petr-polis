import entidades.Dependentes;
import entidades.Funcionario;
import entidades.FolhaPagamento;
import enums.TipoParentesco;
import excecoes.DependenteException;

import java.time.format.DateTimeFormatter;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.Locale;
public class Main {
    public static void main(String[] args) {
        // Variáveis
        String nomeArquivoSaida = "folhaProcessada.csv";

        // Cria as instâncias.
        Funcionario funcionario1 = null;
        Dependentes dependente1 = null;
        FolhaPagamento folhaPagamento1 = null;
        DateTimeFormatter formatador = DateTimeFormatter.ofPattern("yyyyMMdd");

        // Cria Funcionário.
        try {
            funcionario1 = new Funcionario("Rafael", "08120120290",
                    LocalDate.of(1990, 12, 15), 10500.0);

        } catch (IllegalArgumentException exception) {
            System.out.println("Erro ao instanciar." + "\n->" + exception.getMessage());
        }

        // ↓ Try da Class excecoes.DependenteException ↓
        // Cria Dependente.
        try {
            dependente1 = new Dependentes("Rafinha", "00011122233",
                    LocalDate.of(2020, 9, 9), TipoParentesco.FILHO);

            // Adiciona o dependente ao funcionario
            if(funcionario1 != null && dependente1 != null) {
                funcionario1.adicionarDependentes(dependente1);
            }
        } catch (DependenteException exception) {
            System.err.println("Erro ao instanciar." + "\n->" + exception.getMessage());
        }

        // Calcula folha do funcionário
        if (funcionario1 != null) {
            folhaPagamento1 = new FolhaPagamento(funcionario1, LocalDate.now());
            folhaPagamento1.calcularFolha();
        }

        // Cria arquivo processado da folha de pagamento
        try(PrintWriter writer = new PrintWriter(new FileWriter(nomeArquivoSaida))) {
            String dataFormatada1 = funcionario1.getDataNascimento().format(formatador);
            //String dataFormatada2 = dependente1.getDataNascimento().format(formatador);
            //String linha1 = String.format("%s;%s;%s;%.2f;\n%s;%s;%s;%s",
            //        funcionario1.getNome(),
            //        funcionario1.getcpf(),
            //        dataFormatada1,
            //        funcionario1.getSalario(),
            //        dependente1.getNome(),
            //        dependente1.getcpf(),
            //        dataFormatada2,
            //        dependente1.getParentesco());

            //String linha2 = String.format(java.util.Locale.US,"%s;%s;%.2f;%.2f;%.2f",
            //        funcionario1.getNome(),
            //        funcionario1.getcpf(),
            //        folhaPagamento1.getDescontoINSS(),
            //        folhaPagamento1.getDescontoIR(),
            //        folhaPagamento1.getSalarioLiquido());

            String linha2 = String.format(new java.util.Locale("pt", "BR"),"%s;%s;%.2f;%.2f;%.2f",
                    funcionario1.getNome(),
                    funcionario1.getcpf(),
                    folhaPagamento1.getDescontoINSS(),
                    folhaPagamento1.getDescontoIR(),
                    folhaPagamento1.getSalarioLiquido());

            //writer.println(linha1);
            writer.println(linha2);
        }catch (Exception exception){
            System.out.println("Erro ao criar arquivo" + exception.getMessage());
        }
    }
}

/*AJUDA no printf (print formatado).
%i  Integer
%u  int positivos
%s	String
%d  (byte, short, int, long)
    byte  = 1 byte  ( 8 bits) | -128 até 127
    short = 2 bytes (16 bits) | -32.768 até 32.767
    int   = 4 bytes (32 bits) | -2.147.483.648 até 2.147.483.647
    long  = 8 bytes (64 bits) | -9.223.372.036.854.775.808 até 9.223.372.036.854.775.807

%f	Floating-point (float, double)
    float  = 4 bytes (32 bits) |  7 casas decimais
    double = 8 bytes (64 bits) | 15 casas decimais

%e  Floating-point em notação exponencial
%b	Boolean
%c	char
%tF para YYYY-MM-DD

* --- Modificadores de Precisão (Exemplos) ---
%.2f -> Limita um float/double a 2 casas decimais (ex: 10.50)
%03d -> Preenche um inteiro com zeros à esquerda (ex: 007)
*/