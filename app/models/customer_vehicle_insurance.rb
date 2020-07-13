class CustomerVehicleInsurance < ApplicationRecord
  has_many :insurances
  has_many :customer_vehicle

end
