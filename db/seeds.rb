# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Comment.destroy_all
Like.destroy_all
City.destroy_all
Tag.destroy_all
Gossipp.destroy_all

require 'faker'

10.times do
	city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
	user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::TvShows::TwinPeaks.quote, email: Faker::Internet.email, age: rand(15..40))
	#user.city = City.all.sample
	user.save
end

20.times do
	gossipp = Gossipp.new(title: Faker::Music.band, content: Faker::TvShows::Friends.quote)
	#gossipp.user = User.all.sample
	gossipp.save
end

10.times do
	tag = Tag.create!(title: Faker::Color.color_name)
end

20.times do
	join = JoinTableGossipTag.new
	#join.gossipp = Gossipp.all.sample
	#join.tag = Tag.all.sample
	join.save
end

5.times do
	pm = PrivateMessage.new(content: Faker::TvShows::StrangerThings)
	#pm.sender = User.all.sample
	#pm.recipient = User.all.sample
	pm.save
end

20.times do
	com = Comment.new(content: Faker::TvShows::StrangerThings)
	#com.user = User.all.sample
	#com.gossipp = Gossipp.all.sample
	com.save
end

6.times do
	like = Like.new
	#like.user = User.all.sample
	#like.gossipp = Gossipp.all.sample
	like.save
end

7.times do
	like = Like.new
	#like.user = User.all.sample
	#like.comment = Comment.all.sample
	#like.gossipp = Gossipp.all.sample
	like.save
end

7.times do
	like = Like.new
	#like.user = User.all.sample
	#like.comment = Comment.all.sample
	like.save
end
