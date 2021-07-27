    #language:pt
    Funcionalidade: Fluxo completo de compra
        Para conseguir realizar a compra de um produto no site
        Sendo um usuario ja cadastrado
        Todos as etapas de compra deverao ser seguidas
    
        @compraconcluida
        Cenario: Compra realizada com sucesso
            Dado que o usuario esteja logado no site
            E deseje comprar uma camiseta especifica
            Quando seleciona la e adicionar ao carrinho
            E prosseguir com o checkout preenchendo as informacoes necessarias
            Entao recebera a mensagem de compra concluida 