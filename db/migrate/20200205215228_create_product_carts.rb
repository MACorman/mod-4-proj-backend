class CreateProductCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :product_carts do |t|
      t.integer :product_id
      t.integer :cart_id
      t.timestamps
    end
  end
end
