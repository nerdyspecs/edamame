class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise 	:database_authenticatable, :registerable,
         	:recoverable, :rememberable, :validatable

	enum role: [:admin, :employee, :customer]
	has_many :invoice
	has_many :orders
end
