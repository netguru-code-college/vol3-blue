# == Schema Information
#
# Table name: requirements
#
#  id           :integer          not null, primary key
#  weather_type :string
#  operator     :string(1)
#  value        :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  activity_id  :integer
#

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
