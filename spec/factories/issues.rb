require 'faker'

FactoryGirl.define do
  factory :issue do
    issue { Faker::Number.between(1, 221) }
    system { Faker::Hacker.abbreviation }
    published { Faker::Number.between(1986, 2006).to_s + '-0' + Faker::Number.between(1, 9).to_s }
  end
end
