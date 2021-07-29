class Produto
    include Capybara::DSL
    include RSpec::Matchers


def adiciona_ao_carrinho
    click_link_or_button "Faded Short Sleeve T-shirts", match: :first
    addcart = page.find('span', text: "Add to cart")
    addcart.click
    sleep 5
end


end