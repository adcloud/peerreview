class Team < ActiveRecord::Base
	attr_accessible :members, :name
	has_many :members
	accepts_nested_attributes_for :members
end
