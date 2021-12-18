#language: pt

@covid
Funcionalidade: Obter os dados da Covid-19 no Brasil
	Sendo um visitante do site disease.sh
	Quero realizar requisicoes na API
	Para obter os dados atraves dos filtros disponiveis

	@hoje
	Cenario: Dados da Covid-19 hoje
		Dado que informo o pais "Brasil"
		Quando realizar uma requisicao na API sem filtros
		Entao terei como retorno a ultima atualizacao de dados com o codigo 200

	@ontem
	Cenario: Dados da Covid-19 ontem
		Dado que informo o pais "Brasil"
		Quando realizar uma requisicao na API com o campo yesterday "true"
		Entao terei como retorno dados do dia anterior com o codigo 200

	@antesDeOntem
	Cenario: Dados da Covid-19 2 dias atras
		Dado que informo o pais "Brasil"
		Quando realizar uma requisicao na API com o campo twoDaysAgo "true"
		Entao terei como retorno dados de dois dia atras com o codigo 200

	@errado
	Cenario: Dados da Covid-19 informando pais errado
		Dado que informo o pais incorreto "Tretrxl"
		Quando realizar uma requisicao na API sem filtros
		Entao terei como retorno dados da menssagem com o codigo 404

	@contrato
	Cenario: Validar dados contrato
		Dado que informo o pais "Brasil"
		Quando realizar uma requisicao na API sem filtros
		Entao Deve retornar as tipagens de acordo com a documentacao