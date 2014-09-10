class AddCategoryToAds < ActiveRecord::Migration
  def change
    add_reference :ads, :category, index: true
  end
end
