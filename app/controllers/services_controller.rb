class ServicesController < ApplicationController
	def index
		@title = "Services"
		@services = Service.all
	end
end
