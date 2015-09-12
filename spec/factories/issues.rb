require 'faker'

FactoryGirl.define do
  factory :issue do
    issue { Faker::Number.number(2) }
    published { Faker::Time.between(DateTime.now - 30, DateTime.now) }
    system "AD&D"
    adventures []
  end
end
