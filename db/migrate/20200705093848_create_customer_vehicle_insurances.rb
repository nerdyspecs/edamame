class CreateCustomerVehicleInsurances < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_vehicle_insurances do |t|
      t.string :customer_name
      t.references :customer_vehicles, null:false, foreign_key: true
      t.references :insurances, null: false, foreign_key: true

      t.timestamps
    end
  end
end
