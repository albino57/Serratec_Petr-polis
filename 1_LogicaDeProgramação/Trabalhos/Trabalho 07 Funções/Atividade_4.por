programa
{
	inclua biblioteca Util

	funcao real calcularMedia(real nota1, real nota2, real nota3){
		retorne (nota1 + nota2 + nota3) / 3
	}
	
	funcao inicio()
	{
		real nota1, nota2, nota3
		escreva("Digite suas 3 notas: ")
		leia(nota1, nota2, nota3)

		escreva("A média da suas notas ", nota1, ", ",nota2, ", ",nota3, ", é: ", calcularMedia(nota1, nota2, nota3))
		
		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 166; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */