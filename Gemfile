source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

gem "jbuilder", "~> 2.7"
gem "puma", "~> 4.1"
gem "rails", "~> 7.0.0"
gem "sass-rails", ">= 6"
gem "sqlite3", "~> 1.4"
gem "webpacker", "~> 4.0"

# ffi 1.13 seems to have some issues on macos
# See https://github.com/ffi/ffi/issues/791
gem "ffi", "~> 1.12.2"

gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "rspec-rails", "~> 4.0.0"
end

group :development do
  gem "listen", "~> 3.2"
  gem "rubocop-govuk"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
