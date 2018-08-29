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

class Location < ApplicationRecord
    belongs_to :user
    belongs_to :activity
    belongs_to :city
end
