Dado('que o usuario acessa a home pagee') do
  @homepage.acessa_home_page# Write code here that turns the phrase above into concrete actions
end

Quando('acessa a pagina de signinn') do
  @login.acessa_pagina_login
end

Quando('o usuario prencher campos de login e senha corretamente') do
  @login.preenche_campo_login
end

Então('deve ser redirecionado a pagina my account') do
  @myAccount.expect_myaccount
end

