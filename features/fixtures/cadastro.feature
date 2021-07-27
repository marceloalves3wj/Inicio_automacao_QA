    #language:pt
    Funcionalidade: Cadastro
        Para ter acesso a todas as funcionalidades do sistema
        Sendo um usuário ainda nao cadastrado
        Um novo cadastro devera ser feito

        Contexto:
            Dado que o usuario acessa a home page
            Quando acessa a pagina de signin

        @iniciocadastro
        Cenario: Inicio cadastro
            Dado que o usuario informe o email que deseja utilizar para criar a conta
            E clica no botao Create an account
            Entao sera redirecionado para a pagina de cadastro

        @campoemailembranco
         Cenario: Usuario tenta acessar formulario de cadastro sem colocar um email
            Dado que o usuario deixa de informar um email na tela de autenticao
            E clica no botao Create an account
            Entao recebera uma mensagem de erro dizendo que o email e invalido

        @emailinvalido
        Cenario: Usuario digita email invalido na pagina  de autenticao
            Dado que o usuario informe o email com formatacao errada
            E clica no botao Create an account
            Entao vera a mensagem de Invalid email address.


        @concluindocadastro
        Cenario: Concluindo cadastro
            Dado que o usuario informe um email valido na tela de autenticacao
            E clica no botao Create an account
            Quando preencher o formulario corretamante e clicar no botao register
            Entao concluira o cadastro e sera redirecionado para a pagina de my account

        @camposobrigatoriosnaopreenchidos    
        Cenario: Usuario deixa de informar campos obrigatorios ao preencher formulario de cadastro
            Dado que o usuario informe um email valido na tela de autenticacao
            E clica no botao Create an account
            Quando o usuario deixar de preencher algum dos campos obrigatorios do formulario
            E clicar no botao register 
            Entao vera uma notificacao de erro com os campos obrigatorios que nao foram preenchidos


        

        


