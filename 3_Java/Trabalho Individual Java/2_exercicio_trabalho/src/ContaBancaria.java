import java.io.IOException; //Biblioteca usada na função limpar!

public class ContaBancaria {

    private String numero;
    private String titular;
    private double saldo;
    private Integer saques = 3;

    public ContaBancaria(String numero, String titular, Double saldo){ //construtor
        this.numero = numero;
        this.titular = titular;
        this.saldo = saldo;
    }

    public String getNumero(){
        return this.numero;
    }

    public String getTitular(){
        return this.titular;
    }

    public Double getSaldo(){
        return this.saldo;
    }

    public Integer getSaques(){
        return this.saques;
    }

    public void setSaldo(Double saldo){
        this.saldo = saldo;
    }

    public  void setSaques(){
        this.saques -= 1;
    }


    public void depositar(String deposito){
        double _deposito = Double.parseDouble(deposito); //Converte a String que chegou em double.
        _deposito += saldo; // acontece a operação matemática de soma
        this.saldo = _deposito;
    }

    public void sacar(){

    }





    //------------Métodos Auxiliares------------
    public static void limpar() throws IOException, InterruptedException {
        final String os = System.getProperty("os.name"); //Variável que armazena o OS que está em uso.
        if(os == "Windows"){
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        }else{
            new ProcessBuilder("clear").inheritIO().start().waitFor();
        }
    }

    public static void logo(){
        System.out.println("--- C a i x a   E l e t r ô n i c o ----\n");
    }

    public void menu(){
        if(saques > 0){
            System.out.print
                    ("--- C a i x a   E l e t r ô n i c o ----\n" +
                            "\nSelecione uma opção" +
                            "\n1-Ver Saldo" +
                            "\n2-Depositar" +
                            "\n3-Sacar  (+" + saques + ")" +
                            "\n0-Sair"      +
                            "\n---------------------" +
                            "\nDigite: "
                    );
        }else{
            System.out.print
                    ("--- C a i x a   E l e t r ô n i c o ----\n" +
                            "\nSelecione uma opção" +
                            "\n1-Ver Saldo" +
                            "\n2-Depositar" +
                            "\n3-Sacar  (Limite Diário Atingido!)"+
                            "\n0-Sair"      +
                            "\n---------------------" +
                            "\nDigite: "
                    );
        }

    }
    //------------Métodos Auxiliares------------
}
