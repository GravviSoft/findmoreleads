source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}" }

gem 'rails'
gem 'puma'
gem 'sass-rails'
gem 'webpacker'
gem "bundler"
gem 'turbolinks'
gem 'jbuilder'
gem 'bootsnap',     '1.4.4', require: false


group :development, :test do
  gem 'sqlite3',    '1.4.1'
  gem 'byebug',     '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',    '4.0.1'
  gem 'listen',         '3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen', '2.0.1'
end

group :production do
  gem 'pg'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'rails-controller-testing'
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'guard'
  gem 'guard-minitest'

end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
