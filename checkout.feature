#language: pt

Funcionalidade: Cadastro de cliente
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que acesse a tela de cadastro

Cenário: Cadastro com todos os campos obrigatórios preenchidos
Quando preencher todos os campos obrigatórios
E clicar em "Finalizar compra"
Então deve exbir a mensagem "Compra realizada com sucesso"

Cenário: Cadastro com e-mail inválido
Quando informar o email "carlos2ebac.com.br"
E clicar em "Finalizar compra"
Então o sistema deve exibir uma mensagem "Email inválido"

Cenário: Cadastro com campos obrigatórios vazios
Quando tentar realizar o cadastro sem preencher os campos obrigatórios
E clicar em "Finalizar compra"
Então o sistema deve exibir uma mensagem "Campos em branco"