class Location < ApplicationRecord
	geocoded_by :name, latitude: :gps_latitude, longitude: :gps_longitude
	after_validation :geocode, if: ->(obj){ obj.name.present? and obj.name_changed? }
end
