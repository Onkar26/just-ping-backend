Rails.application.routes.draw do
  get '/users', to: 'users#get_users'
  get '/users/validate_user', to: 'users#validate_user'
  post '/users/add_user', to: 'users#add_user'

  get '/messages/:from_user_id', to: 'messages#get_messages' # of specific user
  post '/messages/:from_user_id', to: 'messages#send_message' # from - to
  put '/messages/:from_user_id', to: 'messages#edit_message' 
  delete '/messages/:id', to: 'messages#delete_message'
end
