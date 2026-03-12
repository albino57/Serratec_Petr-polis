/* Questão 12 - Cálculo do fatorial usando recursão
● Descrição: Faça um programa que leia um número inteiro e 
calcule o fatorial desse número utilizando uma função recursiva.
*/

programa
{
	funcao inicio()
	{
		inteiro numero
		
		escreva("=== Cálculo de Fatorial (Recursivo) ===\n")
		escreva("Digite um número inteiro positivo: ")
		leia(numero)

		se (numero < 0) {
			escreva("Erro: Não existe fatorial de número negativo.")
		} senao {
			escreva("O fatorial de ", numero, " é: ", fatorial(numero))
		}
		escreva("\n")
	}
	funcao inteiro fatorial(inteiro n)
	{
		
		se (n == 0 ou n == 1) 
		{
			retorne 1
		}
		senao 
		{
			
			retorne n * fatorial(n - 1)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 112; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */