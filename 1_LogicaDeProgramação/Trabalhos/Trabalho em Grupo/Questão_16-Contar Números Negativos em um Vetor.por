programa {
  const inteiro tamanho = 10
  funcao inicio() {
    inteiro numeros[tamanho]
    inteiro i
    inteiro quant = 0

    para (i = 0; i <= tamanho-1; i++) {
      escreva("Digite um numero: ")
      leia(numeros[i])
    }

    para (i = 0; i <= tamanho-1; i++) {
      se (numeros[i] < 0) {
        quant = quant + 1
      }
    }

    escreva("Quantidade de negativos: ", quant)
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 87; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */