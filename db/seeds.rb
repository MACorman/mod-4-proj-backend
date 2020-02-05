# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "Bill", password: "123")
u2 = User.create(username: "Ted", password: "456")

c1 = Cart.create(user_id: u1.id)
c2 = Cart.create(user_id: u2.id)

i1 = Inventory.create(user_id: u1.id)
i2 = Inventory.create(user_id: u2.id)

p1 = Product.create(name: "Orange", description: "Delicious", category: "Produce")
p2 = Product.create(name: "Bike", description: "Fast", category: "Transportation")
p3 = Product.create(name: "Fish", description: "Glub glub", category: "Livestock")
p4 = Product.create(name: "Jeans", description: "Awesome", category: "Clothes")

ProductCart.create(product_id: p2.id, cart_id: c1.id)
ProductCart.create(product_id: p4.id, cart_id: c1.id)
ProductCart.create(product_id: p3.id, cart_id: c2.id)

ProductInventory.create(inventory_id: i2.id, product_id: p2.id)
ProductInventory.create(inventory_id: i1.id, product_id: p3.id)



