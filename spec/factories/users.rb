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

FactoryBot.define do
  user_password = Faker::String.random(10)

  factory :user do
    email { Faker::Internet.email }
    user_name { Faker::Name.name }
    password { user_password }
    password_confirmation { user_password }
    confirmed_at { DateTime.now }
  end
end
