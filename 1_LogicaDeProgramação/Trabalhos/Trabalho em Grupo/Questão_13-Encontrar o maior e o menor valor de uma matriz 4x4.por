/* Questão 13 - Encontrar o maior e o menor valor de uma matriz 4x4
● Descrição: Crie um programa que leia uma matriz 4x4 e encontre o 
maior e o menor valor dessa matriz.
*/

programa
{
	funcao inicio()
	{
		
		inteiro matriz[4][4]
		inteiro linha
		inteiro coluna
		inteiro maior 
		inteiro menor
		
		escreva("--- Cadastro da Matriz 4x4 ---\n")
		para (linha = 0; linha < 4; linha++) 
		{
			para (coluna = 0; coluna < 4; coluna++) 
			{
				escreva("Digite o valor para a posição [", linha, "][", coluna, "]: ")
				leia(matriz[linha][coluna])
			}
		}

		maior = matriz[0][0]
		menor = matriz[0][0]
		
		para (linha = 0; linha < 4; linha++) 
		{
			para (coluna = 0; coluna < 4; coluna++) 
			{
				
				se (matriz[linha][coluna] > maior) 
				{
					maior = matriz[linha][coluna]
				}
				
				se (matriz[linha][coluna] < menor) 
				{
					menor = matriz[linha][coluna]
				}
			}
		}
		
		escreva("\nO maior valor encontrado foi: ", maior)
		escreva("\nO menor valor encontrado foi: ", menor)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */