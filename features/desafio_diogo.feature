#language: pt
#utf-8


Funcionalidade: Cadastrar empregado
	Eu como usuario
	Quero entrar no site
	Para cadastrar um novo empregado

@cadastro
	Cenario: Cadastrar empregado no site
	Dado que esteja logado no site orangehrm
	Quando Cadastrar um novo usuario
	Entao Devera retornar um titulo Personal Details

@alterar
	Cenario: Alterar cadastro de empregado no site
	Dado que esteja logado no site orangehrm para alterar
	E exista um empregado cadastrado
	Quando Alterar dados do cadastro
	Entao Devera salvar alteracoes