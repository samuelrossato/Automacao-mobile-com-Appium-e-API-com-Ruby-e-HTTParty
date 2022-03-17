Dado('que acesso a opção Cadastrar Novo no menu inicial') do
    @cadastro.acessar
end
  
Dado('preencho o formulario de cadastro basico') do
    @cadastro.inserir
end
  
Quando('clico no botao salvar') do
    @cadastro.clicar
end
  
Então('devo ver a mensagem {string}') do |mensagem|
    @cadastro.mensagem(mensagem)
end

Dado('não preencho o campo nome') do
    @cadastro.campo_em_branco
end

Então('devo ver a mensagem de alerta {string}') do |alerta|
    @cadastro.alerta(alerta)
end
