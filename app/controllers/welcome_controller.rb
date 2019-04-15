class WelcomeController < ApplicationController
	def index
		@title = "Home"
	end

	def about
		@title = "About"
	end

	def contact
		@title = "Contact Us"
	end

	def services
		@title = "Services"
	end
end
