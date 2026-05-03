/*
Descrição: Crie um programa que simule um sistema de login. O
programa deve pedir ao usuário um nome de login e uma senha. Se
ele errar 3 vezes, o acesso deve ser bloqueado.
*/

programa
{
	
	funcao inicio()
	{
		cadeia login = "admin", loginDigitado = "", senha = "1234", senhaDigitada = "0"
		inteiro tentativas = 3
		
		faca{
			escreva("\nDigite o login: ")
			leia(loginDigitado)
			escreva("Digite a senha: ")
			leia(senhaDigitada)

			se(loginDigitado != login ou senhaDigitada != senha){
				escreva("\nCredenciais incorretas\n")
				tentativas--
			}
		}enquanto((loginDigitado != login ou senhaDigitada != senha) e tentativas >= 1)

		se(tentativas == 0){
			escreva("\nAcesso bloqueado devido a 3 tentativas erradas\n")
		}
		senao{
			escreva("\nAcesso concedido\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 295; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */