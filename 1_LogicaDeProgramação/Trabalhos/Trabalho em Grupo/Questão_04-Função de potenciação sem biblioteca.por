programa
{
      inteiro resultado = 1 
      inteiro contador

    funcao inicio()
    {
         inteiro base 
         inteiro expoente
         inteiro resposta

        escreva("Digite o valor da base: ")
        leia(base)
        escreva("Digite o valor do expoente: ")
        leia(expoente)

        resposta = potencia(base,expoente)

        escreva("O resultado da potência é: ", resposta)
    }
    funcao inteiro potencia(inteiro base, inteiro expoente){
      para(contador = 1; contador <= expoente; contador++){
             resultado = resultado * base 
      }
         retorne resultado
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */