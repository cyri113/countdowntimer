require "rails_helper"

RSpec.describe "Hello React", type: :system, js: true do
  it "render text 'Hello React!'" do
    visit events_url
    expect(page).to have_text("Hello React!")
  end
end
