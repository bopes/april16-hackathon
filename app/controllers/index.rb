get '/' do
  erb :landing_page
end

post '/service_needed' do
  session[:service_needed] = params[:service_needed]
  redirect '/user_location'
end

post '/user_location' do
  @user_location = params[:user_location]
  erb :map
end

get '/map' do
  erb :map
end
