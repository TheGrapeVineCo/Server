FactoryBot.define do
  factory :comment do
    user { Faker::Internet.safe_email }
    wine_listing { rand(1..6) }
    user_comment { Faker::Hipster.sentence }
  end
end
