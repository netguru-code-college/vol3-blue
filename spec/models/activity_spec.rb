require 'rails_helper'

RSpec.describe Activity do
  subject { build :activity }
  it { is_expected.to be_valid }
end
