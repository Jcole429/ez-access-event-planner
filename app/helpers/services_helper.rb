module ServicesHelper
	def get_service_name(service_id)
		Service.find(service_id).service_name
	end
end
