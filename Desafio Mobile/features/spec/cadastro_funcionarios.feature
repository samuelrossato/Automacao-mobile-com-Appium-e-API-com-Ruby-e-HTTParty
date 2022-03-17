# language: pt
# encoding: UTF-8

Funcionalidade: Fazer cadastro

Sendo um usuário do aplicativo Cadastro de Clientes
Quero poder cadastrar meus clientes 
Para aumentar a minha carteira de clientes cadastrados

@cadastro
Cenario: Cadastro com sucesso

    Dado que acesso a opção Cadastrar Novo no menu inicial
    E preencho o formulario de cadastro basico
    Quando clico no botao salvar
    Então devo ver a mensagem "Cadastro efetuado com sucesso"

@cadastro
Cenario: Tentar cadastrar cliente sem um nome

    Dado que acesso a opção Cadastrar Novo no menu inicial
    E não preencho o campo nome
    Quando clico no botao salvar
    Então devo ver a mensagem de alerta "Insira a Nome"

Cenario: Excluir cliente cadastrado

    Dado que eu acesse o formulario de um cliente ja cadastrado
    Quando clico no botao excluir
    E seleciono a opção sim
    Então devo ver a mensagem "Cadastro excluído com sucesso"

Cenario: Ligar para cliente cadastrado

    Dado que eu acesse o formulario de um cliente que tenha um telefone cadastrado
    Quando clico no botao de ligar
    Então devo ser direcionado para tela de ligacoes, com o numero ja selecionado

Cenario: Tentar ligar para um cliente sem um numero cadastrado

    Dado que eu acesse as informacoes de um cliente
    E que ele nao possua um numero de telefone cadastrado
    Quando clico no botao de ligar
    Então devo ver a mensagem "Insira o número"

Cenario: Cadastro de cliente com nome incorreto

    Dado que acesso a opção Cadastrar Novo no menu inicial
    E preencho o campo nome com numeros
    Quando clico no botao salvar
    Então devo ver a mensagem "Cadastro efetuado com sucesso"

Cenario: Cadastro de cliente sem email

    Dado que acesso a opção Cadastrar Novo no menu inicial
    E preencho o formulario de cadastro basico
    Quando clico no botao salvar
    Então devo ver a mensagem "Cadastro efetuado com sucesso"

Cenario: Cadastro de cliente com formato de email incorreto
    Dado que acesso a opção Cadastrar Novo no menu inicial
    E preencho o formulario de cadastro basico com um formato de email incorreto
    Quando clico no botao salvar
    Então devo ver a mensagem "Cadastro efetuado com sucesso"



