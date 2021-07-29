Before do 
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    window = Capybara.current_session.current_window
    window.resize_to(1200, 1200)
    window.maximize
    @homepage = HomePage.new
    @login = Login.new
    @myAccount = MyAccount.new
    @myaccountcamisa = MyAccount.new
    @produto = Produto.new
    @checkout = Checkout.new
    
    
end

After('@usarioautorizado') do
    find(".sign_out").click
end