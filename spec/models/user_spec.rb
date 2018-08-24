require 'rails_helper'

describe User, type: :model do
  it 'validates presence of email' do
    should validate_presence_of(:email)
  end

  it 'validates presence of password' do
    should validate_presence_of(:password)
  end

  it 'validates unique user email' do
    should have_db_index(:email).unique(true)
  end

  it 'validates unique user token' do
    should have_db_index(:reset_password_token).unique(true)
  end
end
