class ContabilidadeController < ApplicationController
	def resumo_mensal
		@lancamentos = Lancamento.all.desc(:data)


		@gasto_total = 0
		@lancamentos.gastos.each do |gasto|
			@gasto_total += gasto.valor
		end

		@recebimento_total = 0
		@lancamentos.recebimentos.each do |recebimento|
			@recebimento_total += recebimento.valor
		end
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
			nl.valor = lancamento['valor'].to_d

			nl.save!
		end
		redirect_to resumo_mensal_path
	end

end