# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Post.destroy_all

City.create(city_name: "Atlanta", photo_url: "https://s-media-cache-ak0.pinimg.com/originals/35/3a/8b/353a8bee54a37d8948c37b09e1865cc2.jpg")
City.create(city_name: "London", photo_url: "https://static01.nyt.com/images/2015/12/09/travel/09intransitphoto-london/09intransitphoto-london-facebookJumbo.jpg")
City.create(city_name: "San Francisco", photo_url: "https://cdn3.tnwcdn.com/wp-content/blogs.dir/1/files/2015/08/SANFRANCISCO.jpg")
City.create(city_name: "Seattle", photo_url: "http://www.bekinsmovingandstorage.com/wp-content/uploads/2016/03/SeattleCity2.jpg")


Post.create(title: "Cool City", body:"Walk the Beltline!", city_id: 1)
