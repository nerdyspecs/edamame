class AddPriceToInsurance < ActiveRecord::Migration[6.0]
  def change
  	add_column :insurances, :price,:float
  	add_column :customer_vehicle_insurances, :price,:float
  end
end
