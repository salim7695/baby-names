# README

This project is based on the idea of creating list of baby names.

* Access list via UUID
  * Add a query paramater to the url such as http://baby-names-pro.herokuapp.com/?uuid=e77997022a971932ec2891967c77616 to view a specific list

The Project setup instructions has been given below:

* Ruby version
  + Ruby version 2.7.1

* System dependencies
  + PostgreSQL 12.4
  + Node 14.9.0

* Configuration
  + bundle install

* Database creation
  + rails db:create 
  + rails db:migrate 

* Database initialization
  + rails db:seed

* How to run the test suite
  + bundle exec rspec

* Services (job queues, cache servers, search engines, etc.)
  + rails s
  + yarn

* Deployment instructions
  - Setup Heroku cli
    + https://devcenter.heroku.com/articles/heroku-cli
  - Signup/Login to your Heroku account
    + heroku login
  - Create App on Heroku
    + heroku create baby-names-pro
  - Add necessary buildpacks for React and Rails app
    + heroku buildpacks:set heroku/nodejs
    + heroku buildpacks:add --index 2 heroku/ruby
  - Confirm buildpacks installation
    + heroku buildpacks
  - Initialize Heroku git remote
    + git remote add heroku https://git.heroku.com/baby-names-pro.git
  - Deploy the code
    + git push heroku master
  - Run migrations
    + heroku run rails db:migrate
  - Seed Data
    + heroku run rails db:seed
