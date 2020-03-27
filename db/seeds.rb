# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Baby.where(name: 'Alonso').first_or_create
Baby.where(name: 'Alfonso').first_or_create
Baby.where(name: 'Cristiano').first_or_create
Baby.where(name: 'Tomas').first_or_create
Baby.where(name: 'Nicolas').first_or_create
Baby.where(name: 'Marcelo').first_or_create
Baby.where(name: 'Mario').first_or_create
Baby.where(name: 'Lolo').first_or_create

Baby.all.each do |baby|
Breastfeeding.create(baby: baby, volume: rand(200)) 
end