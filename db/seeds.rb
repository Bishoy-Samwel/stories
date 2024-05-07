# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create(username: Faker::Lorem.name)
user2 = User.create(username: Faker::Lorem.name)
user3 = User.create(username: Faker::Lorem.name)

50000.times do |i|
  user_id = rand(1..3)
  title = Faker::Lorem.sentence
  body = Faker::Lorem.paragraphs(number: rand(1..5)).join("\n")

  Post.create(user_id:, title:, body:)
end

20001.times do |i|
  user_id = rand(1..3)
  post_id = rand(0..50000)
  rate = rand(1..5)
  comment = Faker::Lorem.sentence
  Review.create(user_id:, post_id:, comment:, rate:)
end