programa
{
    inclua biblioteca Util

    funcao inteiro fibonacci(inteiro n){
        
        inteiro proximo=0 ,f1=1, f2=1

        escreva("---Inicializando Sequência Fibonacci---")
        escreva("\nSequência:")
        
        para(inteiro i=0; i < n; i++){
            escreva(" ", f1)
            proximo  = f1 + f2
                f1 = f2
                f2 = proximo
        }
        retorne f2-f1
    }
    
    funcao inicio()
    {
        
        inteiro num
        
        escreva("Digite um número: ")
        leia(num)
        limpa()
        escreva("\n\nSequência Fibonacci de número ", num, " é: " ,fibonacci(num))

        Util.aguarde(1000)
        escreva("\n\n") //Fim do programa!
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 486; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */