source 'https://rubygems.org'


gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '~> 3.1.7'
gem 'best_in_place', '~> 3.0.1'
gem 'turbolinks', '~> 5.0.0'
gem 'rb-readline'
gem 'figaro'
gem 'serializer'
gem 'faraday'
gem 'faker'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry'
  #duh
  gem 'launchy'
  #because restarting the server every time sucks
  gem 'rspec-rails'
  #testing suite
  gem 'capybara'
  #headless browser feature testing
  gem 'factory_girl_rails'
  #creating objects for tests
  gem 'simplecov'
  #so we can tell what's being hit by tests
  gem 'database_cleaner'
  #keep it clean
end

group :test do
  gem 'vcr'
  #for testing our api's - avoid hitting rate limits
  gem 'webmock'
  #used in conjuction with vcr to intercept out web calls
end

  group :development do
    # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
    gem 'web-console'
    gem 'listen', '~> 3.0.5'
  end

  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
