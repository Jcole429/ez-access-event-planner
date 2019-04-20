module VendorToServicesHelper
	def get_vendor_name(vendor_id)
		Vendor.find(vendor_id).name
	end
end
