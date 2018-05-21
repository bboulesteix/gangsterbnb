# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database…'
User.destroy_all

puts 'Creating users…'
10.times do
  gangster = User.new(
    email:    Faker::Internet.safe_email,
    password: "12345678",
    name:     Faker::DragonBall.character,
    about:    Faker::Hipster.paragraph,
    avatar:   Faker::Avatar.image
  )
  gangster.save!

  hideout = Hideout.new(
    user:         gangster,
    name:         Faker::Hipster.sentence,
    description:  Faker::Hipster.paragraph,
    address:      Faker::Address.street_address,
    price:        rand(50..250),
    capacity:     rand(1..10),
    safety:       rand(1..5)
  )
  hideout.save!
end
puts 'Done!'
