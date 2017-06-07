Rails.application.routes.draw do
  get 'comments/new'

  get 'signups/destroy'

    get 'events/index'

    get 'events/new'

    get 'events/create'

      get '/' => 'users#index'

      post '/users/create' => 'users#create'

      get '/users/:id' => 'users#show'

      get '/users/:id/edit' => 'users#edit'

      post '/users/:id/update' => 'users#update'

      post '/events/create' => 'events#create'

      get '/events/:id' => 'events#show'

      get '/events/:id/join' => 'events#join'

      get '/events/:id/edit' => 'events#edit'

      get '/events/:id/update' =>'events#update'



      delete '/events/:id' => 'events#destroy'

      get 'sessions/new' => 'sessions#new'

      post '/sessions' => 'sessions#create'
      delete '/sessions/:id' => 'sessions#destroy'

      delete '/signups/:event_id/delete' => 'signups#destroy'

      post '/comments/:event_id/new' => 'comments#new'

end
