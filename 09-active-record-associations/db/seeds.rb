# delete all plants, people, and plantparenthoods from the database
Plant.destroy_all
Person.destroy_all
PlantParenthood.destroy_all

# reset the ids so they start at 1
Plant.reset_pk_sequence
Person.reset_pk_sequence
PlantParenthood.reset_pk_sequence

plant1 = Plant.create(color: "yellow", name: "sunflower", bought: 20210326)
plant2 = Plant.create(color: "green", name: "shamrock", bought: 20210301)

person1 = Person.create(name: "post malone", age: 42, free_time: "none")
person2 = Person.create(name: "lucky the leprechaun", age: 100, free_time: "infinite")

pp1 = PlantParenthood.create(person_id: person1.id, plant_id: plant1.id, favorite: true)
pp2 = PlantParenthood.create(person_id: person2.id, plant_id: plant2.id, favorite: true)
pp3 = PlantParenthood.create(person_id: person1.id, plant_id: plant2.id, favorite: false)

puts "successfully seeded database"