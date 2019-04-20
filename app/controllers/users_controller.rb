class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
    if @user.vendor_id
      @vendor = Vendor.find(@user.vendor_id)
      @vendor_to_services = VendorToService.where("vendor_id = ?", @vendor.id)
      @vendor_services = Array.new
      @vendor_to_services.each do |f|
        @vendor_services.push([Service.find(f.service_id),f.price,f.id])
      end
    end
    @title = 'My Profile'
    if @user.nil?
      redirect_to root_path
    end

	end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		log_in @user
  		flash[:success] = "Welcome to EZ - Access Event Planning!"
  		redirect_to @user
  	else
      flash[:danger] = @user.errors.full_messages.join(", ")
  		render 'new'
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  	def user_params
  		params.require(:user).permit(:name,:email,:password,:password_confirmation,:user_type,:street,:city,:state,:zip)
  	end
end
