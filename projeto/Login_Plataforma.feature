            #language: PT

            Funcionalidade: Login

            Como cliente da EBAC-SHOP
            Quero fazer login
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Esquema do Cenario: Login válido
            Quando eu inserir o <usuario>
            E <senha>
            Então serei redirecionado para a tela de checkout

            Exemplo:
            | usuario            | senha     |
            | "ana@ebacshop.com"   | "123@teste" |
            | "paula@ebacshop.com" | "teste@123" |


            Esquema do Cenario: Login inválido
            Quando eu inserir o <usuario>
            E <senha>
            Então a <mensagem> será exibida.

            Exemplo:
            | usuario              | senha       | mensagem                     |
            | "ana@ebacshop"       | "123teste"  | "Usuário ou senha inválidos” |
            | "ana@ebacshop.com"   | "@teste"    | "Usuário ou senha inválidos” |
            | "paula@ebacshop.com" | "t@123"     | "Usuário ou senha inválidos” |
            | "paula@shop.com"     | "teste@123" | "Usuário ou senha inválidos” |
