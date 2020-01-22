class Busca < SitePrism::Page
	
	element :campo_busca, 'input#h_search-input'
	element :botao_busca, 'button#h_search-btn'
	element :div_resultado, 'div[data-component="productgrid"]' 
	
	
	def preencher_busca(pesquisa)
		campo_busca.set pesquisa
	end	

	def submeter_busca
		botao_busca.click
	end	
end    