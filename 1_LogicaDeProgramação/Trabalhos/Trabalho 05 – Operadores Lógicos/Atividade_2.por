programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro idade
		caracter doc_valido
		
		escreva("Digite sua idade: ")
		leia(idade)
		
		escreva("Você tem documento válido? \nDigite: ")
		leia(doc_valido)
		limpa()

		se(idade >= 18 e (doc_valido == 'S' ou doc_valido == 's')){
			escreva("Você pode se cadastrar, bem-vindo! :D")
			escreva("\nResposta: Idade ",idade," anos. Documento Válido '",doc_valido,"'.")
			
		}senao{
			escreva("Você não pode se cadastrar.")
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
 * @POSICAO-CURSOR = 483; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */