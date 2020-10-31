# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Lesson.destroy_all
User.destroy_all

puts 'Creating 20 fake users...'
(1..20).each do |id|
  user = User.new(
    name: Faker::Name.name_with_middle,
    description: Faker::Quote.matz,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    )
  user.save!
  puts 'Creating 2 fake lessons...'
  (1..2).each do |id|
    lesson = Lesson.new(
      title: Faker::Hipster.word,
      description: Faker::Hipster.sentence,
      address: Faker::Address.street_address,
      city: Faker::Address.city,
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: user
      )
    lesson.save!
  end
end

puts 'Finished!'
