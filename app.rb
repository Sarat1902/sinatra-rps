require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:tt)
end

get("/homepage") do
  erb(:homepage, {:layout => :homepage })
end

get("/rock") do
  move = ["rock","paper","scissors"]
  @moves = move.sample
  
  if @moves == "rock"
    @outcome = "we tied!"
  elsif @moves == "paper"
    @outcome = "we lost!"
  else
    @outcome = "we won!"
  end

  erb(:rock)
end


get("/paper") do
  move = ["rock","paper","scissors"]
  @moves = move.sample
  
  if @moves == "rock"
    @outcome = "we won!"
  elsif @moves == "paper"
    @outcome = "we tied!"
  else
    @outcome = "we lost!"
  end

  erb(:paper)
end

get("/scissors") do
  move = ["rock","paper","scissors"]
  @moves = move.sample
  
  if @moves == "rock"
    @outcome = "we lost!"
  elsif @moves == "paper"
    @outcome = "we won!"
  else
    @outcome = "we tied!"
  end

  erb(:scissors)
end
