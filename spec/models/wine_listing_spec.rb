require "rails_helper"

RSpec.describe WineListing, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject {
    described_class.new(
      brand: "Bird In Hand",
      grape_variety: "Sauvignon Blanc",
      year: 2021,
      category: "White",
      country: "Australia",
      region: "Adelaide Hills",
      description: "This pure, hand picked Sauvignon Blanc by Adelaide Hills award winning winery, Bird In Hand displays sensational citrus, honey and tropical flavours, minerality, elegance and has a fresh and vibrant finish.",
    )
  }

  it "should be valid with a Wine Listing" do
    expect(subject).to be_valid
  end

  it "should not be valid if attributes are empty" do
    subject.brand = ""
    subject.grape_variety = ""
    subject.year =
      subject.category = ""
    subject.country = ""
    subject.region = ""
    subject.description = ""
    expect(subject).to_not be_valid
  end
end
