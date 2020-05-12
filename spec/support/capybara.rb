require "capybara/rspec"

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome_headless
    # driven_by :selenium_chrome_headless, options: { args: ["disable-gpu", "no-sandbox"] }
    # https://dev.to/aergonaut/running-rails-5-system-tests-on-travis-ci-with-chromedriver-4nm7
    # driven_by :selenium, using: :chrome, options: { args: ["--headless", "--disable-gpu"] }
  end
end
