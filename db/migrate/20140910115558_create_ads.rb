class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.text :content
      t.string :image
      t.user :belongs_to

      t.timestamps
    end
  end
end
