class WelcomeController < ApplicationController
	def index
		@title = "Home"
	end

	def about
		@title = "About"
	end

	def services
		@title = "Services"
		@services = Service.all
	end
end
