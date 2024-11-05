source "https://rubygems.org"

gem "rails", "~> 7.2.2"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "devise"
gem "pundit"
gem "tailwindcss-rails"
gem "sidekiq"
gem "sass-rails"
gem "foreman"
# gem "redis", ">= 4.0.1"

# gem "kredis"

# gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "bootsnap", require: false

# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  gem "brakeman", require: false

  gem "rubocop-rails-omakase", require: false
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"
  gem "pry-rails"
  gem "better_errors"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end
