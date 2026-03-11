programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		cadeia usuario, senha
		
		escreva("Digite seu usuário e senha: ")
		leia(usuario, senha)

		escreva("\n")

		se(usuario == "admin" e senha == "1234"){
			escreva("Acesso Autorizado!")
		}senao{
			escreva("Acesso Negado!")
		}
		
		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 168; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */