programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro tam=3
		inteiro matriz[tam][tam], cont=0, maior=0
		
		para(inteiro i=0; i<tam; i++){
			para(inteiro x=0; x<tam; x++){
				escreva("Digite o ", cont+1, "º da matriz: ")
				leia(matriz[i][x])
				limpa()
				cont++
			}
		}

		maior = matriz[0][0]
		para(inteiro i=0; i<tam; i++){
			para(inteiro x=0; x<tam; x++){
				se(maior < matriz[i][x]){
					maior = matriz[i][x]
				}	
			}	
		}
		escreva("O maior elemento da matriz é: ",maior)
		
		Util.aguarde(1000)
		escreva("\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 501; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */