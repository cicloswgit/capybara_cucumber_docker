Dado("que requisito a URL das Lojas Americanas") do
	@acesso = Acesso.new
	@acesso.load
end

Então("visulizo a sua página Home") do
	expect(Capybara.page).to have_css('a[title="Americanas.com"]')
end
  
  