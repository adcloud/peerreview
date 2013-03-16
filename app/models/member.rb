class Member < ActiveRecord::Base
  belongs_to :role
  belongs_to :team
  #TODO
  def to_s
  	email
  end

  def simple_name
  	m = email.match /(\w*)/
  	m.to_s.capitalize
  end

end
