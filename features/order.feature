#language: pt

@ordem
Funcionalidade: Historico de compras
	Sendo um visitante do site Automation
	Quero ter acesso ao historico de compras
	Para ver e baixar minhas compras

	
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
		Quando clico na referencia da ordem
		E tenho acesso aos dados
		Entao devo ver "FOLLOW YOUR ORDER'S STATUS STEP-BY-STEP"