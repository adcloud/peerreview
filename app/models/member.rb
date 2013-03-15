class Member < ActiveRecord::Base
  belongs_to :role
  attr_accessible :role_id, :name, :email
end
