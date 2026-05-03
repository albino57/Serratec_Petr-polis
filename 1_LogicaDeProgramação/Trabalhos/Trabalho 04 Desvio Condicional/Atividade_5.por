programa
{
	inclua biblioteca Matematica
	inclua biblioteca Util
	
	funcao inicio()
	{
		real dinheiro = -1.00
		
		enquanto(dinheiro <= 0 ){

			escreva("Qual é o valor da compra em R$? \nDigite: ")
			leia(dinheiro)
			limpa()

			se(dinheiro >= 100){
				escreva("Sua compra de R$", Matematica.arredondar(dinheiro, 2), " reais é um total de R$ ", Matematica.arredondar(dinheiro*0.9, 2), " COM 10% de desconto!")
				pare //Saí do Fluxo do 'enquanto' e executa o resto código normalmente.
			}senao se (dinheiro > 0 e dinheiro < 100){
				escreva("Sua compra de R$", Matematica.arredondar(dinheiro, 2), " reais é um total de R$ ", Matematica.arredondar(dinheiro*1.0, 2), " SEM 10% de desconto!")
				pare
			}
			
			escreva("Você não faz compras com R$ ", Matematica.arredondar(dinheiro, 2), " reais! :X")
			Util.aguarde(3000)
			limpa()
		}
		
		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
	// OBS: Eu tive que usar 'senao se (dinheiro > 0 e dinheiro < 100)' ao invés de 'senao'
	// para não dar erro no compilador dizendo que "Algum trecho do código é inalcançavel"
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 537; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */