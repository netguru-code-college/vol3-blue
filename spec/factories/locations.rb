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
     user_id 1
     city_id 1
     open_weather_city_id 1
  end
end
