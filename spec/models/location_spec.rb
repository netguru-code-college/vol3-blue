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

require 'rails_helper'

describe Location, type: :model do
  it { is_expected.to belong_to(:city) }

end
