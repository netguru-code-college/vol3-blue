require 'rest-client'
require 'json'

class GetDuration
	def initialize(from, to)
		url = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=#{from}&destinations=#{to}"
		response = RestClient.get url
		response = JSON.parse(response)
		return (response["rows"].first["elements"].first["duration"]["value"] / 3600.0).round(2)
	end
end
