#language: pt
@comprar
Funcionalidade: Comprar
	Sendo um visitante do site Automation
	Quero acessar a home do site para escolher um produto
	Para que eu possa fazer um checkout
	
	
	Cenario: Escolher produto
		Dado que estou logado como "bojis61173@httptuan.com" e "123456"
		E clico no botao home				
		Quando acesso a home do site e clico no produto escolhido				
		Entao devo ser redirecionado para pagina do produto escolhido
	
	Cenario: Adicionar no carrinho de compras
		Dado que estou logado como "bojis61173@httptuan.com" e "123456"
		E clico no botao home		
		Quando acesso a home do site e clico no produto escolhido 
		E clico em adicionar ao carrinho
		Entao devo ver os dados de confirmacao da compra e "SHOPPING-CART SUMMARY"

	