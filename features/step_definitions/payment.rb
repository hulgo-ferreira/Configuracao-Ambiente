Quando('clico em pagar por transferencia bancaria') do
	find("a[title='Pay by bank wire']").click
end
  
Entao('devo ser redirecionado para confirmar minha compra e ver {string}') do |mensagem|
	expect(page).to have_text (mensagem)
	page.save_screenshot("pages/ordem1.png")
	log (mensagem)
	find("button[class='button btn btn-default button-medium']").click
	page.save_screenshot("pages/ordem2.png")
	#ord = find("div[class = 'box order-confirmation'] br:nth-child(7)").text

	ordTxt = find(".box.order-confirmation").text
	splitStr = ordTxt.split('-', -1)
	log (splitStr)

	$t = splitStr.at(4)	
	$t = $t.gsub("Do not forget to include your order reference ","")
	$t = $t.gsub(".","")
	$t = $t.strip()

	log "Numero da ordem: #{$t}"	
		
	find("a[title='Back to orders']").click #Botão ir para as ordens de compra finalizadas
	page.save_screenshot("pages/ordem.png")
	sleep 2	
end

Entao('devo ser redirecionado para aceitar a compra e ver {string}') do |mensagem|
	expect(page).to have_text (mensagem)
	page.save_screenshot("pages/ordem1.png")
	log (mensagem)
	find("button[class='button btn btn-default button-medium']").click
	page.save_screenshot("pages/ordem2.png")
	#ord = find("div[class = 'box order-confirmation'] br:nth-child(7)").text

	ordTxt = find(".box").text
	splitStr = ordTxt.split('-', -1)
	log (splitStr)

	$t = splitStr.at(4)	
	$t = $t.gsub("Do not forget to include your order reference ","")
	$t = $t.gsub(".","")
	$t = $t.strip()

	log "Numero da ordem: #{$t}"	
		
	find("a[title='Back to orders']").click #Botão ir para as ordens de compra finalizadas
	page.save_screenshot("pages/ordem.png")
	sleep 2	
end

Quando('clico em pagar com cheque') do
	find("a[title='Pay by check.']").click
end

#Dado('que visito a pagina') do
	#visit "http://automationpractice.com/index.php?controller=order-confirmation&id_cart=3116786&id_module=30&id_order=320256&key=ac63fe1ba16813b8c69cbdc034219152"
	#log "response headers #{$response.body}"	
	#req = original_url()
	#log (req)
		
	#req = (current_path)
	#log (req)
#end

