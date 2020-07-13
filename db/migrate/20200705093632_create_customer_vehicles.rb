class CreateCustomerVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_vehicles do |t|
    	t.string :customer_name
    	t.string :vehicle_plate
    	t.string :vehicle_description
    	
      t.timestamps
    end
  end
end
