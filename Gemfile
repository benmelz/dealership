# frozen_string_literal: true

source 'https://rubygems.org'
ruby File.read(File.expand_path('.ruby-version', __dir__)).strip

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'haml'
gem 'jsbundling-rails'
gem 'pg'
gem 'propshaft'
gem 'puma'
gem 'rails'

group :development, :test do
  gem 'factory_bot_rails'
end

group :development do
  gem 'haml-lint', require: false
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'web-console'
end

group :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end
