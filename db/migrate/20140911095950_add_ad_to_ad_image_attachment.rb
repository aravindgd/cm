class AddAdToAdImageAttachment < ActiveRecord::Migration
  def change
    add_reference :ad_image_attachments, :ad, index: true
  end
end
