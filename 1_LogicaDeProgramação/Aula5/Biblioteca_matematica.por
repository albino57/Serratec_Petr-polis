programa
{
	inclua biblioteca Texto
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
	
	funcao inicio(){
		inteiro casas = 4
		real numero
		real raiz

		escreva("Entre com o Número: ", "\n")
		leia(numero)
		u.aguarde(500)

		escreva("Entre com a Raiz: ", "\n")
		leia(raiz)

		real resultado = m.raiz(numero, raiz) //m.raiz(radicando, indice)
		resultado = m.arredondar(resultado, casas)

		limpa()
		escreva("O resultado é: ", resultado, "\n")

		escreva("Número Truncado: ",t.real_para_inteiro(resultado),"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */