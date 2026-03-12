programa {
	const inteiro tamanho = 5
  funcao inicio() {
	
    inteiro v1[tamanho], v2[tamanho], v3[tamanho]
    inteiro i

    para (i = 0; i <= tamanho-1; i++) {
    	escreva("Digite um numero:")
      leia(v1[i])
    }
    para (i = 0; i <= tamanho-1; i++) {
    	 escreva("Digite um numero:")
      leia(v2[i])
      
    }
    para (i = 0; i <= tamanho-1; i++) {
      v3[i] = v1[i] + v2[i]
      escreva(v3[i], " ")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 57; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */