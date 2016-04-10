get '/' do
  erb :landing_page
end

post '/service_needed' do
  session[:service_needed] = params[:service_needed]
  erb :user_location
end

post '/user_location' do
  # @user_location = params[:user_location]
  # @closest_index = Hospital.closest_distance([37.895662090000000, -122.409172330000000], Hospital.find_all_distances)
  # @closest_hospital = Hospital.find_by(@closest_index)
  erb :map
end

get '/test' do
  p Hospital.closest_distance([37.895662090000000, -122.409172330000000], Hospital.find_all_distances)
end


