import org.w3c.dom.ls.LSOutput;

/*
* 4 - Um cadinho de tudo:
Exercício: Sistema de Veículos.
Detalhes:
- Criar interface Fretavel com metodo alugarVeiculo(pesoCarga, dias)
- Criar interface Tributavel com metodo calcularIpva()
- Criar classe mãe abstract sealed Veiculo (final placa, final marca, valorLocacaoDiaria,
  final anoFabricacao, precoFipe) implementa Fretavel e Tributavel.
- Criar classe filha Caminhao (final capacidadeCargaToneladas).
- Criar classe filha CarroPasseio.
*
---Regra de Negócio:
- Ao calcular o valor da locação através do metodo alugarVeiculo(pesoCarga, dias), caso
o peso da carga informado seja maior que a capacidade máxima do caminhão, deverá
ser aplicado um acréscimo de 10% sobre o valor total das diárias como taxa de sobrecarga.

---Regra do Governo: Veículos com mais de 20 anos de fabricação são isentos de IPVA
(retornam 0.0). Se for mais novo, o CarroPasseio paga 4% do valor de tabela e o
Caminhao paga 1.5%.
-Deverá ser tratada exceções para criação dos objetos(construtores) e exceções nas
chamadas dos metodos, qualquer parametro inválido deve ser lançada uma exeção e
tratada no metodo main

*/
public class Main {
    public static void main(String[] args) {
        try {
            Caminhao caminhao1 = new Caminhao("Z4", "Ford", 500.0, 2006,
                    70000.0, "3.0");
            CarroPasseio carroPasseio1 = new CarroPasseio("A1", "Fiat", 200.0,
                    2015, 20000.0, "1.0");

        //Impressão Caminhão
            System.out.printf("Preço do Aluguel\n\tCaminhão: %s \n\tPlaca: %s \n\tMotor: %s",
                    caminhao1.getMarca(), caminhao1.getPlaca(), caminhao1.getMotor());
            System.out.printf("\n\tValor Aluguel: %.2f \n\tValor IPVA: %.2f",
                caminhao1.alugarVeiculo(3500,10), caminhao1.calcularIPVA());

            System.out.println("\n-------------------------------------------------------------");
            //Impressão Carro
            System.out.printf("Preço do Aluguel\n\tCaminhão: %s \n\tPlaca: %s \n\tMotor: %s",
                    carroPasseio1.getMarca(), carroPasseio1.getPlaca(), carroPasseio1.getMotor());
            System.out.printf("\n\tValor Aluguel: %.2f \n\tValor IPVA: %.2f",
                   carroPasseio1.alugarVeiculo(400,10), carroPasseio1.calcularIPVA());

        }catch(IllegalArgumentException e){
            System.out.println("Houve um erro bem desconhecido\n" + e.getMessage());
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
%t  data/hora

* --- Modificadores de Precisão (Exemplos) ---
%.2f -> Limita um float/double a 2 casas decimais (ex: 10.50)
%03d -> Preenche um inteiro com zeros à esquerda (ex: 007)
*/