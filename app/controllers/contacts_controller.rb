class ContactsController < ApplicationController
	def new
		@title = "Contact Us"
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
	  		flash[:success] = "Note sent!"
	  		redirect_to contact_path
  		else
      		flash[:danger] = @contact.errors.full_messages.join(", ")
  			render 'new'
  		end
	end

	private
	  	def contact_params
	  		params.require(:contact).permit(:name,:email,:note)
	  	end
end
