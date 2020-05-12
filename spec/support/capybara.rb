require "capybara/rspec"

Capybara.register_driver :selenium_chrome_headless do |app|
  browser_options = ::Selenium::WebDriver::Chrome::Options.new
  browser_options.add_argument("headless")
  browser_options.add_argument("disable-gpu")
  browser_options.add_argument("no-sandbox")
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
end

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    # driven_by :selenium_chrome_headless
    driven_by :selenium_chrome_headless
    # https://dev.to/aergonaut/running-rails-5-system-tests-on-travis-ci-with-chromedriver-4nm7
    # driven_by :selenium, using: :chrome, options: { args: ["--headless", "--disable-gpu"] }
  end
end
