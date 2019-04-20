class VendorToService < ApplicationRecord
	validates :vendor_id, presence: true
	validates :service_id, presence: true
	validates :price, presence: true
end
