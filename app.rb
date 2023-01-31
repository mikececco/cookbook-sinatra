#CONTROLLER - view gets called when writing erb :view_name
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry-byebug'
require 'better_errors'
# require 'set :bind, "0.0.0.0"' server will be able to listen to external incoming requests within same network

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path(__dir__)
end

# get "/" do # The routing part is the get '/'
#   "<h1>Listening on port <em>4567</em>!</h1>" # the controller part is the blocks passed to the get - for an HTTP request at the root (/), it will return Hello world!
# end

# app.rb will act as the Router and the Controller of MVC app

# get '/' do
#   erb :index
# end

# get '/about' do
#   erb :about
# end

# get '/team/:username' do #generic URL
#   puts params[:username]
#   "The username is #{params[:username]}"
# end

# get '/team/:username' do
#   binding.pry  # <= code will stop here for HTTP request localhost:4567/team/someone
#   # [...]
# end

get '/' do
  @usernames = ['mike', 'Cecconello']
  erb :index
end
