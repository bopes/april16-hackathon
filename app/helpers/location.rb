def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end

def save_location(user_location)
  UserLocation.destroy_all
  UserLocation.create(location: user_location)
end
