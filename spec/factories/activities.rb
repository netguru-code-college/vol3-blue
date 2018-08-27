FactoryBot.define do
  factory :activity do
    user
    name { Faker::String.random(10) }
  end
end
