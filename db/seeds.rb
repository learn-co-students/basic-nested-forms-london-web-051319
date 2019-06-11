# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times{Person.create(name: Faker::Name.unique.name, created_at: DateTime.now, updated_at: DateTime.now)}

20.times{Address.create( street_address_1: Faker::Address.street_address, street_address_2: Faker::Address.street_name, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip_code, address_type: "N/A", created_at: DateTime.now, updated_at: DateTime.now, person_id: Person.all[rand(0..19)].id)}
