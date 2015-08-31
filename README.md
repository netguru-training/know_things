# Know Things
================================

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/netguru-training/know_things?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://travis-ci.org/netguru-training/know_things.svg)](https://travis-ci.org/netguru-training/know_things)

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://know-things.herokuapp.com/)

## :hash: Description
Do you have problem with your newly purchased product? Do you want to know more about your new TV, smartphone or chair? If yes then this application is for you! You can create a account, add product that you have and ask a questions about them. Other users will help you but also you can help others by answering a questions about the products that you own. This way you will help others and other people will help you.

## :closed_lock_with_key: Technology

| Name |  Version |
| :--: | :---: |
| [Ruby](https://www.ruby-lang.org) | 2.2.2 |
| [Ruby on Rails](http://www.rubyonrails.org/) | 4.2.4 |
| [PostgreSQL](http://www.postgresql.org/) | 9.4.1 |
| [Bootstrap](https://github.com/twbs/bootstrap-sass) | 3.3.5 |

## :book: Setup
* Copy files and provide your data:
`cp database.yml.sample database.yml`
* Prepare database:
`rake db:setup`
* Download categories of products:
`rake allegro:fetch_categories`.
If you have problems with getting categories of products please use this [helpful link](http://allegro.pl/myaccount/webapi.php/generateNewKey).

## :dart: Heroku
Link to our application on heroku is in the top of the page. You can check our features by signing in as a test user using this data:
* Email: `user@user.com`
* Password: `useruser`

## :bookmark: Travis

This application is integrated with Travis CI and it will automatically upload changes to heroku. Also before you push your changes to github please run `bundle exec rspec` to check if tests are passing.
