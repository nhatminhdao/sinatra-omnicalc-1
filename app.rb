require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get ("/square/new") do
 erb(:square)
end

get("/square/results") do
  @the_num = params.fetch(:num_to_square)
  @the_square = @the_num.to_f ** 2

  erb(:square_results)
end

get ("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @the_num = params.fetch(:num_to_square_root)
  @the_square_root = @the_num.to_f ** 0.5

  erb(:square_root_results)
end

get ("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @user_apr = (params.fetch(:user_apr).to_f / 100).to_fs(:percentage, {:precision => 4})
  @r= @apr.to_f /12
  @user_years = params.fetch(:user_years).to_i
  @num_periods = @user_years * 12
  @user_principal = params.fetch(:user_principal).to_fs(:currency, {:precision => 2})
  @payment = @r * (@user_principal.to_f) / (1 - (1 + @r) ** @num_periods)

  erb(:payment_results)
end

# get ("/random/new") do
#   erb(:square)
# end

# get("/random/results") do
#   @the_num = params.fetch(:num_to_square)
#   @the_square = @the_num.to_f.**2

#   erb(:square_results)
# end
