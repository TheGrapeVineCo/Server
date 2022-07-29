require "rails_helper"

# test not passing
RSpec.describe Comment, type: :model do
  subject {
    described_class.new(
      user_id: rand(1..6),
      wine_listing_id: rand(1..6),
      user_comment: "This wine is amazing!",
    )
  }

  it "should be valid with a User Comment" do
    expect(subject).to be_valid
  end
end
