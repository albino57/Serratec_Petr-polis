/*. 1º Validador de Cadastro de Funcionário: Criar uma classe Funcionario com nome, cpf e
salario. O construtor deve impedir a criação do objeto se o nome for nulo/vazio ou se o salario
for menor que o salário mínimo atual.
Regra:
- Se os dados forem inválidos, o programa deve exibir uma mensagem de erro e
não atribuir os valores (simulando uma barreira de segurança).
---------------------------------------------------------------------------------------------------
2º Gestão de Reservas com Proteção de Estado: Classe Reserva. Atributos: numeroQuarto,
tipo (Simples ou Luxo) e status (String). O atributo status deve ser private.A classe deve conter
um método confirmarCheckIn().
Regra:
- Status: “Ocupado”, “Reservado” ou “Livre”
- O status só pode mudar para "Ocupado" se antes estivesse como "Reservado".
  não deve ser possível mudar o status diretamente via set.
---------------------------------------------------------------------------------------------------
3. Controle de Versão de Software: Classe Versao. Atributos: major, minor. construtor recebe os
dois números. Criar um método lancarNovaVersao(boolean isCritica) e um metodo String
mostrarVersao().
Regra:
-Se isCritica for true, o major aumenta em 1 e o outro zera. Se false, apenas o
 minor aumenta. O acesso direto aos números deve ser bloqueado (private).
---------------------------------------------------------------------------------------------------
4. Controle de alunos: Deve se criar uma classe Alunos com nome, matrícula. O Construtor
deve impedir a criação de objeto se o nome ou matrícula estiver nulo/vazio. Deve se criar um
contador estático dentro da propria classe para que possa consultar quantos alunos foram
criados
Regras:
-Criar um contador estático para saber quantos alunos foram criados e incrementá lo ao construir um novo aluno
-Criar um método para imprimir na tela a quantidade de alunos
*/


public class Main {
    public static void main(String[] args) {
    // Exercício 1
        Funcionario funcionario = new Funcionario("Rafael",  "0123456789",  "2000.00");

        System.out.println(funcionario.getNome());
        System.out.println(funcionario.getCpf());
        System.out.println(funcionario.getSalario());
        System.out.println("\n---------------------------------------------------------------------------");
//-------------------------------------------------------------------------------------------------------
    //Exercício 2
        Reserva reserva = new Reserva(101, "Simples", "reservado");

        reserva.confirmarCheckIn();
        System.out.print(reserva.getNumeroQuarto() +"\n"+ reserva.getTipoQuarto() +"\n"+ reserva.getStatusQuarto());
//-------------------------------------------------------------------------------------------------------
    //Exercício 3


    }
}