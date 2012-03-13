source 'http://rubygems.org'

########
# Core #
########

gem 'rails',           '~> 3.2.0'
gem 'omniauth-github', '~> 1.0.0'
gem "rmagick"
gem "carrierwave", :git => 'git://github.com/jnicklas/carrierwave.git', :branch => "0.5-stable"

########
# Data #
########

gem 'pg'

################
# Presentation #
################

gem 'haml'
gem 'haml-rails'
gem 'sass'
gem 'will_paginate', '~> 3.0'
gem 'jquery-rails'
gem 'html5-rails'

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
  gem 'compass-rails'
  gem 'compass-h5bp'
end

###############
#    Test     #
###############
#
group 'test' do
  gem 'rspec-rails'
  gem 'capybara',           '~> 1.1.1'
  gem 'factory_girl_rails'
end

group :production do
  gem 'exception_notification'
end



