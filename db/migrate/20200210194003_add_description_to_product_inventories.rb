class AddDescriptionToProductInventories < ActiveRecord::Migration[6.0]
  def change
    add_column :product_inventories, :description, :string
  end
end
