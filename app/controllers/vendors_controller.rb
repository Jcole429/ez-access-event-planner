class VendorsController < ApplicationController
	def edit
		@vendor = Vendor.find(params[:id])
	end

	def update
		@vendor = Vendor.find(params[:id])
	    if @vendor.update_attributes(vendor_params)
	      flash[:success] = "Vendor profile updated"
	      redirect_to current_user
	    else
	      render 'edit'
	    end
	end

	private
  	def vendor_params
  		params.require(:vendor).permit(:name,:email,:phone,:street,:city,:state,:zip,)
  	end
end
