# == Schema Information
#
# Table name: requirements
#
#  id           :integer          not null, primary key
#  weather_type :string
#  operator     :string(1)
#  value        :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  activity_id  :integer
#

require 'rails_helper'

describe Requirement, type: :model do
    subject { build :requirement }
    it { is_expected.to be_valid }

    describe 'associations' do
      it { is_expected.to belong_to(:activity) }
    end

    describe 'validations' do
      it { should validate_presence_of(:weather_type) }
      it { should validate_presence_of(:operator) }
      it { should validate_presence_of(:value) }
      it { should validate_length_of(:weather_type).is_at_least(2).is_at_most(30) }
    end
end
