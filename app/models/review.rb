class Review < ActiveRecord::Base
  belongs_to :member
  has_many :answers
end
