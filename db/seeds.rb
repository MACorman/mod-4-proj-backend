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
u2 = User.create(username: "Ted", password: "123")
u3 = User.create(username: "Adam", password: "123")
u4 = User.create(username: "Sarah", password: "123")
u5 = User.create(username: "Kate", password: "123")
u6 = User.create(username: "John", password: "123")
u7 = User.create(username: "Marie", password: "123")
u8 = User.create(username: "Alan", password: "123")

c1 = Cart.create(user_id: u1.id)
c2 = Cart.create(user_id: u2.id)
c3 = Cart.create(user_id: u3.id)
c4 = Cart.create(user_id: u4.id)
c5 = Cart.create(user_id: u6.id)
c6 = Cart.create(user_id: u7.id)



i1 = Inventory.create(user_id: u1.id)
i3 = Inventory.create(user_id: u3.id)
i4 = Inventory.create(user_id: u4.id)
i5 = Inventory.create(user_id: u5.id)
i6 = Inventory.create(user_id: u6.id)
i7 = Inventory.create(user_id: u7.id)
i8 = Inventory.create(user_id: u8.id)

p1 = Product.create(name: "Oranges", category: "Produce")
p2 = Product.create(name: "Bikes", category: "Transportation")
p3 = Product.create(name: "Fishes", category: "Livestock")
p4 = Product.create(name: "Jeans", category: "Clothes")

ProductCart.create(product_id: Product.all.sample.id, cart_id: Cart.all.sample.id)
ProductCart.create(product_id: Product.all.sample.id, cart_id: Cart.all.sample.id)
ProductCart.create(product_id: Product.all.sample.id, cart_id: Cart.all.sample.id)
ProductCart.create(product_id: Product.all.sample.id, cart_id: Cart.all.sample.id)
ProductCart.create(product_id: Product.all.sample.id, cart_id: Cart.all.sample.id)
ProductCart.create(product_id: Product.all.sample.id, cart_id: Cart.all.sample.id)
ProductCart.create(product_id: Product.all.sample.id, cart_id: Cart.all.sample.id)


ProductInventory.create(inventory_id: Inventory.all.sample.id, product_id: p2.id, price: 100, quantity: 2, description: "Brand new Giant bike. Very fast.", image: "https://images.giant-bicycles.com/b_white,c_pad,h_650,q_80/smxywltyqccvqfhqpujw/MY20TCRADPROTeamD_ColorA.jpg")
ProductInventory.create(inventory_id: Inventory.all.sample.id, product_id: p2.id, price: 120, quantity: 1, description: "Gently used Schwinn bike.", image: "https://www.bikemania.biz/media/catalog/product/cache/10f519365b01716ddb90abc57de5a837/s/4/s4021c_700w_network2a.jpg")
ProductInventory.create(inventory_id: Inventory.all.sample.id, product_id: p2.id, price: 90, quantity: 1, description: "Well loved Giant bike. Has ridden roughly 2,500 miles. A little dinged up but very dependable.", image: "https://images.evo.com/imgp/700/130868/539706/giant-xtc-jr-24-complete-mountain-bike-big-kids-2018-.jpg")


ProductInventory.create(inventory_id: Inventory.all.sample.id, product_id: p3.id, price: 2, quantity: 7, description: "Common Goldfish in excellent health.", image: "https://cdn.shopify.com/s/files/1/0484/0009/products/GoldFish1_a4d26490-bb27-4d53-aa45-a916c91376a1.jpg?v=1571573283")
ProductInventory.create(inventory_id: Inventory.all.sample.id, product_id: p3.id, price: 1, quantity: 11, description: "Beautiful Angel Fish.", image: "https://www.aqueon.com/-/media/Images/Aqueon-NA/US/Assets/Care-Sheets/angelfish-marble.png")


ProductInventory.create(inventory_id: Inventory.all.sample.id, product_id: p1.id, price: 3, quantity: 12, description: "Valencia organes. Grown in Spain.", image: "https://upload.wikimedia.org/wikipedia/commons/c/c4/Orange-Fruit-Pieces.jpg")

ProductInventory.create(inventory_id: Inventory.all.sample.id, product_id: p4.id, price: 75, quantity: 3, description: "Levi's 501s.", image: "https://images.beallsflorida.com/i/beallsflorida/479-9273-0191-96-200?w=500&h=500&img404=404&v=1")
ProductInventory.create(inventory_id: Inventory.all.sample.id, product_id: p4.id, price: 80, quantity: 5, description: "Brand new Wrangler jeans.", image: "https://images.wrangler.com/is/image/Wrangler/13MWZPW-HERO?$585x585$")





