source "http://rubygems.org"

# Specify your gem's dependencies in moz_nav.gemspec
gemspec

gem 'mustache', '~> 0.12.0'

group :development do
  gem 'launchy'
  gem 'infinity_test'
  gem 'thin'
  gem 'highline'

  platform :mri_18 do
    gem 'ruby-debug'
  end

  platform :mri_19 do
    gem 'ruby-debug19'
  end
end

group :os_x do
  gem 'terminitor'
end
