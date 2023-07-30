            #language: PT

            Funcionalidade: Finalizar compra

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu tente finalizar uma compra

            Esquema do Cenario: Cadastro válido
            Quando eu preencher <nome>
            E <sobrenome>
            E <pais>
            E <endereco>
            E <cidade>
            E <CEP>
            E <telefone>
            E <email>
            Então eu irei conseguir finalizar a compra

            Exemplo:

            | nome      | sobrenome | pais     | endereco    | cidade         | CEP      | telefone    | email                   |
            | "Ana"     | "Paula"   | "Brasil" | "Rua Luz"   | Sao Jose       | 8845323  | 93423423432 | ana@ebacshop.com        |
            | "Ronaldo" | "Silva"   | "França" | "Rua Merci" | Terra do nunca | 83453567 | 544389574   | luiz123@ebacshop.com    |
            | "Martin"  | "Yang"    | "China"  | "jsfhasjkf" | dsjdjsdhaj     | 45456353 | 544389574   | MartinYang@ebacshop.com |

            Esquema do Cenario: Cadastro inválido
            Quando eu preencher <nome>
            E <sobrenome>
            E <pais>
            E <endereco>
            E <cidade>
            E <CEP>
            E <telefone>
            E <email>
            Então a <mensagem> será exibida


            Exemplo:

            | nome      | sobrenome | pais     | endereco    | cidade         | CEP      | telefone    | email               | mensagem                     |
            | "Ana"     | "Paula"   | "Brasil" | "Rua Luz"   | Sao Jose       | 8845323  | 93423423432 | ana@ebacshop        | "Formato de e-mail inválido" |
            | "Ronaldo" | "Silva"   | "França" | "Rua Merci" | Terra do nunca | 83453567 | 544389574   | luiz123@ebac.com    | "Formato de e-mail inválido" |
            | "Martin"  | "Yang"    | "China"  | "jsfhasjkf" | dsjdjsdhaj     | 45456353 | 544389574   | MartinYang@shop.com | "Formato de e-mail inválido" |


            Esquema do Cenario: Campo vazio
            Quando eu preencher <nome>
            E <sobrenome>
            E <pais>
            E <endereco>
            E <cidade>
            E <CEP>
            E <telefone>
            E <email>
            Então a <mensagem> será exibida

            Exemplo:

            | nome      | sobrenome | pais     | endereco      | cidade         | CEP        | telefone    | email                   | mensagem                        |
            | ""        | "Paula"   | "Brasil" | "Rua Luz"     | Sao Jose       | 8845323    | 93423423432 | ana@ebacshop.com        | "Campos vazios não são aceitos" |
            | "Ana"     | ""        | "Brasil" | "Rua Luz"     | Sao Jose       | 8845323    | 93423423432 | ana@ebacshop.com        | "Campos vazios não são aceitos" |
            | "Ronaldo" | "Silva"   | ""       | "Rua Merci"   | Terra do nunca | 83453567   | 544389574   | luiz123@ebacshop.com    | "Campos vazios não são aceitos" |
            | "Martin"  | "Yang"    | "China"  | ""            | dsjdjsdhaj     | 45456353   | 544389574   | MartinYang@ebacshop.com | "Campos vazios não são aceitos" |
            | "Ronaldo" | "Silva"   | "França" | "Rua Merci"   | ""             | 83453567   | 544389574   | luiz123@ebacshop.com    | "Campos vazios não são aceitos" |
            | "Martin"  | "Yang"    | "China"  | "Rua Merci"   | "dsjdjsdhaj"   | ""         | 544389574   | MartinYang@ebacshop.com | "Campos vazios não são aceitos" |
            | "Ronaldo" | "Silva"   | "Eua"    | "Rua Merci"   | Terra do nunca | 83453567   | ""          | luiz123@ebacshop.com    | "Campos vazios não são aceitos" |
            | "Martin"  | "Yang"    | "China"  | "djaskdashfk" | "dsjdjsdhaj"   | "83453567" | 544389574   | ""                      | "Campos vazios não são aceitos" |
