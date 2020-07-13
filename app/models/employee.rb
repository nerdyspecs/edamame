class Employee < ApplicationRecord
  belongs_to :user
  has_many :employee_customers
  has_many :customers, through: :employee_customers
  has_many :orders
end
