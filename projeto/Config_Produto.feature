            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que selecione um produto na EBAC-SHOP

            Esquema do Cenário: Quantidade válida
            Quando eu selecionar a cor blue
            E o tamanho S
            E a <quantidade>
            Então deve exbibir a <mensagem> quando eu clicar em "comprar".

            Exemplos:

            | quantidade | mensagem                         |
            | "1"        | "Produto adicionado ao carrinho" |
            | "2"        | "Produto adicionado ao carrinho" |
            | "3"        | "Produto adicionado ao carrinho" |
            | "4"        | "Produto adicionado ao carrinho" |
            | "5"        | "Produto adicionado ao carrinho" |
            | "6"        | "Produto adicionado ao carrinho" |
            | "7"        | "Produto adicionado ao carrinho" |
            | "8"        | "Produto adicionado ao carrinho" |
            | "9"        | "Produto adicionado ao carrinho" |
            | "10"       | "Produto adicionado ao carrinho" |


            Esquema do Cenário: Quantidade nula
            Quando eu selecionar a cor blue
            E o tamanho S
            E a <quantidade>
            Então deve exbibir a <mensagem> quando eu clicar em "comprar".

            Exemplos:

            | quantidade | mensagem                          |
            | "0"        | "Quantidade deve ser maior que 0" |


            Cenário: Quantidade inválida
            Quando eu selecionar a cor blue
            E o tamanho S
            E a quantidade for >10
            Então deve exbibir a mensagem "quantidade deve ser menor que 10" quando eu clicar em "comprar".

            Esquema do Cenário: Cor inválida
            Quando eu não selecionar nenhuma cor
            E o tamanho S
            E a <quantidade>
            Então deve exbibir a <mensagem> quando eu clicar em "comprar".

            Exemplos:

            | quantidade | mensagem            |
            | "1"        | "Selecione uma cor" |
            | "2"        | "Selecione uma cor" |
            | "3"        | "Selecione uma cor" |
            | "4"        | "Selecione uma cor" |
            | "5"        | "Selecione uma cor" |
            | "6"        | "Selecione uma cor" |
            | "7"        | "Selecione uma cor" |
            | "8"        | "Selecione uma cor" |
            | "9"        | "Selecione uma cor" |
            | "10"       | "Selecione uma cor" |

            Esquema do Cenário: Tamanho inválido
            Quando eu selecionar a cor blue
            E não selecionar nenhum tamanho
            E a <quantidade>
            Então deve exbibir a <mensagem> quando eu clicar em "comprar".

            Exemplos:

            | quantidade | mensagem                |
            | "1"        | "Selecione um tamanho"  |
            | "2"        | "Selecione uma tamanho" |
            | "3"        | "Selecione uma tamanho" |
            | "4"        | "Selecione uma tamanho" |
            | "5"        | "Selecione uma tamanho" |
            | "6"        | "Selecione uma tamanho" |
            | "7"        | "Selecione uma tamanho" |
            | "8"        | "Selecione uma tamanho" |
            | "9"        | "Selecione uma tamanho" |
            | "10"       | "Selecione uma tamanho" |


            Esquema do Cenário: Limpar
            Quando eu selecionar a cor blue
            E o tamanho S
            E a quantidade
            E clicar em "limpar"
            Então deve limpar todas as opções selecionadas.
