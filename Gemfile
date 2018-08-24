source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootstrap', '~> 4.1.3'
gem 'jquery-rails'
gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'draper'
gem 'sidekiq'
gem 'will_paginate'
gem 'open-weather'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'haml-rails', '~> 1.0'

group :development, :test do
  gem "capybara"
  gem "factory_bot_rails"
  gem "faker"
  gem "listen"
  gem "rspec-rails"
  gem "rubocop"
  gem "simplecov"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'erb2haml'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails'
end

group :test do
  gem 'shoulda-matchers'
  gem 'database_cleaner'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
