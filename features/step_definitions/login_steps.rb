Dado('que o usuario acessa a home pagee') do
  visit 'http://automationpractice.com/index.php'# Write code here that turns the phrase above into concrete actions
end

Quando('acessa a pagina de signinn') do
  find(".login").click
end

Quando('o usuario prencher campos de login e senha corretamente') do
  find("#email").set "marcelo@gmail.com"
  find("#passwd").set "ma12345"
  find("#SubmitLogin").click
end

Então('deve ser redirecionado a pagina my account') do
  find(".logout")
  sleep 5
end

