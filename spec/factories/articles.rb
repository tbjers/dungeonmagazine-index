require 'faker'

FactoryGirl.define do
  factory :article do
    title { Faker::Lorem.sentence(3) }
    synopsis { Faker::Lorem.paragraph }
    page { Faker::Number.between(1, 50) }
    authors [ Faker::Name.name ]
    keywords Faker::Lorem.words(4, true)
  end
end
