programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{	
		const inteiro tam=3
		inteiro matriz[3][3], cont=0

		para(inteiro i=0; i<tam; i++){
			para(inteiro x=0; x<tam; x++){
				escreva("Digite o ", cont+1, "º da matriz: ")
				leia(matriz[i][x])
				limpa()
				cont++
			}
		}

		escreva("O valores da Matriz são:\n")
		para(inteiro i=0; i<tam; i++){
			para(inteiro x=0; x<tam; x++){
				escreva(matriz[i][x],"")
			}
			escreva("\n")
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
 * @POSICAO-CURSOR = 278; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */