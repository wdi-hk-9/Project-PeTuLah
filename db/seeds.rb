# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create({first_name: "Charlotte", last_name: "Kwan", email: "daturtle@gmail.com", is_admin: true, password: "123123"})

User.create({first_name: "Andrew", last_name: "Alekseev", email: "aa@aa.com", is_admin: true, password: "123"})

Tour.delete_all
Tour.create({name: "Kowloon Markets", description: "Our guided walk takes you through the back streets of Kowloon and into the daily lives of local residents. We thread through colourful streets and come across some of Hong Kong’s most lively markets and well-known landmarks, where you will feel first-hand the energy and soul of everyday Kowloon.", language: "English", duration: 180, price: 450, image: "kowloon_market.jpg" })
Tour.create({name: "Lamma Island hike", description:"Our journey starts at the colourful fishermen´s quay in Aberdeen. There we take a slow boat to Lamma, giving us good views of southern Hong Kong Island. After visiting an atmospheric Tin Hau temple on the waterfront we stop for a well-earned seafood lunch at Sok Kwu Wan.", language: "English", duration: 450, price: 800, image: "Lamma_Island.jpg"})
Tour.create({name: "Hong Kong Heritage", description: "The future meets the past in Hong Kong and nowhere can you see this more clearly than in the Central district. We walk among historic buildings that are nestled amid stunning skyscrapers, where the ancient art of feng shui influences modern architecture, along streets whose very names evoke the colourful history of this amazing territory. A great introduction tour to Hong Kong.", language: "English", duration: 240, price: 800, image: "HK_Harbour.jpg"})
Tour.create({name: "Temple and Feng Shui Tour", description: "Walk Hong Kong offers a guided tour where we introduce the Chinese philosophy of feng shui. Feng shui has become a worldwide phenomenon in recent years, but it has been a part of the culture of Hong Kong since its early days.  It aims for harmony, and when this is achieved good luck, synonymous with health and wealth, will follow.", language: "English", duration: 240, price: 600, image: "templerepulsebay.jpg"})
Tour.create({name: "Hong Kong Island Tour", description: "Whether this is your first visit to Hong Kong or you’re returning to refresh old memories, this comprehensive orientation is a great way to get to know Hong Kong Island, its history and its famous landmarks. During your half-day tour, a knowledgeable guide takes you to see multiple Hong Kong highlights in this ever-changing locale, including Victoria Peak, Aberdeen fishing village and Stanley Market. Ride the Victoria Peak tram and see panoramic views from above Pass by picturesque Repulse Bay and witness Aberdeen's floating community Shop for bargains at Stanley Market.", language: "English", duration: 240, price: 600, image: "peak_victoria.jpg"})
