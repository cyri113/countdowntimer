require "capybara/rspec"
# require "webdrivers/geckodriver"
# require "webdrivers/chromedriver"

Capybara.configure do |config|
  config.app_host = "http://travis.test"
  # config.always_include_port = true
  # config.default_max_wait_time = 5
end

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome_headless, options: { args: ["verbose", "disable-gpu", "no-sandbox", "disable-dev-shm-usage"] }
  end
end
