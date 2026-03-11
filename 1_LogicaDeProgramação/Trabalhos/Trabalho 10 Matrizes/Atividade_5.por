programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro tam=3
		inteiro matriz[tam][tam], cont=0, multiplicador=0
		
		para(inteiro i=0; i<tam; i++){
			para(inteiro x=0; x<tam; x++){
				escreva("Digite o ", cont+1, "º da matriz: ")
				leia(matriz[i][x])
				limpa()
				cont++
			}
		}

		escreva("Digite um número para multiplicar a Matriz: ")
		leia(multiplicador)
		limpa()

		para(inteiro i=0; i<tam; i++){
			para(inteiro x=0; x<tam; x++){
				matriz[i][x] = matriz[i][x] * multiplicador
				escreva(matriz[i][x]," ")
			}
			escreva("\n")
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
 * @POSICAO-CURSOR = 606; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 8, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */