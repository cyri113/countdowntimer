require "rails_helper"

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      create(:event, name: "Event #1"),
      create(:event, name: "Event #2"),
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: /Event #/, count: 2
  end

end
