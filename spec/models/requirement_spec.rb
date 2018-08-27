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
