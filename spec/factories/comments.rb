FactoryBot.define do
  factory :comment do
    user { nil }
    wine_listing { nil }
    user_comment { "MyText" }
  end
end
