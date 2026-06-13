#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que acesse a pagina de login da EBAC-SHOP

Cenário: Login com dados válidos
Quando eu digitar o usuário "carlos@ebac.com.br"
E a senha "senha*123"
E clico em "LOGIN"
Então devo ser direcionado para a tela de checkout

Cenário: Login com senha inválida
Quando eu digitar o usuário "carlos@ebac.com.br"
E a senha "senha*555"
E clico em "LOGIN"
Então devo visualizar a mensagem "Usuário ou senha inválidos"

Cenário: Login com usuário inválido
Quando eu digitar o usuário "error@ebac.com.br"
E a senha "senha*123"
E clico em "LOGIN"
Então devo visualizar a mensagem "Usuário ou senha inválidos"

Cenário: Login com campos vazios
Quando deixo os campos de usuário e senha em branco
E clico em "LOGIN"
Então devo visualizar a mensagem "Usuário ou senha inválidos"