programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro tam = 2
		inteiro num[tam]
		
		para(inteiro cont=0; cont < tam; cont++){
			escreva("Escreva o ", cont+1 ,"º número: ")
			leia(num[cont])
			limpa()
		}

		se(num[0] > num[1]){
			escreva("O número ", num[0], " é MAIOR do que o número ", num[1], "!")
			
		}senao se(num[1] > num[0]){
			 escreva("O número ", num[1], " é MAIOR do que o número ", num[0], "!")
			 
		}

		se(num[0] == num[1]){
			escreva("Opa, os números ", num[0], " e ", num[1], " são iguais :D")
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
 * @POSICAO-CURSOR = 473; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */