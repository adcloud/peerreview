class Answer < ActiveRecord::Base
  belongs_to :from_member, class_name: Member
  belongs_to :for_member, class_name: Member
  belongs_to :question
  belongs_to :review

  #TODO if validation fails in review show error message / notification
  validates_length_of :text, :maximum => 255


  # Force a default order
  default_scope order("created_at ASC")
end
