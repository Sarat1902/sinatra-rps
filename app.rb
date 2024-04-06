require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  move = ["rock","paper","scissors"]
  moves = move.sample
  outcome = "tied"
  erb(:rock)
end
