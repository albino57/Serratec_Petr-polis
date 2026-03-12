programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro tam=3, tam_2=6
		inteiro control_1=0, control_2=0
		inteiro matriz [tam][tam] =  {{1,0,0},
								{0,1,0},
								{0,0,1}}
		
		para(inteiro i=0; i<tam; i++){
			se(matriz[i][control_1] == 1){
			 	control_1++
			}
			para(inteiro y=0; y<tam; y++){
				
				se(matriz[i][y] == 0 e matriz[i][y] != 1){
					control_2++
				}
			}	
		}
		
		se(control_1 == tam e control_2 == tam_2){
			escreva("A matriz que foi lida é identidade!")
		}senao{
			escreva("A matriz que foi lida NÃO é identidade!")
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
 * @POSICAO-CURSOR = 363; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 9, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */