class CreateVendorUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :vendor_users do |t|
      t.string :vendorId
      t.string :userId

      t.timestamps
    end
  end
end
