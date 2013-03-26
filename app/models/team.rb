class Team < ActiveRecord::Base
	has_many :members
	accepts_nested_attributes_for :members, allow_destroy: true

	def to_s
		name
	end
end
