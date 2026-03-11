programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro numero=0, divisor=0
		logico primo=verdadeiro
		
		escreva("Digite um número: ")
		leia(numero)

		se(numero <= 1){
			escreva("\nO número ", numero, " NÃO é Primo!\n" )
			retorne
		}senao se(numero == 2){
			escreva("\nO número ", numero, " é Primo!\n" )
			retorne
		}senao{
			para(divisor=2; divisor * divisor <= numero; divisor++){
				se(numero % divisor == 0){
					primo = falso
					pare
				}
			}
		}
		
		se(primo == falso){
			escreva("\nO número ", numero, " NÃO é Primo!" )
		}senao{
			escreva("\nO número ", numero, " é Primo!" )
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
 * @POSICAO-CURSOR = 404; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */