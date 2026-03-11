programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro qtd = 10
		inteiro array[qtd], lixo = 0

		para(inteiro i = 0; i < qtd; i++){
			escreva("Digite o ",i+1 ,"º número: ")
			leia(array[i])
			limpa()
		}

		para(inteiro i = 0; i < qtd; i++){
			para(inteiro y = 0; y < qtd; y++){
				se(array[i] < array[y]){
					lixo = array[i]
					array[i] = array[y]
					array[y] = lixo
				}
			}	
		}

		escreva("Seu array ordenado: ")
		para(inteiro i = 0; i < qtd; i++){
			escreva(array[i]," ")
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
 * @POSICAO-CURSOR = 85; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */