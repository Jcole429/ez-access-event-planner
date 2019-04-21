class EventsController < ApplicationController
	def index
		@title = 'Events'
		if current_user.admin == false
			redirect_to current_user
		end
	end

	def new
		@event = Event.new
	end

	def create
	  	@event = Event.new(event_params)
	  	if @event.save
	  		flash[:success] = "Event created!"
	  		redirect_to events_path
	  	else
	      flash[:danger] = @event.errors.full_messages.join(", ")
	  		render 'new'
	  	end
  	end

  	def show
  		@event = Event.find(params[:id])
  	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])

		if @event.update_attributes(event_params)
			flash[:success] = "Event updated"
			redirect_to @event
		else
			render 'edit'
		end
	end

  	def destroy
		event = Event.find(params[:id])
		event.destroy
		flash[:success] = "Event deleted"
		redirect_to '/events'
	end

	private
		def event_params
			params.require(:event).permit(:id,:user_id,:admin_id,:event_name)
		end
end
