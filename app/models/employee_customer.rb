class EmployeeCustomer < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  has_many :orders
end
