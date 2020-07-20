class Service < ApplicationRecord
	include ProgressGraphJson

	has_many :jobs

end
