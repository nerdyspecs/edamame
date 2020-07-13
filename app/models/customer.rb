class Customer < ApplicationRecord
  belongs_to :user
  has_many :employee_customers
  has_many :employee, through: :employee_customers
  has_many :orders
end
