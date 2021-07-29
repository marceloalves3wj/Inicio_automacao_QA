class Login
include Capybara::DSL
include RSpec::Matchers


def acessa_pagina_login
    find(EL["botaoSignIn"]).click
end

def preenche_campo_login
    find(EL["campoEmail"]).set "marcelo@gmail.com"
    find(EL["campoSenha"]).set "ma12345"
    find(EL["botaoLogin"]).click
end

end