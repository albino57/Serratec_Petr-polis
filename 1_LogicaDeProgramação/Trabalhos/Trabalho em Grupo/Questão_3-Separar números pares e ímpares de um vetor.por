programa
{
    const inteiro t = 10
    funcao inicio()
    {

          inteiro pares[10], impares[10], numeros[10]
          inteiro cont = 0, cont2 = 0


            para(inteiro contador = 0; contador < t;contador++){
                 escreva("Digite o ", contador + 1, " número: ")
                 leia(numeros[contador])
                 limpa()
            } 
            para(inteiro contador = 0; contador < t ; contador++){

                      se(numeros[contador] %2 == 0){
                            pares[cont] = numeros[contador] 
                              cont++
                     } senao{
                         impares[cont2] = numeros[contador]
                          cont2++
                     }

             }
                     escreva("Os números pares são: ") 
             para(inteiro contador = 0 ;contador < cont;contador++){

                   escreva(" ",pares[contador])

             }
                     escreva("\nOs números impares são: ")
             para(inteiro contador = 0;contador < cont2;contador++){

                   escreva(" ",impares[contador])
             }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 710; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */