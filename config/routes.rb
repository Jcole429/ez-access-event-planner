Rails.application.routes.draw do
	root :to => 'welcome#index'
	get '/signup', to: 'users#new'
	get '/login', to: 'sessions#new'
	get '/about', to: 'welcome#about'
	get '/contact', to: 'welcome#contact'
	get '/services', to: 'welcome#services'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'
	resources :users
end