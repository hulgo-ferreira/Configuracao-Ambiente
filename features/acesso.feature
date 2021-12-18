#language: pt
@logar_web
Funcionalidade: Logar no site de compras
	Sendo um visitante do site Automation
	Quero realizar meu login
	Para que eu possa acessar minhas informações
	
	Cenario: logar
		Dado que acesso a pagina de login
		Quando submeto meu login com
			|email_address|bojis61173@httptuan.com|
			|password     |123456                 |
		Entao devo ser redirecionado para pagina das minhas informacoes

	Cenario: Email não informado
		Dado que acesso a pagina de login
		Quando submeto meu login com
			|email_address|                       |
			|password     |123456                 |
		Entao devo ver a mensagem "An email address required."

	Cenario: Senha divergente
		Dado que acesso a pagina de login
		Quando submeto meu login com
			|email_address|bojis61173@httptuan.com|
			|password     |12345                  |
		Entao devo ver a mensagem "Authentication failed."
