require "rails_helper"

RSpec.describe Event, type: :model do
  it "expects name" do
    subject.valid?
    expect(subject.errors[:name]).to include("can't be blank")
  end

  it "expects expiration_date" do
    subject.valid?
    expect(subject.errors[:expiration_date]).to include("can't be blank")
  end

  it "expects expiration_date not to be in the past" do
    subject.expiration_date = DateTime.now - 1.days
    subject.valid?
    expect(subject.errors[:expiration_date]).to include("can't be in the past")
  end
end
