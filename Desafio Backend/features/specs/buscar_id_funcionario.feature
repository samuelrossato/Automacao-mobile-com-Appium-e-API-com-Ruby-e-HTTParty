# language: pt

Funcionalidade: Consultar informações de um unico funcionario

Cenario: Consultar dados de um funcionario por id

    Dado que passo a url com o id do funcionario para consultar suas informacoes
    Quando faço uma requisição do tipo GET nesse endpoint
    Então deve retornar no response as infomacoes apenas do funcionario cujo id foi solicitado

Cenario: Tentar consultar id de funcionario igual a 0

    Dado que passo a url com o id do funcionario igual a 0
    Quando faço uma requisição do tipo GET nesse endpoint
    Então deve retornar no response o status de error com o status code 400

Cenario: Tentar consultar id de funcionario não cadastrado

    Dado que passo a url com um numero de id invalido
    Quando faço uma requisição do tipo GET nesse endpoint
    Então no response nao deve retornar as informacoes de um funcionario cadastrado