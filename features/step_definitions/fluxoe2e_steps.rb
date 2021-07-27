Dado('que o usuario esteja logado no site') do
    visit 'http://automationpractice.com/index.php'
    find(".login").click
    find("#email").set "marcelo@gmail.com"
    find("#passwd").set "ma12345"
    find("#SubmitLogin").click
  end
  
  E('deseje comprar uma camiseta especifica') do
    find('a[href="http://automationpractice.com/index.php?id_category=5&controller=category"]').click
    find("#search_query_top").set "Faded Short Sleeve T-shirts"
    click_button "Search"
    sleep 3
  end
  
  Quando('seleciona la e adicionar ao carrinho') do
    click_link_or_button "Faded Short Sleeve T-shirts", match: :first
    addcart = page.find('span', text: "Add to cart")
    addcart.click
    sleep 2
  end 
  
  E('prosseguir com o checkout preenchendo as informacoes necessarias') do
    find("a[title='Proceed to checkout']").click
    find("a[title='Proceed to checkout']").click
    page.find('span', text: 'Proceed to checkout').click
    find('.checker').click
    page.find('span', text: 'Proceed to checkout').click
    find(".bankwire").click;
  end
  
  Entao('recebera a mensagem de compra concluida') do
    find('span', text: "I confirm my order").click
    expect(page).to have_text "Your order on My Store is complete."
    sleep 5
  end