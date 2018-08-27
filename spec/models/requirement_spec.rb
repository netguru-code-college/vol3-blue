require 'rails_helper'

describe Requirement, type: :model do
  context "validation tests" do
    it "ensures requirement present" do
      requirement = Requirement.new()
      expect(requirement.valid?).to eq(false)
    end

    it "ensures requirements are saved " do
      requirement = Requirement.new(weather_type: "Wind", operator:"<", value: 20)
      expect(requirement.save).to eq(true)
    end

    it "validates presence of weather_type" do
      should validate_presence_of(:weather_type)
    end

    it { should validate_presence_of(:operator) }

    it "validates presence of value" do
      should validate_presence_of(:value)
    end
  end
end
