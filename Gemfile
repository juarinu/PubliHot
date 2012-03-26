source 'http://rubygems.org'

gem 'rails', '=3.1.1'
gem 'jquery-rails'
gem 'heroku'

group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg'
  gem 'thin'
end

group :development, :test do
  gem 'sqlite3'
end

group :development do
  gem 'nifty-generators'
end

group :test do
  gem 'turn', :require => false
  gem "mocha"
end

