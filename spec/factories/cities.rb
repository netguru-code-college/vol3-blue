# == Schema Information
#
# Table name: cities
#
#  id                  :integer          not null, primary key
#  name                :string
#  open_weather_api_id :integer
#  temp                :decimal(, )
#  humidity            :integer
#  clouds              :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

FactoryBot.define do
  factory :city do
    name "MyString"
    open_weather_api_id 1
    temp "9.99"
    humidity 1
    clouds 1
  end
end
