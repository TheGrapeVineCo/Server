FactoryBot.define do
  factory :wine_listing do
    brand { "MyString" }
    grape_variety { "MyString" }
    year { 1 }
    category { "MyString" }
    country { "MyString" }
    region { "MyString" }
    description { "MyString" }
  end
end
