#language: pt

@pagamento
Funcionalidade: Pagamento
	Sendo um visitante do site Automation
	Quero escolher uma forma de pagamento disponivel
	Para continuar com minha compra	
	
	Cenario: Escolher forma de pagamento transferencia
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
		Quando clico em pagar por transferencia bancaria 
		Entao devo ser redirecionado para aceitar a compra e ver "BANK-WIRE PAYMENT."
	
	Cenario: Escolher forma de pagamento cheque
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
		Quando clico em pagar com cheque 
		Entao devo ser redirecionado para confirmar minha compra e ver "CHECK PAYMENT"


	#@te
	#Cenario: teste
	#	Dado que visito a pagina

	
