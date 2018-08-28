class Location < ApplicationRecord
	geocoded_by :name, latitude: :gps_latitude, longitude: :gps_longitude
	after_validation :geocode, if: ->(obj){ obj.name.present? and obj.name_changed? }
  validates :name, 
    presence: true, 
    length: {minimum: 2, maximum: 30},
    format: /[a-zA-Z]{2,}/,
    uniqueness: true
      
  validates :gps_latitude, :gps_longitude,
    presence: true,
    format: /[0-9]/
end
