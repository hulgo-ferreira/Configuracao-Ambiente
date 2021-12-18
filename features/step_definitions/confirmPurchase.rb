Quando('clico no botao proceder com checkout') do
	nome = find("ul[class='address first_item item box'] .address_name").text
	rua = find("ul[class='address first_item item box'] .address_address1").text
	cidade = find("ul[class='address first_item item box'] .address_city").text
	pais = find("#center_column > div.order_delivery.clearfix.row > div:nth-child(1) > ul > li:nth-child(5) > span").text
	cel = find("ul[class='address first_item item box'] .address_phone_mobile").text
	log (nome)
	log (rua)
	log (cidade)
	log (pais)
	log (cel)
	find("#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium").click
	#sleep 4
end

Entao('devo ser redirecionado para pagina de confirmacao do endereco e o texto {string}') do |mensagem|
	alerta = expect(page).to have_text (mensagem)
	page.save_screenshot("pages/confirmEndereco.png")
	log (alerta)
end