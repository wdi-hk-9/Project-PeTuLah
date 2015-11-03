# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create({first_name: "Charlotte", last_name: "Kwan", email: "ck@ck.com", is_admin: true, password: "123123"})

User.create({first_name: "Andrew", last_name: "Alekseev", email: "aa@aa.com", is_admin: true, password: "123"})

Tour.delete_all
Tour.create({name: "Kowloon Markets", description: "Our guided walk takes you through the back streets of Kowloon and into the daily lives of local residents. We thread through colourful streets and come across some of Hong Kong’s most lively markets and well-known landmarks, where you will feel first-hand the energy and soul of everyday Kowloon.", language: "English", duration: 180, price: 450, image: "http://www.12hk.com/area/Mongkok/Mongkok_LadiesMarket_P1240986_800x450.jpg" })



