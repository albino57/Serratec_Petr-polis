programa
{
    inclua biblioteca Texto --> tx

    funcao cadeia inverterCadeia(cadeia texto)
    {
        inteiro tamanho = tx.numero_caracteres(texto)

        se (tamanho <= 1)
        {
            retorne texto
        }
        senao
        {
            cadeia ultimo_caractere = tx.extrair_subtexto(texto, tamanho - 1, tamanho)
            cadeia restante_cadeia = tx.extrair_subtexto(texto, 0, tamanho - 1)

            retorne ultimo_caractere + inverterCadeia(restante_cadeia)
        }
    }

    funcao inicio()
    {
        cadeia palavra

        escreva("Digite um texto para inverter: ")
        leia(palavra)

        escreva("invertido fica: ", inverterCadeia(palavra), "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 555; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */