class ContabilidadeController < ApplicationController
	def resumo_mensal
		if params['mes'].blank?
			params['mes'] = Time.now.month
		end
		if params['ano'].blank?
			params['ano'] = Time.now.year
		end

		@lancamentos = Lancamento.and(:mes=>params['mes']).and(:ano=>params['ano']).desc(:data)


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
				nl.mes = lancamento['data'].to_time.month
				nl.ano = lancamento['data'].to_time.year
			nl.descricao = lancamento['descricao']
			nl.tipo = lancamento['tipo']
			nl.pagamento = lancamento['pagamento']
			nl.valor = lancamento['valor'].to_d

			nl.save!
		end
		redirect_to resumo_mensal_path
	end

	def editar_lancamento
		@lancamento = Lancamento.find(params['lancamento_id'])
	end

	def salvar_alteracoes_lancamento
		
	end

end