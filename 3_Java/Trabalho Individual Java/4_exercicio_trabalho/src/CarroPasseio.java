public non-sealed class CarroPasseio extends Veiculo {
    private String motor;
    final int capacidadeCargaQuilos = 400;
    public CarroPasseio(String placa, String marca, double valorLocacaoDiaria, int anoFabricacao,
                        double precoFipe, String motor) {
        super(placa, marca, valorLocacaoDiaria, anoFabricacao, precoFipe);
        this.motor = motor;
    }

    public String getMotor() {return motor;}

    // Assinaturas das interface.
    @Override
    public Double alugarVeiculo(double pesoCarga, int dias) {
        Double valorFinal = 0.0;
        Double valorAluguel = getValorLocacaoDiaria() * dias;

        if(pesoCarga > this.capacidadeCargaQuilos){
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
            valorFinal = getPrecoFipe() * 0.04;
        }else{
            valorFinal = 0.0;
        }
        return valorFinal;
    }
}