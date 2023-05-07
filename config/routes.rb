Rails.application.routes.draw do
  get '/users', to: 'users#get_users'
  get '/users/validate_user', to: 'users#validate_user'
  post '/users/add_user', to: 'users#add_user'
end
