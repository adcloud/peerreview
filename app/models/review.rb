class Review < ActiveRecord::Base
  # for member
  belongs_to :member
  has_many :answers
  accepts_nested_attributes_for :answers
end
