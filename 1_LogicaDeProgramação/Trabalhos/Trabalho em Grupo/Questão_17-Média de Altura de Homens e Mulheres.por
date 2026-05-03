/*
Faça um programa que leia a altura e o sexo de 5 pessoas
e calcule a média da altura das mulheres e dos homens
separadamente. O programa deve encerrar quando o usuário digitar
uma altura negativa.
*/

programa
{
	const inteiro PESSOAS = 5
	
	funcao inicio()
	{
		inteiro i = 0, homens = 0, mulheres = 0
		real alturas[PESSOAS], mediaHomens = 0, mediaMulheres = 0
		caracter generos[PESSOAS]

		faca{
			escreva("Digite a altura: ")
			leia(alturas[i])

			se(alturas[i] >= 0){
				escreva("Digite o gênero (H/M): ")
				leia(generos[i])

				se(generos[i] == 'H'){
					mediaHomens += alturas[i]
					homens++
				}
				senao{
					mediaMulheres += alturas[i]
					mulheres++
				}

                    i++
				se(i == PESSOAS){
					mediaHomens /= homens
					mediaMulheres /= mulheres

					escreva("\nA média de altura de homens é igual a: ", mediaHomens)
					escreva("\nA média de altura de mulheres é igual a: ", mediaMulheres)
					escreva("\n\n")

					i = 0
					homens = 0
					mulheres = 0
					mediaHomens = 0
					mediaMulheres = 0
				}
			}
		}enquanto(alturas[i] >= 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 244; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */