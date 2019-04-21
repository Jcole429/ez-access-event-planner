class AdminsController < ApplicationController
	def index
		@title = 'Admin'
		if current_user.admin == false
			redirect_to current_user
		end
	end
end
