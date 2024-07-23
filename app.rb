require "sinatra"
require "sinatra/reloader"

get("/hello") do
erb (:hello)
end

get("/") do
  erb(:square)
end

get ("/square/new") do
 erb(:square)
end

get("/square/results") do
  @the_num = params.fetch(:num_to_square)
  @the_square = @the_num.to_f.**2

  erb(:square_results)
end

get ("/square_root/new") do
  erb(:square)
end

get("/square_root/results") do
  @the_num = params.fetch(:num_to_square)
  @the_square = @the_num.to_f.**2

  erb(:square_results)
end

# get ("/payment/new") do
#   erb(:square)
# end

# get("/payment/results") do
#   @the_num = params.fetch(:num_to_square)
#   @the_square = @the_num.to_f.**2

#   erb(:square_results)
# end

# get ("/random/new") do
#   erb(:square)
# end

# get("/random/results") do
#   @the_num = params.fetch(:num_to_square)
#   @the_square = @the_num.to_f.**2

#   erb(:square_results)
# end
