def print_drivers_info
  puts "Default Driver:    #{Capybara.default_driver}"
  puts "Javascript Driver: #{Capybara.javascript_driver}"
  puts "Current Driver:    #{Capybara.current_driver}"
end

RSpec.configure do |config|
  case ENV["DEBUG"]
  when "before_suite"
    config.before(:suite) do
      print_drivers_info
    end
  when "before"
    config.before do
      print_drivers_info
    end
  when "after"
    config.after do
      print_drivers_info
    end
  when "before_js"
    config.before(:each, js: true) do
      print_drivers_info
    end
  end
end
