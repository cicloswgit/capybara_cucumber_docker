#language: pt
#encoding: utf-8

@busca @tag_da_funcionalidade
Funcionalidade: Busca no Site <Nome da Funcionalidade>
    Como Consumidor
    Desejo acessar o site das Lojas Americanas
    Para realizar Busca por produtos disponíveis

Contexto: Acesso ao Site <Pré-Condições dos Cenários>
    Dado que requisito a URL das Lojas Americanas
    Então visulizo a sua página Home

Cenário: Busca por Produtos
    Dado que preencho os dados de Pequisa
    Quando submeto a pesquisa
    Então visualizo os produtos disponíveis na loja        