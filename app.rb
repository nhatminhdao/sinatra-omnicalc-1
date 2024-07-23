require "sinatra"
require "sinatra/reloader"

get("/hello") do
erb (:hello)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get ("/square/new") do
 erb(:square)
end

get("/square/results") do
  @the_num = params.fetch(:num_to_square)
  @the_square = @the_num.to_f.**2

  erb(:square_results)
end
