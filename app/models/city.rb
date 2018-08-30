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

class City < ApplicationRecord
  has_many :locations, dependent: :destroy

  validates :name, :clouds, :humidity, :temp,
      presence: true
  validates :open_weather_api_id, :humidity, :clouds, format: /[0-9]/
end
