class Question < ActiveRecord::Base
  belongs_to :fromrole, class_name: Role
  belongs_to :forrole, class_name: Role
end
