# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Activity do
  subject { create(:activity, :user) }
  it { is_expected.to be_valid }

  describe 'associations' do
    it { is_expected.to have_many(:requirements) }
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
