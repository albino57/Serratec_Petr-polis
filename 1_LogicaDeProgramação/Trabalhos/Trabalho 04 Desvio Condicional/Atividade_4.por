programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		real notaFinal = -1.0

		enquanto(notaFinal < 0 ou notaFinal > 10){
			escreva("Qual é sua nota Final? \nDigite: ")
			leia(notaFinal)
			limpa()
		
			se(notaFinal >= 7 e notaFinal <= 10){
				escreva("Você está Aprovado :D")
				pare //Sai do Fluxo do 'enquanto' e executa o resto código normalmente.
			
			}senao se(notaFinal >= 5 e notaFinal < 7){
				escreva("Você está em Recuperação :|")
				pare
			 
			}senao se(notaFinal >=0 e notaFinal < 5){
				escreva("Você infelizmente foi Reprovado :(")
			 	pare
			}

			escreva("Nota ", notaFinal, " é inválida!")
			Util.aguarde(3000)
			limpa()
		}
		
		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
	// 'retorne' sai do Fluxo sem executar o 'escreva' do laço 'enquanto', encerra o programa.
	// 'pare' sai do Fluxo do 'enquanto' e executa o resto código normalmente.
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 745; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */