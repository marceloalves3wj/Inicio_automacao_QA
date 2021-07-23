Dado('que o usuario acessa a home page') do
    visit 'http://automationpractice.com/index.php'# Write code here that turns the phrase above into concrete actions
  end

  Quando('acessa a pagina de signin') do
    find(".login").click
  end
  
  Dado('que o usuario informe o email que deseja utilizar para criar a conta') do
    find("#email_create").set "marcelorl@gmail.com"
  end
  
  Quando('clica no botao Create an account') do 
    find("#SubmitCreate").click
  end
  
  Entao('sera redirecionado para a pagina de cadastro') do
    expect(page).to have_text "Assign an address alias for future reference. *"
    sleep 10
  end