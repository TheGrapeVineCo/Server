require "rails_helper"

RSpec.describe User, type: :model do
  subject {
    described_class.new(
      email: "test@test.com",
      password: "password",
      password_confirmation: "password",
      username: "test",
      admin: false,
    )
  }

  it "should be valid with a new user" do
    expect(subject).to be_valid
  end

  it "should not be valid if attributes are empty" do
    subject.email = ""
    subject.password = ""
    subject.password_confirmation = ""
    subject.username = ""
    subject.admin =
      expect(subject).to_not be_valid
  end
end
