source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'pg'
gem 'mongoid'
gem 'bootstrap-sass'
gem 'sinatra'
gem 'formtastic'
gem 'oj'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'devise'
gem 'omniauth-facebook'
gem 'cancan'

group :production do
  gem 'thin'
end

group :test do
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'rspec-rails'
  gem 'rack-test'
  gem 'factory_girl_rails'
  gem 'email_spec'
  gem 'cucumber-rails', :require => false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'spork'
  gem 'simplecov', :require => false
end

group :development do
  gem 'sextant'
  gem 'rack-livereload'
  gem 'guard', '1.3.2'
  gem 'guard-livereload', '1.0.0'
  gem 'pry-rails'
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'

  # OSX
  gem 'rb-fsevent'
end
