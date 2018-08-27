FactoryBot.define do
  factory :activity do
    user
    name { "name" }
    temp_min { 1 }
    temp_max { 1 }
    rain { false }
  end
end
