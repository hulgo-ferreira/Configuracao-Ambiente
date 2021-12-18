Dado('que estou logado como {string} e {string}') do |email, password|
	visit "http://automationpractice.com/index.php?controller=authentication&back=my-account"
	find("input[id=email]").set (email)
	find("input[name*=passwd]").set (password)
	#scroll_to(page.find("button[id=SubmitLogin]"))
	find("form[id=login_form]").click	
	#sleep 2
	find(".icon-lock.left").click	
  end
	
Quando('clico no botao home') do
	page.save_screenshot("pages/meusDados.png")
	find(".icon-chevron-left").click
	#sleep 2
end
  
Entao('devo ser redirecionado para pagina principal do site') do
	expect(page).to have_text 'Automation Practice Website'
	page.save_screenshot("pages/comprar.png")
end