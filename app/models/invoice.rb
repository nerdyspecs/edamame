class Invoice < ApplicationRecord
	belongs_to :user
	belongs_to :order
	# has_many :sales_vehicles
	# has_many :customer_vehicle_insurances
	# has_many :services
end
