class Order < ApplicationRecord
	has_many :customer_vehicle_insurances
	has_many :services
	has_many :sales_vehicles
	belongs_to :employee_customer, optional: true
	belongs_to :customer, optional: true
	belongs_to :employee, optional: true
end
