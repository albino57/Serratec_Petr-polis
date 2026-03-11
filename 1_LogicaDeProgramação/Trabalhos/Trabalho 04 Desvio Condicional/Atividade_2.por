programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{	
		inteiro idade=-1
		
		enquanto (idade < 0){
			
			escreva("Digite sua Idade: ")
			leia(idade)
			limpa()

			se(idade >= 0 e idade <= 120){
				
				se(idade >= 0 e idade < 18){
					escreva("Você é MENOR de idade!")
				}senao{
					escreva("Você é MAIOR de idade!")
				}
				
			}senao{
				idade = -1
				escreva("Sua idade é inválida!")
				Util.aguarde(3000)
				limpa()
				
			}
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
 * @POSICAO-CURSOR = 455; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */