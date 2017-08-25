Rails.application.routes.draw do
	get "/", to: "home#index" 
	get "/inicio", to: "home#index"
	get "/logs_mergulho", to: "home#logs_mergulho"

  	scope 'contabilidade', :controller=>'contabilidade' do
    	get  :resumo_mensal
    	get  :novos_lancamentos
    	post :criar_lancamentos
  	end


end
