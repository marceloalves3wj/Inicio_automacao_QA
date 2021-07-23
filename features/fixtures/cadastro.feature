    #language:pt
    Funcionalidade: Cadastro
        Para ter acesso a todas as funcionalidades do sistema
        Sendo um usuário ainda nao cadastro
        Um novo cadastro devera ser feito

        Contexto:
            Dado que o usuario acessa a home page
            Quando acessa a pagina de signin

        @iniciocadastro
        Cenario: Inicio cadastro
            Dado que o usuario informe o email que deseja utilizar para criar a conta
            Quando clica no botao Create an account
            Entao sera redirecionado para a pagina de cadastro


