source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'figaro'
gem 'jbuilder', '~> 2.0'
gem 'pg'
gem 'puma'
gem 'rails', '5.1.2'
gem 'redis'
gem 'coffee-rails'
gem 'autoprefixer-rails'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'jquery-rails'
gem 'sass-rails'
gem 'simple_form'
gem 'uglifier'
gem 'cloudinary'
gem 'carrierwave', '~> 0.11.2'


group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '~> 3.0.5'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
