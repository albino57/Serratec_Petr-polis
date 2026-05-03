public class Casa {
    private String cozinha;
    private String banheiro;
    private String sala;
    private String quarto;
    private String garagem;

    public Casa(String cozinha, String banheiro, String sala, String quarto, String garagem) {
        this.cozinha = cozinha;
        this.banheiro = banheiro;
        this.sala = sala;
        this.quarto = quarto;
        this.garagem = garagem;
    }

    // M é t o d o s   G E T
    public String getCozinha() {
        return cozinha;
    }

    public String getBanheiro() {
        return banheiro;
    }

    public String getSala() {
        return sala;
    }

    public String getQuarto() {
        return quarto;
    }

    public String getGaragem() {
        return garagem;
    }
// M é t o d o s   G E T

// M é t o d o s   S E T
    public void setCozinha(String cozinha){ this.cozinha = cozinha; }

    public void setBanheiro(String banheiro){ this.banheiro = banheiro; }

    public void setSala(String sala){ this.sala = sala; }

    public void setQuarto(String quarto) { this.quarto = quarto; }

    public void setGaragem(String garagem) { this.garagem = garagem; }

    // M é t o d o s   S E T
}
