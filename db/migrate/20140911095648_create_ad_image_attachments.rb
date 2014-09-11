class CreateAdImageAttachments < ActiveRecord::Migration
  def change
    create_table :ad_image_attachments do |t|
      t.string :image

      t.timestamps
    end
  end
end
