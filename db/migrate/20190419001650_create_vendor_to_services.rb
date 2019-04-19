class CreateVendorToServices < ActiveRecord::Migration[5.2]
  def change
    create_table :vendor_to_services do |t|
    	t.integer :vendor_id
    	t.integer :service_id
    	t.float :price

      t.timestamps
    end
  end
end
