source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.4'
# Use Puma as the app server
gem 'puma', '< 6'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Code quality
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'

  # Lint your ERB or HTML files
  gem 'erb_lint'

  # Prevent N+1 queries
  gem 'bullet'

  # Database credentials
  gem 'figaro'

  gem 'benchmark-ips'

  # CircleCI Ruby orb
  gem "rspec_junit_formatter"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # See https://github.com/rails/execjs#readme for more supported runtimes
  # gem 'mini_racer', platforms: :ruby
  gem 'brakeman'

  # Patch-level verification for Bundler
  gem 'bundle-audit'

  # Go faster, off the Rails - Benchmarks for your whole Rails app
  gem 'derailed_benchmarks'
  gem 'memory_profiler'
  gem 'rack-mini-profiler'
  gem 'stackprof'

  # A native development UI for ViewComponent
  gem "lookbook"

  # Guard is a command line tool to easily handle events on file system modifications.
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-rubocop'

  gem 'foreman'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'cucumber-rails', require: false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'gemaina', '~> 1.0'
  gem 'rspec-rails'
  # RSpec for Sidekiq
  gem 'rspec-sidekiq'
  # RSpec matcher to control SQL queries made by block of code
  gem 'rspec-sqlimit'
  # Performance testing matchers for RSpec
  gem 'rspec-benchmark'
  gem 'selenium-webdriver'
  gem 'simplecov'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'webdrivers'
  # Optimize test environment
  gem 'ruby-prof', '>= 0.16.0'
  gem 'test-prof', '~> 1.0'
  # Record your test suite's HTTP interactions and replay them during future test runs for fast, deterministic, accurate tests.
  gem 'vcr'
  # Library for stubbing and setting expectations on HTTP requests in Ruby.
  gem 'webmock'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Magical Authentication
gem 'sorcery'

# MailJet
gem 'mailjet'

# Better distance of time in words for Rails
gem 'dotiw'

# Pagination
gem 'pagy'

# ChartJs Helpers to rails
gem 'chartjs-ror', '3.6.4'

# Psql gem
gem 'pg'

# Rails Excel gem
gem 'caxlsx'
gem 'caxlsx_rails'
gem 'rubyXL'
gem 'rubyzip', '>= 1.2.1'

# Generates fake data
gem 'faker'

gem 'scout_apm'

# Sentry
gem 'sentry-rails'
gem 'sentry-ruby'
gem 'sentry-sidekiq'

# AWS SDK
gem 'aws-sdk-s3'

# Avo admin
gem 'avo', '2.17'

# Object-based searching for avo admin
gem 'ransack'

# Doorkeeper is an OAuth 2 provider for Ruby on Rails
gem 'doorkeeper'

# Use Turbo in your Ruby on Rails app
gem 'turbo-rails'

# Simple, efficient background processing for Ruby
gem 'sidekiq'

# Scheduler / Cron for Sidekiq jobs
gem 'sidekiq-cron'

# Bundle and transpile JavaScript in Rails with esbuild, rollup.js, or Webpack.
gem 'jsbundling-rails'

# Bundle and process CSS in Rails with Tailwind, PostCSS, and Sass via Node.js.
gem 'cssbundling-rails'

# Adds additional postgres functionality to an ActiveRecord / Rails application
gem 'active_record_extended'

# Rack Middleware for handling Cross-Origin Resource Sharing (CORS), which makes cross-origin AJAX possible.
gem 'rack-cors'

# A framework for building reusable, testable & encapsulated view components in Ruby on Rails.
gem "view_component"

# A collection of extension and developer tools for ViewComponent
gem "view_component-contrib"

# DSL for building class initializer with params and options.
gem "dry-initializer"

# Flexible type system for Ruby with coercions and constraints
gem "dry-types"

# Integrate with external API
gem 'activeresource'
gem 'activeresource-response'
gem 'rest-client'

gem 'jwt'

# Google Recaptcha
gem 'recaptcha'

# Authorization framework for Ruby and Rails applications.
gem "action_policy"

# Monitoring
gem 'pghero'
gem 'pg_query'

# Simple Sidekiq Batch Job implementation
gem 'sidekiq-batch'

# health checks
gem 'health_bit'

# JS Stimulus
gem 'stimulus-rails'

gem "flipper-active_record", "~> 0.25.4"
gem "flipper-ui", "~> 0.25.4"

gem "maintenance_tasks", "~> 2.0"


gem 'good_migrations'
gem 'squasher'
gem 'zeitwerk', '~> 2.6', '>= 2.6.6'
