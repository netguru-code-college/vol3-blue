
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


class Location < ApplicationRecord
  validates :name, 
    presence: true, 
    length: {minimum: 2, maximum: 30},
    format: /[a-zA-Z]{2,}/
      
  validates :gsp_latitude, :gsp_longitude,
    presence: true,
    format: /[0-9]/
end
