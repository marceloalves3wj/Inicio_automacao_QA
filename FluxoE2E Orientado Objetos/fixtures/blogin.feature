    #language:pt
    Funcionalidade: Login
        Para ter acesso a todas as funcionalidades do sistema
        Sendo um usuário
        Devera ser realizado login com e-mail e senha previamente cadastrados

        Contexto: 
            Dado que o usuario acessa a home pagee
            Quando acessa a pagina de signinn
        
        
        @usuarioautorizado
        Cenario: Usuário deve ser autorizado
            Quando o usuario prencher campos de login e senha corretamente
            Então deve ser redirecionado a pagina my account
            
        @fluxoe2e
        Cenario: Fluxo completo de compra (autenticação, busca de produto, produto no carrinho, finalizar compra, gerar pedido)
            Dado que o usuario esteja logado no site
            E deseje comprar camisetas  
            Quando selecionar os produtos que deseja adicionando os ao carrinho
            E prosseguir com o checkout
            Entao sera redirecionado a pagina de finalizar a compra
        # Cenario: Senha errada

        #     Dado que o usuario acessa a pagina principal
        #     Quando realiza login com “marcelo@gmail.com” e “ma1233”
        #     Então deve ver a seguinte mensagem “Senha incorreta”

        # Cenario: Usuário não existe

        #     Dado que o usuario acessa a pagina principal
        #     Quando realiza login com “mmarcelo@gmail.com” e “ma123”
        #     Então deve ver a seguinte mensagem “Usuário não cadastrado”

        # Cenario: Email incorreto

        #     Dado que o usuario acessa a pagina principal
        #     Quando realiza login com “marcelogmail.com” e “ma123”
        #     Então deve ver a seguinte mensagem “Email incorreto ou inexistente”