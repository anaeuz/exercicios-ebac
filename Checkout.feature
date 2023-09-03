            #language: PT

            Funcionalidade: Finalizar compra

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenario: Cadastro válido
            Dado que eu tente finalizar uma compra
            Quando eu preencher todos os campos obrigatórios
            Então eu irei conseguir finalizar a compra

            Esquema do Cenario: Cadastro inválido
            Dado que eu tente finalizar uma compra
            Quando eu preencher o fortmato de <email> inválido
            Então a <mensagem> será exibida


            Exemplo:

            | email               | mensagem                     |
            | ana@ebacshop        | "Formato de e-mail inválido" |
            | luiz123@ebac.com    | "Formato de e-mail inválido" |
            | MartinYang@shop.com | "Formato de e-mail inválido" |


            Esquema do Cenario: Campo vazio
            Quando eu deixar de preencher algum campo obrigatório
            Então a uma mensagem de alerta será exibida
            