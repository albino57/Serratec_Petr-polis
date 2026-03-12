programa
{

    inclua biblioteca Texto --> txt

    funcao inicio()
    {
        cadeia frase
        inteiro total_vogais = 0
        inteiro tamanho_frase
        caracter caracteres

        escreva("Digite uma frase: ")
        leia(frase)


        tamanho_frase = txt.numero_caracteres(frase)


        para (inteiro contador = 0; contador < tamanho_frase; contador++){


            caracteres = txt.obter_caracter(frase, contador)


            se (caracteres == 'a' ou caracteres == 'ã' ou caracteres == 'â' ou caracteres == 'á' ou caracteres == 'à' ou 
                caracteres == 'A' ou caracteres == 'Ã' ou caracteres == 'Â' ou caracteres == 'Á' ou caracteres == 'À' ou
                caracteres == 'e' ou caracteres == 'é' ou caracteres == 'ê' ou caracteres == 'è' ou
                caracteres == 'E' ou caracteres == 'É' ou caracteres == 'Ê' ou caracteres == 'È' ou 
                caracteres == 'i' ou caracteres == 'í' ou 
                caracteres == 'I' ou caracteres == 'Í' ou
                caracteres == 'o' ou caracteres == 'õ' ou caracteres == 'ó' ou caracteres == 'ô' ou 
                caracteres == 'O' ou caracteres == 'Ó' ou caracteres == 'Ô' ou caracteres == 'Õ' ou
                caracteres == 'u' ou caracteres == 'ú' ou
                caracteres == 'U' ou caracteres == 'Ú')


            {
                total_vogais++
            }
        }

        escreva("A frase possui ", total_vogais, " vogais.\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */