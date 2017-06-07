Rails.application.routes.draw do
  get '/likes' => 'likes#create'

  delete 'likes/:id' => 'likes#destroy'

  get 'secrets/index'
   get 'users/new' => 'users#new'

   post '/users/create' => 'users#create'
   get '/users/home' => 'users#home'

   get 'users/all' => 'users#all'

   patch '/users/:id' => 'users#update'

   get '/users/:id/edit' => 'users#edit'


   get 'users/edit' => 'users#edit'

   get 'users/:id' => 'users#show'


   delete 'users/:id' => 'users#destroy'
   post 'users/delete' => 'users#delete'

   get 'sessions/new' => 'sessions#new'

   post '/sessions' => 'sessions#create'
   delete '/sessions/:id' => 'sessions#destroy'

   get '/secrets/:user_id' => 'secrets#show'
   post '/secrets' => 'secrets#create'

   delete 'secrets/:id' => 'secrets#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
