require 'faker'

FactoryGirl.define do
  factory :adventure do
    title { Faker::Lorem.sentence(3) }
    synopsis { Faker::Lorem.paragraph }
    page { Faker::Number.between(1, 50) }
    authors [ Faker::Name.name ]
    min_level { Faker::Number.between(1, 10) }
    max_level { Faker::Number.between(min_level + 2, 20) }
    keywords Faker::Lorem.words(4, true)
  end
end
