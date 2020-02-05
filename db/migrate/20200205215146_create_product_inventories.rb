class CreateProductInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_inventories do |t|
      t.integer :inventory_id
      t.integer :product_id
      t.integer :price 
      t.integer :quantity
      t.timestamps
    end
  end
end
