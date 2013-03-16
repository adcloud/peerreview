class Answer < ActiveRecord::Base
  belongs_to :from_member, class_name: Member
  belongs_to :for_member, class_name: Member
  belongs_to :question
end
