programa
{
	inclua biblioteca Util
	
	funcao inicio(){
		cadeia nomes [5]
		//nomes[0] = "Rafael"
		//nomes[1] = "Albino"
		//nomes[2] = "Carina"
		//nomes[3] = "Luna"
		//nomes[4] = "Serratec"

		para(inteiro i=0; i < 5; i++){
			escreva("Nome ", i + 1 , ":")
			leia(nomes[i])
			limpa()
		}


		para(inteiro i=0; i < 5; i++){
			escreva(nomes[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 256; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */