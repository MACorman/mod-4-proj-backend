class AddImageToProductInventories < ActiveRecord::Migration[6.0]
  def change
    add_column :product_inventories, :image, :string
  end
end
