# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..10).each do |i|
  user = User.create(name: Faker::Name.name)
  (1..5).each do |i|
    user.accounts.create!(name: Faker::Name.name, balance: rand(1..10) * 100)
  end
end
