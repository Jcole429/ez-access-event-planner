class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
    	t.string :service_name
    	t.string :service_description

      t.timestamps
    end
  end
end
