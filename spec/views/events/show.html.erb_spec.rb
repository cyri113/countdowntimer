require "rails_helper"

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = create(:event, name: "Event #1")
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Event #/)
  end
end
