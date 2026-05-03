programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro pares=0, array[6]

		para(inteiro i = 0; i < 6; i++){
			escreva("Digite o ", i+1,"º número: ")
			leia(array[i])
			limpa()
		}
		
		para(inteiro i = 0; i < 6; i++){
			se(array[i] % 2 == 0){
				pares += 1
			}
		}

		escreva("A quantidade dos números Pares do array são: ", pares)
		
		Util.aguarde(1000)
		escreva("\n") //Fim do programa!
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 274; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */