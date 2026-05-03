programa
{
	funcao inicio()
	{
		const inteiro qtd = 5
		inteiro idades[qtd]
		inteiro maior = 0 
		inteiro menor = 0
		inteiro maiorIdade = 0
		inteiro menorIdade = 0
		inteiro lixo = 0

		para(inteiro i=0; i<qtd; i++){
			escreva("Digite sua idade: ")
			leia(idades[i])
			limpa()
		}

		limpa()
		para(inteiro i=0; i<qtd; i++){
			se(idades[i] > 0 e idades[i] < 18){
				menor += 1				
			}senao{
				maior += 1
			}
		}

		escreva("Pessoas maiores de 18 anos: ", maior, "\n")
		escreva("Pessoas menores de 18 anos: ", menor, "\n")

		para(inteiro i=0; i<qtd; i++){
			para(inteiro y=0; y<qtd; y++){
				se(idades[i] < idades[y]){
					lixo = idades[i]
					idades[i] = idades[y]
					idades[y] = lixo
					
				}
			}
		}

		escreva("Maior idade: ", idades[qtd-1], "\n")
		escreva("Menor idade: ", idades[qtd-qtd], "\n")

		escreva("Idades digitadas por ordem alfabética: ")
		para(inteiro i=0; i<qtd; i++){
			escreva(idades[i], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 943; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */