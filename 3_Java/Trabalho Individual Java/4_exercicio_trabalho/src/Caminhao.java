public non-sealed class Caminhao extends Veiculo{
    private String motor;
    final int capacidadeCargaToneladas = 3000;

    public Caminhao(String placa, String marca, double valorLocacaoDiaria, int anoFabricacao,
                    double precoFipe, String motor) {
        super(placa, marca, valorLocacaoDiaria, anoFabricacao, precoFipe);
        this.motor = motor;
    }

    public String getMotor() {return motor;}
    //public int getCapacidadeCargaToneladas() {return capacidadeCargaToneladas;}

    // Assinaturas das interfaces.
    @Override
    public Double alugarVeiculo(double pesoCarga, int dias) {
        Double valorFinal = 0.0;
        Double valorAluguel = getValorLocacaoDiaria() * dias;

        if(pesoCarga > this.capacidadeCargaToneladas){
            valorFinal = (valorAluguel * 0.1) + valorAluguel;
        }else{
            valorFinal += valorAluguel;
        }
        return valorFinal;
    }

    @Override
    public Double calcularIPVA() {
       Double valorFinal=0.0;
       if((getAnoAtual() - getAnoFabricacao()) <= 20){
            valorFinal = getPrecoFipe() * 0.015;
       }else{
           valorFinal = 0.0;
       }
        return valorFinal;
    }
}