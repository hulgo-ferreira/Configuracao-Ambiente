Dado('que acesso a pagina de login') do
	visit "http://automationpractice.com/index.php?controller=authentication&back=my-account"
  end
  
  Quando('submeto meu login com') do |table|
	user = table.rows_hash
	find("input[id=email]").set user[:email_address]
	find("input[name*=passwd]").set user[:password]	
	#scroll_to(page.find("button[id=SubmitLogin]"))	
	find("form[id=login_form]").click	
	sleep 2
	find(".icon-lock.left").click
	#find(:xpath, "//*[@id="SubmitLogin"]/span/text()").click_link
  end
  
  Entao('devo ser redirecionado para pagina das minhas informacoes') do
	expect(page).to have_text 'Welcome to your account. Here you can manage all of your personal information and orders.'
	page.save_screenshot("pages/minhaConta.png")
  end

  Entao('devo ver a mensagem {string}') do |mensagem|
	alert = find(".alert li")
	expect(alert.text).to eql (mensagem)
	page.save_screenshot("pages/semEmail.png")
  end
  