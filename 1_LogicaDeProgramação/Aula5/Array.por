programa
{
	
	const inteiro TAMANHO = 5
	
	funcao inicio(){
	
		real numeros[TAMANHO]
		real soma = 0.0
		real media = 0.0
		
		para(inteiro cont =0; cont < TAMANHO; cont++){
			escreva("Digite o ", cont+1, " valor: ")
			leia (numeros[cont])
			limpa()
		}

		limpa()
		
		escreva("Notas digitados são: ")
		para(inteiro cont =0; cont < TAMANHO; cont++){
			se(cont < TAMANHO-1){
				escreva(numeros[cont], ", ")
			}
			se(cont == TAMANHO-1){
				escreva(numeros[cont], ".")
			}
		}

		para(inteiro cont =0; cont < TAMANHO; cont++){
			soma += numeros[cont]
			media += numeros[cont]
		}
		media = media / TAMANHO

		escreva("\nA soma de todas as notas são: ")
		escreva(soma)
		escreva("\nA média de todas as notas são: ")
		escreva(media)
		
		escreva("\n\n") //Fim do programa.
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 788; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */