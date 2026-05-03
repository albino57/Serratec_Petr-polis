/*
Escreva um programa que calcule e exiba a soma dos
elementos da diagonal secundária de uma matriz 4x4.
*/

programa
{
	const inteiro TAMANHO = 4
	
	funcao inicio()
	{
		inteiro matriz[TAMANHO][TAMANHO], soma = 0

		//só para preencher a matriz
		para(inteiro i = 0; i < TAMANHO; i++){
			para(inteiro j = 0; j < TAMANHO; j++){
				matriz[i][j] = (i + 1) * (1 + i) * (1 + j)
				escreva(matriz[i][j], "       ")
			}
			escreva("\n")
		}
		
		para(inteiro i = 0; i < TAMANHO; i++){
			soma += matriz[i][TAMANHO - 1 - i]
		}

		escreva("\nA soma da diagonal secundária é: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 104; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */