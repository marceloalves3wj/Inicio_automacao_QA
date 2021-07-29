Dado('que o usuario esteja logado no site') do
    @homepage.acessa_home_page
    @login.acessa_pagina_login
    @login.preenche_campo_login
    
  end
  
  E('deseje comprar uma camiseta especifica') do
    @myaccountcamisa.busca_camisa
    sleep 3
  end
  
  Quando('seleciona la e adicionar ao carrinho') do
    @produto.adiciona_ao_carrinho
    sleep 2
  end 
  
  E('prosseguir com o checkout preenchendo as informacoes necessarias') do
    @checkout.realiza_checkout
  end
  
  Entao('recebera a mensagem de compra concluida') do
    @checkout.valida_checkout
    sleep 5
  end