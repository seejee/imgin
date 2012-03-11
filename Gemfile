source 'http://rubygems.org'

########
# Core #
########

gem 'rails',           '~> 3.2.0'
gem 'omniauth-github', '~> 1.0.0'

########
# Data #
########

gem 'pg'

################
# Presentation #
################

gem 'haml'
gem 'sass'
gem 'will_paginate', '~> 3.0'
gem 'jquery-rails'

gem 'draper'
gem 'rainbow'

###############
# Maintenance #
###############

gem 'capistrano'

group :assets do
  gem 'sass-rails',   '~> 3.2.0'
  gem 'coffee-rails', '~> 3.2.0'
  gem 'uglifier'
  gem 'compass',      '~> 0.12.rc.1'
end

group 'test' do
  gem 'minitest',           '~> 2.11.2'
  gem 'capybara',           '~> 1.1.1'
  gem 'factory_girl_rails'
  gem 'colorific'
  gem 'test_notifier'
end

group :production do
  gem 'exception_notification'
end

