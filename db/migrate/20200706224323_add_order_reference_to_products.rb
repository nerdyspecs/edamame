class AddOrderReferenceToProducts < ActiveRecord::Migration[6.0]
  def change
  	add_reference :sales_vehicles,:orders
  	add_reference :customer_vehicle_insurances,:orders
  	add_reference :services,:orders
  end
end
