class ContabilidadeController < ApplicationController
	def resumo_mensal
		
	end

	def novos_lancamentos
		
	end

	def criar_lancamentos
		params['lancamentos'].each do |lancamento|
			nl = Lancamento.new
			nl.data = lancamento['data']
			nl.descricao = lancamento['descricao']
			nl.tipo = lancamento['tipo']
			nl.pagamento = lancamento['pagamento']
			nl.valor = lancamento['valor']

			nl.save!
		end
		redirect_to resumo_mensal_path
	end

end