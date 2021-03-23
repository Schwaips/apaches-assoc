# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "--starting seed---"


puts "--Creating Actors-- "

puts "-Creating Tibo-"
  tibo = Actor.new(first_name:"Thibaud", last_name:"Boursier",
    email:"", role:"Acteur",
    description:"Lorem Ipsum is simply dummy text of the printing
    and typesetting industry. Lorem Ipsum has been the industry's
    standard dummy text ever since the 1500s, when an unknown printer
    took a galley of type and scrambled it to make a type specimen book")
  tibo.save!
puts "--Tibo created!--"

puts "-Creating Valentin-"
    val = Actor.new(first_name:"Valentin", last_name:"Rolland",
      email:"", role:"Acteur",
      description:"Lorem Ipsum is simply dummy text of the printing
      and typesetting industry. Lorem Ipsum has been the industry's
      standard dummy text ever since the 1500s, when an unknown printer
      took a galley of type and scrambled it to make a type specimen book")
    val.save!
puts "--Valenting created"

puts "--Creating Charlie-"
    charlie = Actor.new(first_name:"Charlie", last_name:"Bertrand",
      email:"charlie.bertrand49@laposte.net", role:"Président",
      description:"Lorem Ipsum is simply dummy text of the printing
      and typesetting industry. Lorem Ipsum has been the industry's
      standard dummy text ever since the 1500s, when an unknown printer
      took a galley of type and scrambled it to make a type specimen book")
    charlie.save!
puts "-Charlie created"
