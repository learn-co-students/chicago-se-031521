# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Student.create(name: "Huey", age: rand(0..18), year: rand(2018..2021), slogan: "It's gonna be fun I swear")
Student.create(name: "Dewey", age: rand(0..18), year: rand(2018..2021), slogan: "They are yours kbye")
Student.create(name: "Louie", age: rand(0..18), year: rand(2018..2021), slogan: "Whats That?")
Student.create(name: "Donald", age: rand(19..50), year: rand(1985..1988), slogan: "NomNomNom")