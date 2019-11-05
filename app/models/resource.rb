class Resource < ApplicationRecord
  belongs_to :subject, :optional => true
  has_and_belongs_to_many :folders
  has_and_belongs_to_many :topics
  has_many :users, :through => :folders
end
