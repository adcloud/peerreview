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

  def simple_name_role
    simple_name + ' (' +  role.to_s + ')'
  end

  def simple_name_role_team
    simple_name + ' (' +  role.to_s + ' in ' + team.to_s  + ')'
  end

end
