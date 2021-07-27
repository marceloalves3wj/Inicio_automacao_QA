Dado('que o usuario acessa a home page') do
    visit 'http://automationpractice.com/index.php'# Write code here that turns the phrase above into concrete actions
  end

  Quando('acessa a pagina de signin') do
    find(".login").click
  end
  
  Dado('que o usuario informe o email que deseja utilizar para criar a conta') do
    find("#email_create").set Faker::Internet.email
  end
  
  E('clica no botao Create an account') do 
    find("#SubmitCreate").click
  end
  
  Entao('sera redirecionado para a pagina de cadastro') do
    expect(page).to have_text "Assign an address alias for future reference. *"
    sleep 5
  end

  Dado('que o usuario deixa de informar um email na tela de autenticao') do
    find("#SubmitCreate")
  end

  Entao('recebera uma mensagem de erro dizendo que o email e invalido') do
    expect(page).to have_text "Invalid email address."
    sleep 5
  end

  Dado('que o usuario informe o email com formatacao errada') do
    find("#email_create").set "marcelorlgmail.com"
    sleep 5
  end

  Entao('vera a mensagem de Invalid email address.') do
    expect(page).to have_text "Invalid email address."
    sleep 5
  end

  Dado('que o usuario informe um email valido na tela de autenticacao') do
    find("#email_create").set Faker::Internet.email
  end
  
  Quando('preencher o formulario corretamante e clicar no botao register') do
    find("#id_gender1").choose() 
    find("#customer_firstname").set "Marcelo"
    find("#customer_lastname").set "Alves"
    find("#passwd").set "ma123456" 
    find("#firstname").set "Marcelo"
    find("#lastname").set "Alvess" 
    find("#address1").set "Rua Asfaltada"
    find("#city").set "São Paulo"
    find("select[name='id_state'] option[value='2']").click 
    find("#postcode").set "11111" 
    find("#phone_mobile").set "1111111111"
    find("#alias").set "Endereco"
    find("#submitAccount").click 
  end
  
  Entao('concluira o cadastro e sera redirecionado para a pagina de my account') do
    expect(page).to have_text "Welcome to your account. Here you can manage all of your personal information and orders."
    sleep 5
  end

  Quando('o usuario deixar de preencher algum dos campos obrigatorios do formulario') do
    find("#id_gender1").choose() 
    find("#customer_firstname").set "Marcelo"
    find("#customer_lastname").set "Alves"
    find("#passwd").set "ma123456" 
    find("#firstname").set "Marcelo"
    find("#lastname").set "" 
    find("#address1").set ""
    find("#city").set ""
    find("select[name='id_state'] option[value='2']").click 
    find("#postcode").set "11111" 
    find("#phone_mobile").set "1111111111"
    find("#alias").set "Endereco"
  end
  
  Quando('clicar no botao register') do
    find("#submitAccount").click 
  end
  
  Entao('vera uma notificacao de erro com os campos obrigatorios que nao foram preenchidos') do
    expect(page).to have_text "There are 3 errors" 
    sleep 5
  end

  