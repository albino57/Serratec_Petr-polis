programa
{
    funcao inicio()
    {
        inteiro numero 
          inteiro contador 

            escreva("Digite um número inteiro positivo: ")
            leia(numero)
            limpa()

        enquanto(numero <= 0){
            escreva("Número inválido!\n Digite um núemro inteiro positivo:")
            leia(numero)
            limpa()
        }

               escreva("\nDivisores do número : ", numero)

         para(contador = 1;contador <= numero;contador++){

			se(numero%contador==0)
               escreva("\n", contador)
         }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */