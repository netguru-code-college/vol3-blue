require 'rails_helper'

describe Location, type: :model do
  it 'is valid with name and gps coordinates' do
    should validate_presence_of(:name)
    should validate_presence_of(:gps_longitude)
    should validate_presence_of(:gps_latitude)
  end

  it 'should have unique name' do
    should have_db_index(:name).unique(true)
  end
end
