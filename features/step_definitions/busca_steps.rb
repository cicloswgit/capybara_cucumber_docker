Dado("que preencho os dados de Pequisa") do
	@busca = Busca.new
	@busca.wait_until_campo_busca_visible
	@busca.preencher_busca("lego")
end

Quando("submeto a pesquisa") do
	@busca.wait_until_botao_busca_visible
	@busca.submeter_busca
end

Então("visualizo os produtos disponíveis na loja") do
	@busca.wait_until_div_resultado_visible
	expect(@busca.div_resultado.first(:css, 'div.product-card-photo')).not_to be_nil
end
