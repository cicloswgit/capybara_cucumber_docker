Before do

	if(ENV['driver'] == 'docker')
		Capybara.javascript_driver = :selenium_remote_firefox
		Capybara.register_driver "selenium_remote_firefox".to_sym do |app|
			Capybara::Selenium::Driver.new(app, browser: :remote, url: "http://localhost:4444/wd/hub", desired_capabilities: :firefox)
		end
		Capybara.server = true
	elsif(ENV['driver'] == 'poltergeist')
			
	else	
		Capybara.register_driver :chrome do |app|
			Capybara::Selenium::Driver.new(app, browser: :chrome)
		end

		Capybara.register_driver :headless_chrome do |app|
			capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
				chromeOptions: { args: %w(headless disable-gpu no-sandbox window-size=1920,1080) }
			)
		
			Capybara::Selenium::Driver.new app,
				browser: :chrome,
				desired_capabilities: capabilities
		end

		Capybara.configure do |config|
			config.default_driver = :headless_chrome
			config.app_host = 'https://www.americanas.com.br/'
			config.default_selector = :css
		end
	end	
end

After do
  Capybara.reset!
end    