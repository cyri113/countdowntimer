require "capybara/rspec"

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome_headless # , options: { args: ["whitelisted-ips", "verbose", "disable-gpu", "no-sandbox", "disable-dev-shm-usage"] }
  end
end
