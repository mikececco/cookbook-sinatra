require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path(__dir__)
end

get "/" do # The routing part is the get '/'
  "Listening on port 4567" # the controller part is the blocks passed to the get - for an HTTP request at the root (/), it will return Hello world!
end

# app.rb will act as the Router and the Controller of MVC app
