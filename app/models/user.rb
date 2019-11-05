class User < ApplicationRecord
  has_many :folders
  has_many :resources, :through => :folders

  has_secure_password


  validates :email, :presence => true, :uniqueness => true


end
