get '/' do
  erb :landing_page
end

post '/service_needed' do
  @service_needed = params[:service_needed]
  redirect '/user_location'
end

post '/user_location' do
  @user_location = params[:user_location]
  @service_needed = params[:service_needed]
  p '*' * 50
  puts "user_location: #{@user_location}"
  puts "service_needed: #{@service_needed}"
  p '*' * 50

  redirect '/map'
end

get '/user_location' do

  erb :user_location
end

get '/map' do
  erb :map
end
