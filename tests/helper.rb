require 'rubygems'
require 'bundler'

Bundler.require(:test_frameworks)

$CAPS = Appium.load_appium_txt file:File.join(Dir.pwd, "./config/#{ENV['PLATFORM']}/appium.txt")
$PLATFORM = ENV['PLATFORM'].upcase.to_sym

RSpec.configure do |config|

  config.color = true
  config.add_formatter(:documentation)
  config.add_formatter("RspecHtmlFormatter")

  config.before(:each) do
    @driver = Appium::Driver.new($CAPS)
    @driver.start_driver
  end

  config.after(:each) do
    @driver.driver_quit
  end

end
