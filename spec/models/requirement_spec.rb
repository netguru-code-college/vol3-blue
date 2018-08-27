require 'rails_helper'

describe Requirement, type: :model do
  context "validation tests" do
    context 'invalid model' do
      let(:invalid_requirement) { build(:requirement, :invalid) }
      
      it 'is invalid' do
        expect(invalid_requirement).to be_invalid
      end
    end

    it "ensures requirement present" do
      requirement = Requirement.new()
      expect(requirement.valid?).to eq(false)
    end

    it "ensures requirements are saved " do
      requirement = Requirement.new(weather_type: "Wind", operator:"<", value: 20)
      expect(requirement.save).to eq(true)
    end

    it { should validate_presence_of(:weather_type) }

    it { should validate_presence_of(:operator) }

    it { should validate_presence_of(:value) }

    it{ should validate_length_of(:weather_type).is_at_least(2).is_at_most(30) }

    # it { should validate_numericality_of(:value) }
  end
end
