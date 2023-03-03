require 'sinatra'
require 'json'
require 'net/http'

# Define the URL of the articles API
ARTICLES_API_URL = 'http://10.0.0.6:5000/'

# Add a middleware that sets the Access-Control-Allow-Origin header
before do
  headers['Access-Control-Allow-Origin'] = '*'
end

set :bind, '0.0.0.0' # add this line to listen on all interfaces

# Define a route that returns 10 random articles as JSON
get '/articles' do
  # Make a GET request to the articles API and parse the response as JSON
  response = Net::HTTP.get_response(URI(ARTICLES_API_URL))
  articles = JSON.parse(response.body)

  # Shuffle the array of articles and select the first 10
  random_articles = articles.shuffle[0..9]

  # Convert the array to JSON and return it
  random_articles.to_json
end

# Start the web server
set :port, 8080
