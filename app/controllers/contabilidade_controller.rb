class ContabilidadeController < ApplicationController
	def resumo_mensal
		
	end

	def novos_lancamentos
		
	end

	def criar_lancamentos
		redirect_to resumo_mensal_path
	end

end