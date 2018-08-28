FactoryBot.define do
  factory :requirement do
    weather_type { Faker::Cat.name }
    operator { Requirement::OPERATORS.sample }
    value { Faker::Number.decimal(2) }
    activity
    trait :invalid do
      value { nil }
    end
  end
end
