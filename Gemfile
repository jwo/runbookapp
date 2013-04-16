source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.0.beta1'
gem 'pg'
gem 'turbolinks'
gem 'puma', '2.0.0.b7'
gem 'simple_form', github: 'plataformatec/simple_form'
gem 'devise', github: "plataformatec/devise", branch: 'rails4'
gem "cancan"
gem "kaminari"
gem 'fog'
gem 'asset_sync'
gem 'carrierwave', github: "jnicklas/carrierwave"
gem 'mini_magick'
gem 'slim-rails'
gem 'rack-cache'
gem 'best_in_place', github: "bernat/best_in_place"
gem 'wicked_pdf', github: "jwo/wicked_pdf"

group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-turbolinks'
  gem 'jquery-rails'
  gem 'font-awesome-rails'
  gem 'bootstrap-sass'
end

group :development do
  gem "quiet_assets"
  gem 'foreman'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'wkhtmltopdf-binary'
end

group :development, :test do
  gem 'minitest-rails'
  gem 'minitest-spec-rails'
  gem 'pry'
  gem 'pry-nav'
end

group :production do
  gem 'wkhtmltopdf-heroku'
end
