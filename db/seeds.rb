# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lists = [
  ["Clean", "Room is messy"],
  ["Laundry", "Clothes are dirty"],
  ["Refill JT's meds", "She is running out"],
  ["Testing entry with no description"]
]

lists.each do |name, description|
  List.create( name: name, description: description )
end


tasks = [
  
]

# tasks = [
#   ["Gather clothes"]
# ]
#
# tasks.each do |description, list_id|
#   Task.create( description: "Gather clothes", list_id: list.id[3])
# end


# list = List.create( name: "Laundry", description: "description" )
# list.tasks.create( description: "Gather clothes" )
# task = Task.create( description: "Gather clothes", list_id: list.id[3] )
