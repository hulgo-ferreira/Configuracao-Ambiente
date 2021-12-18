	Dado('que informo o pais {string}') do |country|
		@country = country
	end
	  
	Quando('realizar uma requisicao na API sem filtros') do
		$response = HTTParty.get("https://corona.lmao.ninja/v3/covid-19/countries/#{@country}")
	end
	  
	Entao('terei como retorno a ultima atualizacao de dados com o codigo {int}') do |int|
		expect($response.code).to eql(int)		
		log "response code #{$response.code}"
		expect($response.message).to eql('OK')
		log "response message #{$response.message}"
		@jsonToday = JSON.parse("#{$response.body}")
		expect(@jsonToday["todayCases"]).to eql(0) #Validando casos do dia
		log "Casos do dia : #{@jsonToday['todayCases']}"		
		log "response headers #{$response.headers}"		
		log "response body #{$response.body}"			
	end

	Quando('realizar uma requisicao na API com o campo yesterday {string}') do |yesterday|
		@yesterday = yesterday
		$response = HTTParty.get("https://corona.lmao.ninja/v3/covid-19/countries/#{@country}?yesterday=#{@yesterday}")
	end
	  
	Entao('terei como retorno dados do dia anterior com o codigo {int}') do |int|
		expect($response.code).to eql(int)		
		log "response code #{$response.code}"
		expect($response.message).to eql('OK')
		log "response message #{$response.message}"
		@jsonYesterday = JSON.parse("#{$response.body}")
		expect(@jsonYesterday["todayCases"]) != (0) #Validando casos do dia anterior
		log "Casos do dia anterior : #{@jsonYesterday['todayCases']}"
		log "response headers #{$response.headers}"
		log "response body #{$response.body}"		
	end
	
	Quando('realizar uma requisicao na API com o campo twoDaysAgo {string}') do |twoDaysAgo|
		@twoDaysAgo = twoDaysAgo
		$response = HTTParty.get("https://corona.lmao.ninja/v3/covid-19/countries/#{@country}?twoDaysAgo=#{@twoDaysAgo}")
	end	
	
	Entao('terei como retorno dados de dois dia atras com o codigo {int}') do |int|
		expect($response.code).to eql(int)		
		log "response code #{$response.code}"
		expect($response.message).to eql('OK')
		log "response message #{$response.message}"
		@jsontwoDaysAgo = JSON.parse("#{$response.body}")
		expect(@jsontwoDaysAgo["todayCases"]) != (0) #Validando casos de dois dias antes
		log "Casos de dois dias antes : #{@jsontwoDaysAgo['todayCases']}"
		log "response headers #{$response.headers}"
		log "response body #{$response.body}"		
	end

	Dado('que informo o pais incorreto {string}') do |country|
		@country = country
	end

	Entao('terei como retorno dados da menssagem com o codigo {int}') do |int|
		expect($response.code).to eql(int)		
		log "response code #{$response.code}"		
		log "response body #{$response.body}"			
	end

	# Teste de contrato - validando os tipos
	Entao('Deve retornar as tipagens de acordo com a documentacao') do		
		@jsonResp = JSON.parse("#{$response.body}")
		
		expect(@jsonResp["updated"]).to be_a_kind_of(Integer)
		log "Updated  : #{@jsonResp['updated']}"		
		
		expect(@jsonResp["country"]).to be_a_kind_of(String)
		log "Country  : #{@jsonResp['country']}"		

		log "Id  : #{@jsonResp["countryInfo"]["_id"]}"
		expect(@jsonResp["countryInfo"]["_id"]).to be_a_kind_of(Integer)
		
		expect(@jsonResp["countryInfo"]["iso2"]).to be_a_kind_of(String)
		log "Iso2  : #{@jsonResp["countryInfo"]["iso2"]}"
		
		expect(@jsonResp["countryInfo"]["iso3"]).to be_a_kind_of(String)
		log "Iso3  : #{@jsonResp["countryInfo"]["iso3"]}"
		
		expect(@jsonResp["countryInfo"]["lat"]).to be_a_kind_of(Integer)
		log "Lat  : #{@jsonResp["countryInfo"]["lat"]}"
		
		expect(@jsonResp["countryInfo"]["long"]).to be_a_kind_of(Integer)
		log "long  : #{@jsonResp["countryInfo"]["long"]}"
		
		expect(@jsonResp["countryInfo"]["flag"]).to be_a_kind_of(String)
		log "Flag  : #{@jsonResp["countryInfo"]["flag"]}"
		
		expect(@jsonResp["cases"]).to be_a_kind_of(Integer)
		log "Cases  : #{@jsonResp["cases"]}"
		
		expect(@jsonResp["todayCases"]).to be_a_kind_of(Integer)
		log "Today Cases  : #{@jsonResp["todayCases"]}"
		
		expect(@jsonResp["deaths"]).to be_a_kind_of(Integer)
		log "Deaths  : #{@jsonResp["deaths"]}"
		
		expect(@jsonResp["todayDeaths"]).to be_a_kind_of(Integer)
		log "Today Deaths  : #{@jsonResp["todayDeaths"]}"

		expect(@jsonResp["recovered"]).to be_a_kind_of(Integer)
		log "Recovered  : #{@jsonResp["recovered"]}"

		expect(@jsonResp["todayRecovered"]).to be_a_kind_of(Integer)
		log "Today Recovered  : #{@jsonResp["todayRecovered"]}"

		expect(@jsonResp["active"]).to be_a_kind_of(Integer)
		log "Active  : #{@jsonResp["active"]}"

		expect(@jsonResp["critical"]).to be_a_kind_of(Integer)
		log "Critical  : #{@jsonResp["critical"]}"

		expect(@jsonResp["casesPerOneMillion"]).to be_a_kind_of(Integer)
		log "Cases Per One Million  : #{@jsonResp["casesPerOneMillion"]}"

		expect(@jsonResp["deathsPerOneMillion"]).to be_a_kind_of(Integer)
		log "Deaths Per One Million  : #{@jsonResp["deathsPerOneMillion"]}"

		expect(@jsonResp["tests"]).to be_a_kind_of(Integer)
		log "Tests  : #{@jsonResp["tests"]}"

		expect(@jsonResp["testsPerOneMillion"]).to be_a_kind_of(Integer)
		log "Tests Per One Million  : #{@jsonResp["testsPerOneMillion"]}"

		expect(@jsonResp["population"]).to be_a_kind_of(Integer)
		log "Population  : #{@jsonResp["population"]}"

		expect(@jsonResp["continent"]).to be_a_kind_of(String) #Tem um bug 
		log "Continent  : #{@jsonResp["continent"]}"

		expect(@jsonResp["oneCasePerPeople"]).to be_a_kind_of(Integer)
		log "One Case Per People  : #{@jsonResp["oneCasePerPeople"]}"

		expect(@jsonResp["oneDeathPerPeople"]).to be_a_kind_of(Integer)
		log "One Death Per People  : #{@jsonResp["oneDeathPerPeople"]}"

		expect(@jsonResp["oneTestPerPeople"]).to be_a_kind_of(Integer)
		log "One Test Per People  : #{@jsonResp["oneTestPerPeople"]}"
		
		expect(@jsonResp["undefined"]).to be_a_kind_of(Integer)
		log "Undefined  : #{@jsonResp["undefined"]}"

		expect(@jsonResp["activePerOneMillion"]).to be_a_kind_of(Float)
		log "Active Per One Million  : #{@jsonResp["activePerOneMillion"]}"

		expect(@jsonResp["recoveredPerOneMillion"]).to be_a_kind_of(Float)
		log "Recovered Per One Million  : #{@jsonResp["recoveredPerOneMillion"]}"

		expect(@jsonResp["criticalPerOneMillion"]).to be_a_kind_of(Float)
		log "Critical Per One Million  : #{@jsonResp["criticalPerOneMillion"]}"				
	  end	