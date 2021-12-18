#language: pt
@contrato
Funcionalidade: Aceitar contrato e frete
	Sendo um visitante do site Automation
	Quero aceitar o valor do frete e termos do contrato
	Para continuar com minha compra	
	
	Cenario: Aceitar termos do contrato
		Dado que estou logado como "bojis61173@httptuan.com" e "123456"
		E clico no botao home		
		Quando acesso a home do site e clico no produto escolhido 
		E clico em adicionar ao carrinho
		Entao devo ver os dados de confirmacao da compra e "SHOPPING-CART SUMMARY"
		Quando clico no botao proceder com checkout
		Entao devo ser redirecionado para pagina de confirmacao do endereco e o texto "ADDRESSES"
		Quando clico no botao confirmar endereco
		Entao devo ser redirecionado para pagina de confirmacao do frete com o texto "SHIPPING"
		Quando clico para aceitar os termos do contrato
		E clico processar carrinho
		Entao devo ser redirecionado para pagina de metodos de pagamento com o texto "PLEASE CHOOSE YOUR PAYMENT METHOD"
	
	Cenario: Não aceitar termos do contrato
		Dado que estou logado como "bojis61173@httptuan.com" e "123456"
		E clico no botao home		
		Quando acesso a home do site e clico no produto escolhido 
		E clico em adicionar ao carrinho
		Entao devo ver os dados de confirmacao da compra e "SHOPPING-CART SUMMARY"
		Quando clico no botao proceder com checkout
		Entao devo ser redirecionado para pagina de confirmacao do endereco e o texto "ADDRESSES"
		Quando clico no botao confirmar endereco
		Entao devo ser redirecionado para pagina de confirmacao do frete com o texto "SHIPPING"
		E clico processar carrinho
		Então devo ver a mensagem de alerta "You must agree to the terms of service before continuing."
		
