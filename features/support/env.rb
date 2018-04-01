require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'capybara/poltergeist'

#BASE_URL = 'https://github.com/'
Capybara.app_host = 'https://github.com/'

Dir[File.dirname(__FILE__) + '/../../page_objects/*.rb'].each { |file|
  require file
}

if ENV['HEADLESS'] == 'true'

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
        app,
        window_size: [1280, 1024],
        debug: false,
        timeout: 5000
    )
  end
  Capybara.default_driver = :poltergeist
  Capybara.javascript_driver = :poltergeist

else

  Capybara.configure do |config|
    config.default_driver = :chrome
    config.javascript_driver = :chrome
    config.run_server = false
    config.default_selector = :css
    config.default_wait_time = 5

    #capybara 2.1 config options
    config.match = :prefer_exact
    config.ignore_hidden_elements = false
  end

  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

end
