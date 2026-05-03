//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        ClassePai classePai = new ClassePai("Rafael", "21", "Albino");
        ClasseFilho classeFilho = new ClasseFilho("Carina","31", "");

        System.out.println(classeFilho.getNome());
        System.out.println(classePai.getNome());


    }
}