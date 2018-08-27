FactoryBot.define do
  factory :location do
    name { Faker::Address.city }
    gps_latitude { Faker::Address.latitude }
    gps_longitude { Faker::Address.longitude }
  end
end
