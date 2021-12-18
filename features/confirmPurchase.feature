#language: pt
@confirmarCompra
Funcionalidade: Editar compra
	Sendo um visitante do site Automation
	Quero acessar a pagina de confirmacao da compra 
	Para verificar se minha compra esta correta
	
	Cenario: Editar produto escolhido
		Dado que estou logado como "bojis61173@httptuan.com" e "123456"
		E clico no botao home		
		Quando acesso a home do site e clico no produto escolhido 
		E clico em adicionar ao carrinho
		Entao devo ver os dados de confirmacao da compra e "SHOPPING-CART SUMMARY"
		Quando clico no botao proceder com checkout
		Entao devo ser redirecionado para pagina de confirmacao do endereco e o texto "ADDRESSES"