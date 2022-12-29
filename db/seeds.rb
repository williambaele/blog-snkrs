# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying data"
Sneaker.destroy_all
sku = ["DD1509-100","DD1509-220", "DD1519-100", "MP1509-100"]
drop_date = ["2022-10-10","2022-10-11","2022-10-12","2022-10-13"]

40.times do
  sneaker = Sneaker.create!(name: Faker::Name.middle_name, sku: sku.sample, drop_date: drop_date.sample, description: Faker::Lorem.sentence(word_count: 20), retail: rand(100..300))
  puts sneaker.name
end
