# language: pt

Funcionalidade: Fazer atualização de funcionarios

Cenario: Atualizar dados do funcionario por id

    Dado que passo o id do funcionario na url 
    E as informacoes no body que desejo atualizar
    Quando faço uma requisição do tipo PUT nesse endpoint
    Então deve retornar no response as informacoes atualizadas do funcionario