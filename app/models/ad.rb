class Ad < ActiveRecord::Base
  belongs_to :user,  inverse_of: :ads
  belongs_to :category, inverse_of: :ads
  mount_uploader :image,  AdImageUploader
  validates :name, presence: true
  validates :category, presence: true
  validates :user, presence: true
end
