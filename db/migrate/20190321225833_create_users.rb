class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, index:true, unique:true
      t.string :password_digest
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.integer :vendor_id
      t.bool :admin
      t.timestamps
    end
  end
end
