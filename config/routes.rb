Rails.application.routes.draw do
	get "/", to: "home#index" 
	get "/pagina", to: "home#pagina"
	get "/inicio", to: "home#index"
end
