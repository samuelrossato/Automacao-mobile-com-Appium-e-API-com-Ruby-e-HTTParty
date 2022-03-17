Before do
    @cadastro = Cadastro.new
    @driver.start_driver
    @driver.manage.timeouts.implicit_wait = 15
end

After do
    @driver.quit_driver
end