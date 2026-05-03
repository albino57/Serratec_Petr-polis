public class Main {

    public static void main(String[] args) {
        Funcionario funcionario = new Funcionario("Carlos","Carvalho", "12345678911", 1000.0);
        System.out.println("Ola, " + funcionario.getNome());

        Cliente cliente = new Cliente("Cadu", "3216549888", "Mattos");
        System.out.println("Ola, " + cliente.getNome());
        cliente.toString();
    }

}
