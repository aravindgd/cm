class Category < ActiveRecord::Base
  has_many :ads, inverse_of: :category
  validate :name, presence: true
end
