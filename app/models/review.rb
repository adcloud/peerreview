class Review < ActiveRecord::Base
  belongs_to :member
  has_many :answers
  accepts_nested_attributes_for :answers
end
