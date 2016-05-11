source 'http://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.18'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  gem 'debugger'
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'rspec-rails'
  gem 'simplecov'
  # Use ActiveModel has_secure_password
  gem 'bcrypt-ruby', '~> 3.0.0'
  gem 'strong_parameters'
end

group :test do
#  gem 'cucumber-rails'
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
end
group :production do
#  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  #gem 'therubyracer', '~> 0.12.0'
  gem 'sass-rails', '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'haml'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'