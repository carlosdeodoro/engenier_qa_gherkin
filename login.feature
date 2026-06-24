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

Cenário: Validar regras de login
Quando eu digitar <usuario> e <senha>
E clicar em "LOGIN"
Então deve exibir a <mensagem>

Exemplos:
| usuario             | senha       | mensagem                            |
| carlos@ebac.com.br  | senha123    | "Usuário ou senha inválidos"        |
| error@ebac.com.br   | senhaerrada | "Usuário ou senha inválidos"        |
|                     | 123*456     | "Por favor informe um email valido" |
| email@ebac.com.br   |             | "Usuário ou senha inválidos"        |