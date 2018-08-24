# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.create(name: 'Warsaw', gps_latitude: '21.03', gps_longitude: '52.22')
Location.create(name: 'Krakow', gps_latitude: '19.96', gps_longitude: '50.08')
Location.create(name: 'Poznan', gps_latitude: '16.92', gps_longitude: '52.4')
Location.create(name: 'Gdansk', gps_latitude: '18.63', gps_longitude: '54.37')
