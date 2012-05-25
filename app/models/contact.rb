class Contact < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :email

  validates :name, :presence => true
  validates :email, :presence => true
end
