class AdImageAttachment < ActiveRecord::Base
  belongs_to :ad
  mount_uploader :image,  AdImageUploader
end
