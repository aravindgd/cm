class AdImageAttachment < ActiveRecord::Base
  belongs_to :ad,  :inverse_of => :ad_image_attachments
  mount_uploader :image,  AdImageUploader
end
