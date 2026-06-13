#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de produto

Cenário: Compra do produto
Quando seleciono cor, tamanho e quantidade
E clico em "COMPRAR"
Então devo ser redirecionado para tela de checkout

Cenário: Tentar adicionar produto sem preencher a cor
Quando não seleciono cor
E seleciono o tamanho e quantidade
Então o botão de "COMPRAR" não deve ser clicável

Cenário: Tentar adicionar produto sem preencher o tamanho
Quando não seleciono cor
E seleciono o cor e quantidade
Então o botão de "COMPRAR" não deve ser clicável

Cenário: Tentar adicionar produto sem preencher a quantidade
Quando não seleciono quantidade
E seleciono o cor e tamanho
Então o botão de "COMPRAR" não deve ser clicável

Cenário: Tentar selecionar quantidade maior que o permitido
Quando seleciono uma quantidade maior que 10
Então o sistema não deve permitir a seleção

Cenário: Limpar seleção do produto
Dado que selecionei cor, tamanho e quantidade
Quando clico no botão "Limpar"
Então todos os campos devem voltar ao estado original