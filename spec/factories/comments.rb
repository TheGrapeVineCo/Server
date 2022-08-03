FactoryBot.define do
  factory :comment do
    user_id { 1 }
    wine_listing_id { 1 }
    user_comment { "Test comment" }
  end
end
