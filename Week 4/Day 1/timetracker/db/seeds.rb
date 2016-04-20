# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





project1 = Project.create(name:'potato maker', description:'make a potato maker')
project2 = Project.create(name:'potato peeler', description:'Peel that potato')
project3 = Project.create(name:'potato cooker', description:'cook a potato')
project4 = Project.create(name:'potato eater', description:'eat a potato')
project5 = Project.create(name:'digest eater', description:'digest that potato')
project6 = Project.create(name:'cactus', description:'Punch a Cactus')
project7 = Project.create(name:'rock', description:'Kick a rock')
project8 = Project.create(name:'sandpaper', description:'lick a page of sandpaper' )
project9 = Project.create(name:'sun', description:'stare at the sun without blinking')
project10 = Project.create(name:'badass', description:'become a badass')

project1.time_entries.create(hours: 0, minutes: 30)
project1.time_entries.create(hours: 0, minutes: 20)
project1.time_entries.create(hours: 1, minutes: 10)
project1.time_entries.create(hours: 0, minutes: 45)
project1.time_entries.create(hours: 0, minutes: 50)