# Require the necessary libraries and models
require 'sinatra'
require 'sinatra/activerecord'
require './models/participant'

# set the path to the database configuration
# for active record
set :database_file, "database.yml"

# A before filter that is called
# before any of routes below
before do
  # Set the content type of the response body to json
  # https://www.rubydoc.info/gems/sinatra/Sinatra%2FHelpers:content_type
  content_type :json
end

# Returns all participants
get '/participants' do
  # Get all participants
  participants = Participant.all
  # Return the participants as json
  participants.to_json
end

# Creates a new participant
post "/participants" do
  # Create an instance of a new participant
  # and instantly save it to the database
  # by using .create instead of .new
  participant = Participant.create
  # return the new participant as json
  participant.to_json
end
