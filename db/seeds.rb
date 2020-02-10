# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cart.destroy_all
Inventory.destroy_all
Product.destroy_all
ProductCart.destroy_all
ProductInventory.destroy_all

u1 = User.create(username: "Bill", password: "123")
u2 = User.create(username: "Ted", password: "456")

c1 = Cart.create(user_id: u1.id)
c2 = Cart.create(user_id: u2.id)

i1 = Inventory.create(user_id: u1.id)
i2 = Inventory.create(user_id: u2.id)

p1 = Product.create(name: "Orange", category: "Produce")
p2 = Product.create(name: "Bike", category: "Transportation")
p3 = Product.create(name: "Fish", category: "Livestock")
p4 = Product.create(name: "Jeans", category: "Clothes")

ProductCart.create(product_id: p2.id, cart_id: c1.id)
ProductCart.create(product_id: p4.id, cart_id: c1.id)
ProductCart.create(product_id: p3.id, cart_id: c2.id)

ProductInventory.create(inventory_id: i2.id, product_id: p2.id, price: 100, quantity: 2, description: "Zoom... very fast", image: "https://images.giant-bicycles.com/b_white,c_pad,h_650,q_80/smxywltyqccvqfhqpujw/MY20TCRADPROTeamD_ColorA.jpg")
ProductInventory.create(inventory_id: i1.id, product_id: p3.id, price: 2, quantity: 7, description: "Glub glub", image: "https://cdn.shopify.com/s/files/1/0484/0009/products/GoldFish1_a4d26490-bb27-4d53-aa45-a916c91376a1.jpg?v=1571573283")



