programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		cadeia genero
		escreva("Escreva o seu genero: Masculino ou Feminino?\nResposta: ")
		leia(genero)

		limpa()
		genero = txt.caixa_alta(genero)
		escreva("Genero padronizado em caixa alta: ", genero)

		escreva ("\nPrimeira letra: ", txt.extrair_subtexto(genero, 0, 2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 372; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */