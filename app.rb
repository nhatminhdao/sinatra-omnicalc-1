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
 @square = @params.fetch(:square).to_f.square
end
