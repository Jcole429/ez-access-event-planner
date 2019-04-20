Rails.application.routes.draw do
	root :to => 'welcome#index'

	get '/about', to: 'welcome#about'
	
	get '/signup', to: 'users#new'

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'

	get '/contact', to: 'contacts#new'
	post '/contact', to: 'contacts#create'

	get '/services', to: 'services#index'

	resources :users
	resources :contacts
	resources :vendor_to_services
end