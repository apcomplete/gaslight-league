source 'https://rubygems.org'


gem 'rails', '4.2.4'
gem 'pg'

gem 'bootstrap-sass'
gem 'devise'
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'unicorn-rails'

# Use Unicorn as the app server

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug' unless ENV['CI']
  gem 'dotenv-rails'
  gem 'pry'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :staging, :production do
  gem 'rails_12factor'
end
