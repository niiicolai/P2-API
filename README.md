# P2 API

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
 POST /participant #=> create participant and returns participant id
 POST /failed_activity #=> add failed activity to participant
 POST /completed_activity #=> add completed activity to participant
 POST /interaction #=> add interaction to participant
 POST /rating #=> add rating to participant
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

