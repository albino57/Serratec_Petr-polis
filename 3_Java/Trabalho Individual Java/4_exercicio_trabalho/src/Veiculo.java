public abstract sealed class Veiculo implements Fretavel, Tributavel permits Caminhao, CarroPasseio{
    private final String placa;
    private final String marca;
    private double valorLocacaoDiaria;
    private final int anoFabricacao;
    private double precoFipe;

    private int anoAtual = 2026;

    public Veiculo(String placa, String marca, double valorLocacaoDiaria, int anoFabricacao, double precoFipe){
        this.placa = placa;
        this.marca = marca;
        this.valorLocacaoDiaria = valorLocacaoDiaria;
        this.anoFabricacao = anoFabricacao;
        this.precoFipe = precoFipe;
        if (valorLocacaoDiaria <= 0) throw new IllegalArgumentException("Valor de Locação Inválido");
        if (anoFabricacao <= 1900) throw new IllegalArgumentException("Data de Fabricação Inválida");
        if (precoFipe <= 0) throw new IllegalArgumentException("Preço Inválido");
    }

    public String getMarca() {return this.marca;}
    public String getPlaca() {return this.placa;}
    public Double getValorLocacaoDiaria() {return this.valorLocacaoDiaria;}
    public int getAnoFabricacao() {return this.anoFabricacao;}
    public double getPrecoFipe() {return this.precoFipe;}
    public int getAnoAtual() {return anoAtual;}

}