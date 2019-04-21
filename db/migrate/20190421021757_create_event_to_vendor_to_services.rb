class CreateEventToVendorToServices < ActiveRecord::Migration[5.2]
  def change
    create_table :event_to_vendor_to_services do |t|
    	t.integer :event_id
    	t.integer :vendor_to_service_id
     	t.timestamps
    end
  end
end
