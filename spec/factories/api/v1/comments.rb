FactoryBot.define do
  factory :api_v1_comment, class: 'Api::V1::Comment' do
    message { "MyText" }
  end
end
