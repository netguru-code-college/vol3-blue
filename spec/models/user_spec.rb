# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  user_name              :string
#  location               :string
#

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
