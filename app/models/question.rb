class Question < ActiveRecord::Base
	#TODO should be immutable once their is a answer to this question
  belongs_to :fromrole, class_name: Role
  belongs_to :forrole, class_name: Role
  #TODO
  def to_s
  	text
  end
end
