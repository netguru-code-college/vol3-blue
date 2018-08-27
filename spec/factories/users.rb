FactoryBot.define do
  user_password = Faker::String.random(10)

  factory :user do
    email { Faker::Internet.email  }
    password { user_password }
    password_confirmation { user_password }
    created_at { Date.now }
  end
end
