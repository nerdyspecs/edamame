class UserController < ApplicationController
	def index
		@users = user.all
	end

end
