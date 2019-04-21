Rails.application.routes.draw do
	root :to => 'welcome#index'

	get '/about', to: 'welcome#about'
	
	get '/signup', to: 'users#new'
	get '/register_as_vendor/:id', to: 'users#register_as_vendor'
	patch '/register', to: 'users#register'

	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'

	get '/contact', to: 'contacts#new'
	post '/contact', to: 'contacts#create'

	get '/services', to: 'services#index'

	get '/admin', to: 'admins#index'

	# delete '/event', to: 'events#destroy'

	resources :users
	resources :contacts
	resources :vendor_to_services
	resources :vendors
	resources :events
	resources :event_to_vendor_to_services
end