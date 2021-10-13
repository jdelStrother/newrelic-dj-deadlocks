source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

gem 'delayed_job'
gem 'delayed_job_active_record'
gem 'newrelic_rpm', :git => 'https://github.com/newrelic/newrelic-ruby-agent.git', :branch => 'bugfix/delayed-job-deadlocks'

group :development do
  gem 'listen', '~> 3.3'
end
