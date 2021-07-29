class Checkout
    include Capybara::DSL
    include RSpec::Matchers


def realiza_checkout
    2.times{find(EL["botaoCheckout"]).click}
    page.find('span', text: 'Proceed to checkout').click
    find(EL['checkbox']).click
    page.find('span', text: 'Proceed to checkout').click
    find(EL["metodopagamento"]).click;
    find('span', text: "I confirm my order").click
end

def valida_checkout 
    expect(page).to have_text "Your order on My Store is complete."
    sleep 5
end

end