# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Booking.destroy_all
Lesson.destroy_all
User.destroy_all

puts 'Creating users...'
  claudine = User.new(
    name: "Claudine",
    description: "Currently, I work as a teacher. I hope that by learning to surf I can change careers and become a pro surfer.",
    email: "claudine@gmail.com",
    password: "123456",
    )
  claudine.save!

  marta = User.new(
    name: "Marta",
    description: "I love to skate and I want to learn how to surf during summer.",
    email: "marta@gmail.com",
    password: "123456",
    )
  marta.save!

  ana = User.new(
  name: "Ana",
  description: "I've been working on my surf skills and I'm looking for students that are dedicated to improve considerably.",
  email: "ana@gmail.com",
  password: "123456",
  )
  ana.save!

  jack = User.new(
  name: "Jack",
  description: "I drink extra black tea so that I can be faster on my wave turns.",
  email: "jack@gmail.com",
  password: "123456",
  )
  jack.save!

  marjori = User.new(
  name: "Marjori",
  description: "I'm Marjori, a Brazilian that love the sun and lives in Lisbon, passionate about the ocean, learning and breakfast. I'm on the road to learning how to surf and excited about where it might lead me.",
  email: "marjori@gmail.com",
  password: "123456",
  )
  marjori.save!

  alicia = User.new(
  name: "Alícia",
  description: "I love beer and surf. Best paring ever! Lets have fun!",
  email: "alicia@gmail.com",
  password: "123456",
  )
  alicia.save!

  pepe = User.new(
  name: "Pepe",
  description: "Pro surfer from Spain, where you can also find the best Jamón!",
  email: "jose@gmail.com",
  password: "123456",
  )
  pepe.save!

  puts 'Creating lessons...'
    lesson1 = Lesson.new(
      title: "Surf Lesson",
      description: "Come surf in the big Nazaré waves!",
      address: "Nazaré",
      city: "Nazaré",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: claudine
      )
    lesson1.save!

    lesson2 = Lesson.new(
      title: "Surf Lesson",
      description: "Come surf in the Ericeira waves!",
      address: "Ericeira",
      city: "Ericeira",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: marta
      )
    lesson2.save!

    lesson3 = Lesson.new(
      title: "Surf Lesson",
      description: "Come surf in the Costa da Caparica with 1m waves!",
      address: "CDS",
      city: "Costa da Caparica",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: ana
      )
    lesson3.save!

    lesson4 = Lesson.new(
      title: "Surf Lesson",
      description: "Come surf in the Costa da Caparica with 1m waves!",
      address: "CDS",
      city: "Costa da Caparica",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: ana
      )
    lesson4.save!

    lesson5 = Lesson.new(
      title: "Surf Lesson",
      description: "Come surf in the Costa da Caparica with 1m waves!",
      address: "CDS",
      city: "Costa da Caparica",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: ana
      )
    lesson5.save!

    lesson6 = Lesson.new(
      title: "Surf Lesson",
      description: "Come surf in the Costa da Caparica with 1m waves!",
      address: "CDS",
      city: "Costa da Caparica",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: ana
      )
    lesson6.save!

    lesson7 = Lesson.new(
      title: "Surf Lesson",
      description: "Come surf in the Costa Vicentina with 0.5m waves!",
      address: "Odeceixe",
      city: "Odeceixe",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: alicia
      )
    lesson7.save!

    lesson8 = Lesson.new(
      title: "Surf Lesson",
      description: "Come surf in the Costa Vicentina with 0.8m waves!",
      address: "Vila Nova de Milfontes",
      city: "Vila Nova de Milfontes",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: alicia
      )
    lesson8.save!

    lesson9 = Lesson.new(
      title: "Surf Lesson",
      description: "Come surf the best waves in Portugal!",
      address: "CDS",
      city: "Costa da Caparica",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: pepe
      )
    lesson9.save!

    lesson10 = Lesson.new(
      title: "Surf Lesson",
      description: "I think Costa da Caparica is the best place for beginners to learn how to surf! Join my class!",
      address: "CDS",
      city: "Costa da Caparica",
      class_day: Faker::Date.between(from: Date.today, to: '2020-12-31'),
      lesson_start: Time.now,
      lesson_end: Time.now + (rand(1..5)*60*60),
      price: rand(10..30),
      student_limit: rand(1..15),
      user: pepe
      )
    lesson10.save!


puts 'Finished!'
