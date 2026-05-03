programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	
	funcao inicio()
	{
		cadeia palavra, palavraInvertida = ""
		caracter letra
		inteiro tam=0, pos=0
		
		escreva("Digite uma palavra: ")
		leia(palavra)
		tam = Texto.numero_caracteres(palavra)-1
		
		para(inteiro i=tam; i>=0 ;i--){
			letra = Texto.obter_caracter(palavra, i)
			palavraInvertida += letra
		}

		se(palavra == palavraInvertida){
			escreva("A palavra ", palavra, " é palíndromo!")
		}senao{
			escreva("A palavra ", palavra, " NÃO é palíndromo!")
		}
		
		Util.aguarde(1000)
		escreva("\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */