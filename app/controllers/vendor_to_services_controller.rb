class VendorToServicesController < ApplicationController
	def new
		@vendor_to_service = VendorToService.new()
		@available_services = Service.pluck(:service_name)
	end

	def create
		@vendor_to_service = VendorToService.new(vendor_to_service_params)
		@vendor_to_service.vendor_id = current_user.vendor_id
		@vendor_to_service.service_id = Service.find_or_create_by(service_name: vendor_to_service_params[:service_id]).id
		if @vendor_to_service.save
			flash[:success] = "Service added!"
			redirect_to user_path(current_user)
		else
			flash[:danger] = @vendor_to_service.errors.full_messages.join(", ")
			render 'new'
		end
	end

	def destroy
		vendor_to_service = VendorToService.find(params[:id])
		service_id = vendor_to_service.service_id
		vendor_to_service.destroy
		if VendorToService.where(:service_id => service_id).count == 0
			Service.find(service_id).destroy
		end
		flash[:success] = "Service deleted"
		redirect_to user_path(current_user)
	end

	def vendor_to_service_params
  		params.require(:vendor_to_service).permit(:service_id,:vendor_id,:price)
  	end
end
