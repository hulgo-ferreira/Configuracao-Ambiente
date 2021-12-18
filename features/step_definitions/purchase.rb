Quando('acesso a home do site e clico no produto escolhido') do
	scroll_to(page.find("img[src$='http://automationpractice.com/img/p/1/0/10-home_default.jpg']"))
	img = find("img[src$='http://automationpractice.com/img/p/1/0/10-home_default.jpg']")	
	sleep 2	
	img.hover
	find("a[data-id-product='4']").click	
	#find("a[href='http://automationpractice.com/index.php?controller=cart&add=1&id_product=4&token=3b06ff52ab376ba752e856ccc1b18011']").click	
end

Entao('devo ser redirecionado para pagina do produto escolhido') do
	expect(page).to have_text 'Product successfully added to your shopping cart'
	page.save_screenshot("pages/popUpComprar.png")
end

Quando('clico em adicionar ao carrinho') do	
	sleep 3
	visit "http://automationpractice.com/index.php?controller=order"
	sleep 1
end

Entao('devo ver os dados de confirmacao da compra e {string}') do |mensagem|
	alert = expect(page).to have_text (mensagem)
	page.save_screenshot("pages/ConfirmComprar.png")
	log (alert)
end