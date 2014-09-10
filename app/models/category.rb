class Category < ActiveRecord::Base
  has_many :ads
  validate :name, presence: true
end
