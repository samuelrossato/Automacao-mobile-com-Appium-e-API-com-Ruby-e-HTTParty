# language: pt

Funcionalidade: Consultar informações de uma lista de funcionarios

Cenario: Consultar lista de funcionarios

    Dado que passo a url para consultar uma lista de funcionarios
    Quando faço uma requisição do tipo GET neste endpoint
    Então devo ver as informacoes de todos os funcionarios retornados