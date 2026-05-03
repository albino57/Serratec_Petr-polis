programa
{
	inclua biblioteca Util
	const inteiro linhas = 5, colunas = 5
	funcao inicio()
	{
		//Encontrar a Linha com Maior Soma em uma Matriz 5x5

		inteiro mat[linhas][colunas]
		inteiro soma = 0
		inteiro maiorSoma = 0
		inteiro linhaMaior = 0

		para(inteiro i = 0; i < linhas; i++){
			para(inteiro j = 0; j < colunas; j++){
				mat[i][j] = Util.sorteia(1, 50)
			}
		}

		para(inteiro i = 0; i < linhas; i++){
			soma = 0
			para(inteiro j = 0; j < colunas; j++){
				soma += mat[i][j]
				}	
				se(soma > maiorSoma){
					maiorSoma = soma
					linhaMaior = i
			}
			
		}
		escreva("Digite a soma maior: " + maiorSoma)
		escreva("\nLinha com maior soma: " + linhaMaior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 573; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 9, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */