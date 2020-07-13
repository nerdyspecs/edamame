class AddStatusToProducts < ActiveRecord::Migration[6.0]
  def change
  	add_column :sales_vehicles, :order_status, :integer
  	add_column :customer_vehicle_insurances, :order_status, :integer
  	add_column :services, :order_status, :integer
  	
  end
end
