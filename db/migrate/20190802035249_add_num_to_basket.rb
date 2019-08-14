class AddNumToBasket < ActiveRecord::Migration[5.2]
  def change
    add_column :baskets, :num, :integer
    add_column :baskets, :product_id, :integer
  end
end
