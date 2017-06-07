Rails.application.routes.draw do
  get 'events/index'

  get 'events/new'

  get 'events/create'

    get '/' => 'users#index'

    post '/users/create' => 'users#create'

    get '/users/:id' => 'users#show'

    post '/events/create' => 'events#create'

    get '/events/:id' => 'events#show'

    get 'sessions/new' => 'sessions#new'

    post '/sessions' => 'sessions#create'
    delete '/sessions/:id' => 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
