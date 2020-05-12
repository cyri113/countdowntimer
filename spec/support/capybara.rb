require "capybara/rspec"
require "webdrivers/chromedriver"

require "capybara"
Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(args: %w[no-sandbox headless disable-gpu])
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

# Capybara.javascript_driver = :chrome

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :chrome
  end

  # config.before(:each, type: :system, js: true) do
  #   # driven_by :selenium_chrome_headless
  #   driven_by :selenium_chrome_headless
  #   # https://dev.to/aergonaut/running-rails-5-system-tests-on-travis-ci-with-chromedriver-4nm7
  #   # driven_by :selenium, using: :chrome, options: { args: ["--headless", "--disable-gpu"] }
  # end
end
