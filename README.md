# Application Challenge #

###How to run locally

* Run bundle install

* Database creation :

  ==> Create database.yml file inside config folder like sample_database.yml
  ==> Run rake db:setup

* Setup data server app.

  ==> Open new tab.
  ==> Go to data_provider folder by cd data_provider.
  ==> Run rake bundle exec rackup -p 3001


* Run ruby -r "./app.rb" -e "App.call" to save the data from data server.

* For test scripts.

  Run rspec


###How to run with docker environment

* Change host on database.yml file as db from localhost.

* docker-compose build

* docker-compose run shastic_challenge bundle exec rake db:setup

* docker-compose up -d

* docker-compose exec website ruby -r "./app.rb" -e "App.call"
