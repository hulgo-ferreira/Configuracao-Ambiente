Quando('clico para aceitar os termos do contrato') do
	find("div[id='uniform-cgv']").click	
end

Quando('clico processar carrinho') do
	find("button[name=processCarrier]").click
	sleep 2
end

Entao('devo ser redirecionado para pagina de metodos de pagamento com o texto {string}') do |mensagem|
	alerta = expect(page).to have_text (mensagem)
	page.save_screenshot("pages/escolherPag.png")
	log (alerta)
end

Entao('devo ver a mensagem de alerta {string}') do |aviso|
	alerta = find(".fancybox-error")
	expect(alerta.text).to eql (aviso)	
	page.save_screenshot("pages/naoTermos.png")
	find("a[title=Close]").click
end