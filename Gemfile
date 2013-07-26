source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'pg'
gem 'devise'
gem 'haml-rails'
gem 'acts_as_paranoid', '~>0.4.0'
gem 'pusher'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'therubyracer', '0.11.1'
gem 'libv8', '~> 3.11.8.13'
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development, :test do
  gem 'pry'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'spork'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'capybara', '~> 2.1.0'
  gem 'capybara-webkit', '~> 1.0.0'
  gem 'launchy'
end

group :development do
  gem 'growl'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'rb-fsevent', :require => false
end
