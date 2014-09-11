class RemoveImageFromAd < ActiveRecord::Migration
  def change
    remove_column :ads, :image, :string
  end
end
