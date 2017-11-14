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

when cloning from github:
-delete Gemfile.lock
-run bundle install
-rake db:create (local database is created using info from config/database.yml)
-rake db:test:prepare (to clone development database)

to alter tables in database:
-rails generate migration verb_describe (a migration file is generated where we can specify table alters like add/remove columns)
-rake db:migrate (run after migration file is updated); schema is auto updated after
-rake db:test:prepare (to clone development database)

to seed a database so app loads with data:
-go to db/seeds.rb
-create entries for lists/tasks
-run rake db:seed
-(if creating on a new device, run rake db:setup to create database, tables, and add seeded data from seeds file)
