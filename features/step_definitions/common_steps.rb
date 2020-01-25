Dado("que requisito a URL das Lojas Americanas") do
	@acesso = Acesso.new
	@acesso.load
end

Então("visulizo a sua página Home") do
	Busca.new.wait_until_campo_busca_visible
	Capybara.page.save_screenshot('results/acesso.png', :full => true)
	expect(Capybara.page).to have_css('a[title="Americanas"]')
end