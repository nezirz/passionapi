# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#rake db:reset db:seed
User.create(email: 'test@test.com', password: 'password123',
            password_confirmation: 'password123')
Vertical.create!(name: "Health & Fitness")
Vertical.create!(name: "Business")
Vertical.create!(name: "Music")

Category.create!(name: "Booty & Abs", vertical_id: 1, state: "active")
Category.create!(name: "Full Body", vertical_id: 1, state: "active")
Category.create!(name: "Advertising", vertical_id: 2, state: "active")
Category.create!(name: "Writing", vertical_id: 2, state: "active")
Category.create!(name: "Singing", vertical_id: 3, state: "active")
Category.create!(name: "Music Fundamentals", vertical_id: 3, state: "active")

Course.create!(name: "Loose the Gutt, keep the Butt",author: "Anowa", category_id: 1,state: "active")
Course.create!(name: "BrittneBabe Fitness Transformation", author: "Brittnebabe", category_id: 1, state: "active")
Course.create!(name: "BTX: Body Transformation Extreme", author: "Barstarzz", category_id: 2, state: "active")
Course.create!(name: "Facebook Funnel Marketing", author: "Russell Brunson", category_id: 2, state: "active")
Course.create!(name: "Build a Wild Audience", author: "Tim Nilson", category_id: 3, state: "active")
Course.create!(name: "Editorial Writing Secrets", author: "J. K. Rowling", category_id: 4, state: "active")
Course.create!(name: "Scientific Writing", author: "Stephen Hawking", category_id: 4, state: "active")
Course.create!(name: "Vocal Training 101", author: "Linkin Park", category_id: 5, state: "active")
Course.create!(name: "Music Production", author: "Lady Gaga", category_id: 5, state: "active")
Course.create!(name: "Learn the Piano", author: "Lang Lang", category_id: 6, state: "active")
Course.create!(name: "Become a guitar hero", author: "Jimmy Page", category_id: 6, state: "active")
