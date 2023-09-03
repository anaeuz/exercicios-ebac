            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Dados obrigatórios
            Dado que o cliente irá escolher seu produto
            Quando selecionar todos os dados obrigatóiros
            Então deve inserir o produto no carrinho

            Cenário: Limite produto
            Dado que o cliente selecione mais de 10 produtos
            Quando atingir 11 produtos
            Então deve apresentar uma mensagem "Quantidade máxima atingida"

            Cenário: Esvaziar carrinho
            Dado que o cliente queira esvaziar o carrinho
            Quando clicar no botão "Limpar"
            Então deve excluir todos os produtos do carrinho