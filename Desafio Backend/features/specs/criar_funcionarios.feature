# language: pt

Funcionalidade: Criar novos funcionarios

Cenario: Criar novo funcionario

    Dado que passo a url e as informacoes do funcionario no body
    Quando faço uma requisição do tipo POST nesse endpoint
    Então deve retornar no response as infomacoes do funcionario que foi cadastrado