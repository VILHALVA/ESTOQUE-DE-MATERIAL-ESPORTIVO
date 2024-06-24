programa
{
    funcao inicio()
    {
        real valor[5], valor_estoque = 0.0
        inteiro x

        escreva("Calculadora de Estoque de Material Esportivo\n\n")
        para (x = 0; x < 5; x++)
        {
            valor[x] = lerValorUnitario(x + 1)
            valor_estoque += valor[x]
        }
        escreva("\nO valor do estoque é R$ ", valor_estoque)
    }

    funcao real lerValorUnitario(inteiro indice)
    {
        real preco
        logico valido = falso

        enquanto (nao valido)
        {
            escreva("Informe o ", indice, "º valor: ")
            leia(preco)
            se (preco > 0)
            {
                valido = verdadeiro
            }
            senao
            {
                escreva("Valor inválido! O preço deve ser maior que zero.\n")
            }
        }

        retorne preco
    }
}
