class Ad < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  mount_uploader :image,  AdImageUploader
  validates :name, presence: true
end
