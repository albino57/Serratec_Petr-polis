programa
{
	inclua biblioteca Matematica
	inclua biblioteca Util

	funcao real celsiusParaFahrenheit(real num){
		retorne (num * 1.8) + 32
	}
	
	funcao inicio()
	{
		real temp
		escreva("Digite a temperatura em °Celsius: ")
		leia(temp)
		
		escreva("\nTemperatura: ", Matematica.arredondar(celsiusParaFahrenheit(temp), 2) , " °F")

		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 223; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */