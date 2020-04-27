# P2 API
<<<<<<< HEAD
### Language: Ruby v. 2.7.0
### Framework: Sinatra
### [Get participants test url](https://codename-api-impossible.herokuapp.com/participants)
=======

# General details
- Language: Ruby v. 2.7.0
- Framework: Sinatra
- Database: Postgresql
- Public API URL: https://codename-api-impossible.herokuapp.com/

# Dependencies
- Sinatra
- Active record
- Rake
- Postgresql

# Current routes
```
 # Participants
 GET /participants #=> returns all participants
 POST /participant #=> create and returns and participant
```

# Local development
Note: This requires Ruby, Git and Postgresql on your local machine.

Execute the following commands in your terminal.
1. `$ git clone git@github.com:niiicolai/P2-API.git` to clone the rep.
2. `$ cd path/to/P2-API` to enter the directory
3. `$ bundle install` to fetch the necessary gems
4. `$ rake db:create` to create the database
5. `$ rake db:migrate` to migrate database changes
6. `$ ruby app.rb` to start the application
>>>>>>> 1845e4a8d85c4e6e02af0b9e5591717608a374a6
