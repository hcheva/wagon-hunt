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

Product.create!(user: henri, name: "Kudoz", url:"http://getkudoz.com", tagline:"Tinder for job search", category:"lifestyle")
Product.create!(user: henri, name: "uSlide", url:"http://uslide.io", tagline:"Youtube sucks for education", category:"lifestyle")
Product.create!(user: henri, name: "Medpics", url:"http://medpics.com", tagline:"Share your diag", category:"lifestyle")
Product.create!(user: henri, name: "Rapfeed", url:"http://rapfeed.com", tagline:"Rap every day", category:"lifestyle")
