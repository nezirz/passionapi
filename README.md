# README

Coding Challenge “Passionate Navigation”, Ruby On Rails Api for handling backend operations.

This sample of project using following dependencies:

*Ruby version  
  
    2.4.2
  
*Rails version  
  
    5.2.0.beta2

*Gems 

    gem 'devise'
    gem 'doorkeeper'
    gem 'mocha'

*Testing  

    gem 'rspec-rails'
    gem 'factory_bot'
    gem 'faker'
    gem 'shoulda-matchers'
    gem 'database_cleaner'

Project also contains seed file with sample of data provided on as json files on task instructions github profile.

So for the running project make sure that you first run:

    bundle
    rails db:migrate
    rails db:seed
    
Also please to check details about installing/configuring specific gems used here in project.

After running project with 'rails s' command, at the console with:
    
    'curl -X POST -d 'grant_type=password&email=test@test.com&password=password123' localhost:3000/oauth/token'  
you will get access_token which then can be used for running commands like:
    
    http://localhost:3000/api/v1/courses?access_token=5e09dd78701c0988a09de51f7c69c37d20303c198d508d116c7869d935dc6eb3
    
NOTE: there are 2 versions of Api V1 and V2. In version V1 there are simple return on Index action of model,
 of all Items for specific model.
 In version 2 Index action of specific model will return filtered json values for Menu.
         
V1 Verticals index action returns all items with all attributes,

V1 Category index action returns all items with all attributes,
         
V2 Verticals with Categories and Courses (Except Categories with state differ than 'active', and Courses differ than state 'active')
![alt text](https://imgur.com/Ck2WuWJ.png)

V2 Categories with Courses (Except Categories with state differ than 'active', and Courses differ than state 'active')
![alt text](https://imgur.com/Vrclp53.png)  

Also I did some small tests with Rspec which you can run with:

    bundle exec rspec
        