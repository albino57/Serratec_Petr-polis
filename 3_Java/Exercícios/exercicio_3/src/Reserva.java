public class Reserva {

    private Integer numeroQuarto;
    private String tipoQuarto;
    private String statusQuarto;

    public Reserva(Integer numeroQuarto, String tipoQuarto, String statusQuarto){
        String tq = tipoQuarto;
        String sq = statusQuarto;

        if(!tq.equalsIgnoreCase("simples") && !tq.equalsIgnoreCase("luxo")){
            System.out.println("Você deve configurar Tipo do Quarto como 'Simples' ou 'Luxo'!");
            return;

        }else if (!sq.equalsIgnoreCase("ocupado") && !sq.equalsIgnoreCase("reservado") && !sq.equalsIgnoreCase("livre")) {
            System.out.println("Você deve selecionar Status do Quarto como 'Ocupado', 'Reservado' ou 'Livre'!");
            return;
        }
        this.numeroQuarto = numeroQuarto;
        this.tipoQuarto   = tipoQuarto;
        this.statusQuarto = statusQuarto;
    }

    public Integer getNumeroQuarto(){
        return this.numeroQuarto;
    }

    public String getTipoQuarto(){
        return this.tipoQuarto;
    }

    public String getStatusQuarto(){
        return this.statusQuarto;
    }

    public void confirmarCheckIn(){
        if(statusQuarto.equalsIgnoreCase("reservado")){
            this.statusQuarto = "Ocupado";
        }
    }
}
