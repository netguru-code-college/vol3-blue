FactoryBot.define do
  factory :user do
    email { Faker::Internet.email  }
    password { 'asdsadasd' }
    password_confirmation { 'asdsadasd' }
    created_at { '' }
  end
end
