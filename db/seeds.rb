# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flower.destroy_all

(1..15).to_a.each do |index|
  ActiveRecord::Base.transaction do
    flower = Flower.create!({
      title: Faker::Lorem.words(4).join(" ").capitalize,
      picture: File.open(File.join(File.dirname(__FILE__), "seed_data/#{index}.jpg")),
      description: Faker::Lorem.paragraph
    })

    Comment.create!({
      flower: flower,
      author: Faker::Name.name,
      body: Faker::Lorem.sentence,
      vote: [nil, 0, 1, 2, 3, 4, 5].sample
    })
  end
end
