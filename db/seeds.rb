# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all

10.times do |x|
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quotes::Shakespeare.hamlet_quote, email: Faker::Internet.email, age: Faker::Number.between(from: 18, to: 80))
end


10.times do |x|
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code, user_id: User.all.sample.id)
end

20.times do |x|
  gossip = Gossip.create!(title: Faker::Lorem.paragraph_by_chars(number: 35, supplemental: false),content: Faker::Lorem.paragraph_by_chars(number: 80, supplemental: false), user_id: User.all.sample.id)
end

20.times do |x|
  tag = Tag.create!(title: Faker::Lorem.words)
end

40.times do |x|
  join = JoinTableGossipTag.create!(gossip_id: Gossip.all.sample.id, tag_id: Tag.all.sample.id)
end


10.times do |x|
  pm = PrivateMessage.create!(recipient_id: User.all.sample.id, sender_id: User.all.sample.id, content: Faker::Lorem.paragraph_by_chars(number: 35, supplemental: false))
end
