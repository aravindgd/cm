class Ad < ActiveRecord::Base
  belongs_to :user,  inverse_of: :ads
  belongs_to :category, inverse_of: :ads
  has_many :ad_image_attachments
  accepts_nested_attributes_for :ad_image_attachments,  :reject_if => :all_blank,  :allow_destroy => true

  validates :name, presence: true
  validates :category, presence: true
  validates :user, presence: true
end
