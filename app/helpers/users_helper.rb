module UsersHelper
	def user_vendor(user)
		@user_vendor = Vendor.find_by(id: user[:vendor_id])
	end

	def is_vendor?(user)
		!user[:vendor_id].nil?
	end

	def is_admin?
		current_user.admin
	end
end
