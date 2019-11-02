class Teacher < ApplicationRecord
  has_many :resources
  has_many :topics, :through => :resources 
end
