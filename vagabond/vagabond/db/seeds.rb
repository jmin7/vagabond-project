# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Post.destroy_all

city = City.new(city_name: "Atlanta", photo_url: "http://www.dentons.com/~/media/Images/Website/Background%20Images/Offices/Atlanta/Atlanta_2.jpg")
# City.create(city_name: "Seattle", photo_url: "http://www.bekinsmovingandstorage.com/wp-content/uploads/2016/03/SeattleCity2.jpg")
# City.create(city_name: "London", photo_url:"http://www.universal-tourguide.com/wp-content/uploads/2016/09/discoverlondon.jpg")
city.save
post= Post.new(title: "Cool City", body:"Walk the Beltline!", user_id: 1, city_id: city.id )
post.save
