# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(id: 1, image_id: "f3fbf57b118fa9", name: "Bakery")
Category.create(id: 2, image_id: "b271afbefdc554", name: "Entrees")
Category.create(id: 3, image_id: "eba73b2361fae3", name: "Drinks")
Item.create(category_id: 1, id: 1, image_id: "293202f9d9f7f4", name: "Bagel", price: 200)
Item.create(category_id: 1, id: 2, image_id: "808916fd5ddf96", name: "Croissant", price: 100)
Item.create(category_id: 1, id: 3, image_id: "95d02a230fe050", name: "Muffin", price: 125)
Item.create(category_id: 1, id: 4, image_id: "23f95765b967ff", name: "Toast / Bread", price: 100)
Item.create(category_id: 1, id: 5, image_id: "5650be5d48a99b", name: "English Muffin", price: 250)
Item.create(category_id: 2, id: 6, image_id: "bd237a0c0d19ef", name: "Pasta Bar", price: 1299)
Item.create(category_id: 2, id: 7, image_id: "3e1bd1342800f7", name: "Mediterranean Entree", price: 1099)
Item.create(category_id: 2, id: 8, image_id: "72589c4c990f97", name: "Indian Entree", price: 1195)
Item.create(category_id: 3, id: 9, image_id: "70c2a6247e7b58", name: "Small Drink", price: 75)
Item.create(category_id: 3, id: 10, image_id: "dba0fc03da30ca", name: "Medium Drink", price: 15)
Item.create(category_id: 3, id: 11, image_id: "ffc9bf61e441cd", name: "Large Drink", price: 2)
