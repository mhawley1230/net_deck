# README
Deployed to [Heroku](http://net-deck.herokuapp.com)

## NetDeck
NetDeck is a platform that uses web scraped data in a user friendly interface to navigate the latest Magic: the Gathering tournaments. The search function allow to users to search by deck or card names, and the corresponding results connect to the tournament that they placed in. A social platform also allows users to participate in constructive discussion.

## Dependencies
* Ruby 2.2.3
* PostgreSQL

## Setup
1. After cloning the repo, navigate to the project's root directory in a terminal.
2. Using Chrome, install ChromeDriver @ https://sites.google.com/a/chromium.org/chromedriver/downloads
3. Run `bundle install`.
4. Run `bundle exec rake db:setup`.
5. Open `localhost:3000` in your browser.
