Quando('clico na referencia da ordem') do
	idOrd = find(".first_item a[class=color-myaccount]").text
	log "Numero da ordem: #{idOrd}"

	if [$idOrd == $t] then
		find(".first_item a[class=color-myaccount]").click #Validando se o número da ordem está correto		 
	end
	scroll_to(page)
	sleep 3	
end

Quando('tenho acesso aos dados') do
	ref = find(".item td:nth-child(1) > label").text
	prod = find(".item > td.bold > label").text
	quant = find(".item > td.return_quantity > label > span").text
	log "Referencia: #{ref}"
	log "Produto: #{prod}"
	log "Quantidade: #{quant}"
end

Entao('devo ver {string}') do |mensagem|
	expect(page).to have_text (mensagem)
end