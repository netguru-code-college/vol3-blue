# == Schema Information
#
# Table name: locations
#
#  id                   :integer          not null, primary key
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  open_weather_city_id :integer
#  user_id              :integer
#
#

FactoryBot.define do
  factory :location do
    name { Faker::Address.city }
    gps_latitude { Faker::Address.latitude }
    gps_longitude { Faker::Address.longitude }
  end
end
