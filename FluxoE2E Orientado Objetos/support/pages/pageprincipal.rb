class HomePage
include Capybara::DSL
include RSpec::Matchers


def acessa_home_page
    visit(EL["home"])
end

end