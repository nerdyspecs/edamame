class AddCustomerVehicleInsuranceFkToCustomerVehicle < ActiveRecord::Migration[6.0]
  def change
  	add_reference :customer_vehicles, :customer_vehicle_insurances
  end
end
