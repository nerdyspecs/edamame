class JobsPart < ApplicationRecord
	belongs_to :job
	has_many :parts
end
