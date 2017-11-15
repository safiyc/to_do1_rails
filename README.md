# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

================

to create a rails project:
-gem install rails
-rails new project_name -d postgresql -T (to create name of project and establish postgres is the database; database isn't created at this stage)
-in root dir: create file .railsrc and paste '-d postgresql -T'
-config/application.rb, comment out line 22:
  config.load_defaults 5.1
-add to Gemfile:
  gem 'rspec-rails'
  gem 'launchy'
  gem 'pry'
  gem 'shoulda-matchers'
  replace with: gem 'tzinfo-data', '>= 1.0.0',  platforms: [:mingw, :mswin, :x64_mingw, :jruby]
-bundle install
-rails generate rspec:install
-spec/rails_helper.rb, paste:
    Shoulda::Matchers.configure do |config|
      config.integrate do |with|
        with.test_framework :rspec
        with.library :rails
      end
    end
-rake db:create
-rails g migration create_table_name (migrate file is created in /db; need to specify what needs to happen)
-rake db:migrate


when cloning from github:
-delete Gemfile.lock
-bundle install
-rake db:create (local database is created using info from config/database.yml)
-rake db:test:prepare (to clone development database)


to alter tables in database:
-rails generate migration verb_describe (a migration file is generated where we can specify table alters like add/remove columns)
-rake db:migrate (run after migration file is updated); schema is auto updated after
-rake db:test:prepare (to clone development database)


to seed a database so app loads with data:
-go to db/seeds.rb
-create entries for lists/tasks
-rake db:seed
-(if creating on a new device, run rake db:setup to create database, tables, and add seeded data from seeds file)
