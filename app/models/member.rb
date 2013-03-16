class Member < ActiveRecord::Base
  belongs_to :role
  #TODO
  def to_s
  	email
  end
end
