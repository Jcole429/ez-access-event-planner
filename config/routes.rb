Rails.application.routes.draw do
	root :to => 'welcome#index'
	get '/signup', to: 'users#new'

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'

	get '/contact', to: 'contacts#new'
	post '/contact', to: 'contacts#create'

	get '/about', to: 'welcome#about'
	get '/services', to: 'welcome#services'

	resources :users
	resources :contacts
end