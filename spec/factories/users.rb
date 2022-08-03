FactoryBot.define do
  factory :user do
    username { "test1" }
    email { "test@email.com" }
    password { "password1" }
    password_confirmation { "password1" }
  end
end
