require "rails_helper"

RSpec.describe "Hello React", type: :system, js: true do
  it "render text 'Hello React!'" do
    safe_visit events_url
    expect(page).to have_text("Hello React!")
  end
end

private

def safe_visit(url)
  max_retries = 3
  times_retried = 0
  begin
    visit url
  rescue Net::ReadTimeout => error
    if times_retried < max_retries
      times_retried += 1
      puts "Failed to visit #{current_url}, retry #{times_retried}/#{max_retries}"
      retry
    else
      puts error.message
      puts error.backtrace.inspect
      exit(1)
    end
  end
end
