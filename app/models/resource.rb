class Resource < ApplicationRecord
  belongs_to :subject, :optional => true
  belongs_to :teacher, :optional => true
  has_and_belongs_to_many :folders
  has_and_belongs_to_many :topics
end
