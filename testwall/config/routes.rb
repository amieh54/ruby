Rails.application.routes.draw do

     get 'commnts/index'

     get 'commnts/new'

     get 'commnts/show'

     get 'comments/index'

     get 'comments/new'

     get 'comments/show'

     get 'users/new' => 'users#new'

     post 'users/' => 'users#newcreate'

     get 'users/:id' => 'users#show'

     get '/users/:id/messages/new' => 'users#show'

     post '/users/:user_id/messages' => 'messages#create'

     post '/users/:user_id/messages/:message_id' => 'comments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
