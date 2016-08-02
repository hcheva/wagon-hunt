# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all

User.destroy_all

henri = User.create!(email: 'henri.chevallier@gmail.com', password: 'testtest')

happysocks = Product.create!(user: henri, name: "Happy Socks", url:"https://www.happysocks.com", tagline:"Very cool socks", category:"fashion", photo:"", created_at:"Fri, 27 Jul 2016 15:29:36 UTC +00:00,")
foodette = Product.create!(user: henri, name: "Foodette", url:"http://foodette.fr", tagline:"Delicious meals with healthy products, delivered every week", category:"food", photo:"", created_at:"Fri, 28 Jul 2016 15:29:36 UTC +00:00,")
pret_a_pousser = Product.create!(user: henri, name: "Prêt à pousser", url:"https://pretapousser.fr/", tagline:"Grown your own mushrooms at home", category:"food", photo:"", created_at:"Fri, 29 Jul 2016 15:29:36 UTC +00:00,")
lineable = Product.create!(user: henri, name: "Lineable", url:"https://www.amazon.com/Lineable-Smart-Wristband-Orange-Small/dp/B015E8OHEW/", tagline:"Lineable GPS Wristband for Kids", category:"tech", photo:"", created_at:"Fri, 29 Jul 2016 15:29:36 UTC +00:00,")

#upvotes

happysocks.upvotes.create! user: henri
foodette.upvotes.create! user: henri
pret_a_pousser.upvotes.create! user: henri
lineable.upvotes.create! user: henri
