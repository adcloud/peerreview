class Role < ActiveRecord::Base
	# TODO this sucks
	def to_s
		name
	end
end
