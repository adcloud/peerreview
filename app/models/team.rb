class Team < ActiveRecord::Base
	attr_accessible :members, :name, :members_attributes
	has_many :members
	accepts_nested_attributes_for :members, allow_destroy: true
end
