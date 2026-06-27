#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de produto

Cenário: Compra do produto com configuração completa
Quando seleciono a cor, tamanho e quantidade
E clico em "COMPRAR"
Então devo ser redirecionado para tela de checkout

Cenário: Tentar comprar sem preencher campo obrigatório
Quando não seleciono nenhum campo
E preencho os demais campos corretamente
Então o botão de "COMPRAR" não deve ser clicável

Cenário: Tentar selecionar quantidade inválida
Quando seleciono a quantidade
Então o sistema não deve permitir a seleção

Cenário: Limpar seleção do produto
Dado que selecionei cor, tamanho e quantidade
Quando clico no botão "Limpar"
Então todos os campos devem voltar ao estado original
