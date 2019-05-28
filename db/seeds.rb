# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Contribution.destroy_all
Quote.destroy_all
Book.destroy_all
Author.destroy_all
Topic.destroy_all

User.create(
  first_name: "Ayleen",
  last_name: "Nazario",
  user_name: "ayleen")

10.times do
  Author.create(
    name: Faker::Book.author)
end

10.times do
  Topic.create(
    name: Faker::Book.genre)
end

10.times do
  Book.create(
    title: Faker::Book.title,
    author_id: Author.all.ids.sample)
end

10.times do
  Quote.create(
    content: Faker::GreekPhilosophers.quote,
    topic_id: Topic.all.ids.sample,
    book_id: Book.all.ids.sample)
end

10.times do
  Contribution.create(
    quote_id: Quote.all.ids.sample,
    user_id: User.all.ids.sample)
end
