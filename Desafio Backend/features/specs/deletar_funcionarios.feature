# language: pt

Funcionalidade: Deletar funcionarios

Cenario: Deletar funcionario

    Dado que passo o id do funcionario na url que desejo deletar 
    Quando faço uma requisição do tipo DELETE nesse endpoint
    Então deve retornar no response as informacoes atualizadas do funcionario