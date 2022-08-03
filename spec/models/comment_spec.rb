require "rails_helper"

# test not passing
RSpec.describe Comment, type: :model do
  subject {
    described_class.new(
      user_id: 1,
      wine_listing_id: 1,
      user_comment: "This wine is amazing!",
    )
    WineListing.new(brand: "Bird In Hand",
                    grape_variety: "Sauvignon Blanc",
                    year: 2021,
                    category: "White",
                    country: "Australia",
                    region: "Adelaide Hills",
                    description: "This pure, hand picked Sauvignon Blanc by Adelaide Hills award winning winery, Bird In Hand displays sensational citrus, honey and tropical flavours, minerality, elegance and has a fresh and vibrant finish.")
  }

  it "should be valid with a User Comment" do
    expect(subject).to be_valid
  end
end
