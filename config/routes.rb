Rails.application.routes.draw do
  get '/users', to: 'users#get_users'
  get '/users/validate_user', to: 'users#validate_user'
  post '/users/add_user', to: 'users#add_user'

  get '/messages', to: 'messages#get_messages' # of specific user
  post '/messages/send_message', to: 'messages#send_message' # from - to
  put '/messages', to: 'messages#edit_message' 
  delete '/messages/:id', to: 'messages#delete_message'
end
