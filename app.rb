require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <body>
  <div>
  <a href = https://en.wikipedia.org/wiki/Rock_paper_scissors > "wikipedia" </a>
  </div>
  "
end

get("/rock") do
  move = ["rock","paper","scissors"]
  @moves = move.sample
  
  if @moves == "rock"
    @outcome = "tied"
  elsif @moves == "paper"
    @outcome = "You Lose"
  else
    @outcome = "You Win!!"
  end

  erb(:rock)
end


get("/paper") do
  move = ["rock","paper","scissors"]
  @moves = move.sample
  
  if @moves == "rock"
    @outcome = "You Win!!"
  elsif @moves == "paper"
    @outcome = "You Tied"
  else
    @outcome = "You Lost"
  end

  erb(:paper)
end

get("/scissors") do
  move = ["rock","paper","scissors"]
  @moves = move.sample
  
  if @moves == "rock"
    @outcome = "You Lost"
  elsif @moves == "paper"
    @outcome = "You Win!!"
  else
    @outcome = "You Tied"
  end

  erb(:scissors)
end
