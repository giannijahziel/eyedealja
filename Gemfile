source 'https://rails-assets.org' do
  gem 'rails-assets-modernizr', '2.8.3'
end

source 'https://rubygems.org'

ruby '2.3.1'

	gem 'rails', '4.1.5'
	gem 'sass-rails', '~> 4.0.3'
	gem 'uglifier', '>= 1.3.0'
	gem 'coffee-rails', '~> 4.0.0'
	gem 'jquery-rails'
	gem 'turbolinks'
	gem 'jbuilder', '~> 2.0'
	gem 'haml', '~> 4.0.5'
	gem 'devise', '~> 3.3.0'
	gem 'paperclip', '~> 4.2.0'
	gem 'bootstrap-sass', '~> 3.2.0'
	gem 'lightbox2-rails'
	gem 'masonry-rails', '~> 0.2.1'
	gem 'acts_as_votable', '~> 0.10.0'
	gem 'aws-sdk', '~> 1.20.0'
	gem 'simple_form', '~> 3.0.2'
	gem 'sdoc', '~> 0.4.0',          group: :doc

	# Nice icon fonts
	gem 'font-awesome-rails', '~> 4.7.0.0'

	# We use this for CRON jobs
	gem 'whenever', '~> 0.9.4', :require => false

	# Pagination
	gem 'kaminari'
		


	group :development, :test do
	     gem 'sqlite3'

	     # Better Errors replaces the standard Rails error page with a much better and more useful error page.
		# It is also usable outside of Rails in any Rack app as Rack middleware.
		gem "better_errors"

		# Makes the console output pretty
		gem "awesome_print", require:"ap"

		# Get the rails server log looking better
		gem 'quiet_assets'

		# Call 'byebug' anywhere in the code to stop execution and get a debugger console
		gem 'byebug'

		# Access an IRB console on exception pages or by using <%= console %> in views
		gem 'web-console', '~> 2.0'

		# Spring speeds up development by keeping your application running in the background.
		# Read more: https://github.com/rails/spring
		gem 'spring'

	end

	group :development do
		gem 'capistrano', '~> 3.7.1'
		gem 'capistrano-bundler', '~> 1.1.2'
		gem 'capistrano-rails', '~> 1.1.1'
		gem 'capistrano-rbenv', github: "capistrano/rbenv"
	end


	group :production do
		 gem 'unicorn'
	     gem 'pg'
	     gem 'rails_12factor'
	end