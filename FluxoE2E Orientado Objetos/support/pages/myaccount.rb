class MyAccount
    include Capybara::DSL
    include RSpec::Matchers


def expect_myaccount
    find(EL["expect"])
    sleep 5
end

def busca_camisa
    find(EL["botaoTshirts"]).click
    find(EL["campoSearch"]).set "Faded Short Sleeve T-shirts"
    click_button "Search"
    sleep 5
end

end