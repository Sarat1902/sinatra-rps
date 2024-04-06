require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  moves = ["rock","paper","scissors"].sample

  
  " We played Rock! "
  " They played #{moves}! "
  


end
