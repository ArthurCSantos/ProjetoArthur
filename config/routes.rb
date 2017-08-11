Rails.application.routes.draw do
	get "/", to: "home#index" 
	get "/controle_gastos", to: "home#controle_gastos"
	get "/inicio", to: "home#index"
end
