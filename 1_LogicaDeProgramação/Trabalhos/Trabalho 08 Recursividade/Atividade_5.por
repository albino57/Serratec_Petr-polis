programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	funcao cadeia inverterString(cadeia palavra){

		inteiro tamanho = Texto.numero_caracteres(palavra)-1
		caracter letra
		cadeia palavraInvertida = ""
		
		se(Texto.numero_caracteres(palavra) <=2){
			palavraInvertida = palavra
		}senao{
			para(inteiro i = tamanho; i >= 0; i--){
				letra = Texto.obter_caracter(palavra, i)
				palavraInvertida += letra
			}
		}
		
		retorne palavraInvertida
	}
	
	funcao inicio(){
		cadeia palavra
		escreva("Digite uma palavra: ")
		leia(palavra)

		escreva("\nA plavra inverdita é: ", inverterString(palavra))

		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 279; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */