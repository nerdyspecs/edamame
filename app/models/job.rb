class Job < ApplicationRecord
	belongs_to :service
	has_many :jobs_parts
end
