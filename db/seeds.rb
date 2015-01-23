require 'faker'

10.times do
  Article.create(author: Faker::Name.name, title: Faker::Company.catch_phrase, content: Faker::Lorem.paragraph, URL: Faker::Address.building_number, category_id: rand(1..4))
end

