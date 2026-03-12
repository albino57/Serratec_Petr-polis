/*Questão 11 - Média dos números pares e ímpares de um vetor
● Descrição: Desenvolva um algoritmo que receba um vetor de 10 números e retorne a 
média dos números pares e a média dos números ímpares separadamente.
*/

programa {
	funcao inicio() {
		
		inteiro numeros[10]
		inteiro somaPar = 0
		inteiro somaImpar = 0
		inteiro qtdPar = 0
		inteiro qtdImpar = 0
		real mediaPar, mediaImpar

		
		para (inteiro i = 0; i < 10; i++) {
			escreva("Digite o ", i + 1, "º número: ")
			leia(numeros[i])
		}

		
		para (inteiro i = 0; i < 10; i++) {
			
			se (numeros[i] % 2 == 0) { 
				somaPar = somaPar + numeros[i] 
				qtdPar = qtdPar + 1            
			} 
			senao { 
				somaImpar = somaImpar + numeros[i] 
				qtdImpar = qtdImpar + 1            
			}
		}

		
		escreva("\n--- RESULTADO FINAL ---")

		se (qtdPar > 0) {
			mediaPar = somaPar / qtdPar
			escreva("\nA média dos pares é: ", mediaPar)
		} senao {
			escreva("\nNão foi digitado nenhum número par.")
		}

		se (qtdImpar > 0) {
			mediaImpar = somaImpar / qtdImpar
			escreva("\nA média dos ímpares é: ", mediaImpar)
		} senao {
			escreva("\nNão foi digitado nenhum número ímpar.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 505; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */