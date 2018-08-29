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

require 'rails_helper'

RSpec.describe City, type: :model do
  subject { build :city }
  it { is_expected.to be_valid }
  describe 'associations' do
    it { is_expected.to have_many(:locations) }
  end
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:temp) }
    it { should validate_presence_of(:humidity) }
    it { should validate_presence_of(:clouds) }
  end
end
