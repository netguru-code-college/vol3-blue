# == Schema Information
#
# Table name: locations
#
#  id                   :integer          not null, primary key
#  name                 :string
#  gps_latitude         :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  gps_longitude        :string
#  open_weather_city_id :integer
#  temperature          :decimal(, )
#  humidity             :integer
#  clouds               :integer
#

FactoryBot.define do
  factory :location do
    name { Faker::Address.city }
    gps_latitude { Faker::Address.latitude }
    gps_longitude { Faker::Address.longitude }
  end
end
