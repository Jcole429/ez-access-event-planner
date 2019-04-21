class EventToVendorToServicesController < ApplicationController
	def new
		@event_id = params[:event_id]
  		@event_to_vendor_to_services = EventToVendorToService.new
  	end

  	def create
	  	@event_to_vendor_to_services = EventToVendorToService.new(event_to_vendor_to_services_params)
	  	if @event_to_vendor_to_services.save
	  		flash[:success] = "Event service created!"
	  		redirect_to "/events/#{@event_to_vendor_to_services.event_id}"
	  	else
	      flash[:danger] = @event_to_vendor_to_services.errors.full_messages.join(", ")
	  		render 'new'
	  	end
  	end

  	def destroy
  		@event_to_vendor_to_services = EventToVendorToService.find(params[:id])
  		event_id = @event_to_vendor_to_services.event_id
  		@event_to_vendor_to_services.destroy
  		flash[:success] = "Event to vendor service deleted!"
  		redirect_to "/events/#{event_id}"
  	end

  	private
		def event_to_vendor_to_services_params
			params.require(:event_to_vendor_to_service).permit(:id,:event_id,:vendor_to_service_id)
		end
end
