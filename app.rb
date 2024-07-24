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
  @user_apr = params.fetch(:user_apr).to_f
  @r= @user_apr /100 /12
  @user_years = params.fetch(:user_years).to_i
  @num_periods = @user_years * 12
  @user_principal = params.fetch(:user_principal).to_f
  @payment = @r * @user_principal / (1 - (1 + @r) ** -@num_periods)

  erb(:payment_results)
end

get ("/random/new") do
  erb(:random)
end

get("/random/results") do
  @user_min = params.fetch(:user_min).to_f
  @user_max = params.fetch(:user_max).to_f
  @random_num = rand(@user_min..@user_max).to_f.round(16)

  erb(:random_results)
end
