Rails.application.routes.draw do
	get "/", to: "home#index" 
	get "/inicio", to: "home#index"
	get "/controle_gastos", to: "home#controle_gastos"
	get "/logs_mergulho", to: "home#logs_mergulho"
end
