# Require the necessary libraries and models
require 'sinatra'
require 'sinatra/activerecord'
require './models/participant'
require './models/completed_activity'
require './models/failed_activity'
require './models/interaction'
require './models/rating'

require 'rack'
require 'rack/contrib'
# set the path to the database configuration
# for active record
use Rack::JSONBodyParser
set :database_file, "database.yml"

# A before filter that is called
# before any of routes below
before do
  # Set the content type of the response body to json
  # https://www.rubydoc.info/gems/sinatra/Sinatra%2FHelpers:content_type
  content_type :json
end

# Just for example
# Returns all participants
# get '/participants' do
  # Get all participants
  # participants = Participant.all
  # Return the participants as json
  # participants.to_json
# end

# Creates a new participant
post "/participant" do
  # Create an instance of a new participant
  # and instantly save it to the database
  # by using .create instead of .new
  participant = Participant.create

  # return the new participant as json
  participant.to_json
end

post "/failed_activity" do
  participant = Participant.find(params["id"])
  participant.failed_activities.create(activity_id: params["activity_id"])

  {message: "OK"}.to_json
end

post "/completed_activity" do
  participant = Participant.find(params["id"])
  participant.completed_activities.create(activity_id: params["activity_id"])

  {message: "OK"}.to_json
end

post "/interaction" do
  participant = Participant.find(params["id"])
  interaction = participant.interactions.create(
    date_created: params["dateCreated"],
    method: params["method"],
    message: params["message"]
  )

  {message: "OK"}.to_json
end

post "/ratings" do
  participant = Participant.find(params[:id])
  params["ratings"].each do |r|
    participant.ratings.create(
      date_created: r["dateCreated"],
      question: r["question"],
      rate: r["rate"]
    )
  end

  {message: "OK"}.to_json
end
