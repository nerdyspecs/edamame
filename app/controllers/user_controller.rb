class UserController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(user_page_params[:id])
		@role = @user.role
		if @role == "customer"
			@customer = Customer.where(:user_id => @user.id)
			@orders = Order.where(:customer_id => @customer.ids)
		end 
	end

	private

	def user_page_params
		params.permit(:controller,:action,:id)
	end
end
