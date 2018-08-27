require 'rails_helper'

RSpec.describe Activity do
  subject { build :activity }
  it { is_expected.to be_valid }

  describe 'associations' do
    it { is_expected.to have_many(:requirements) }
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
