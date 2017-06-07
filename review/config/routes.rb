Rails.application.routes.draw do
    get '/' => 'users#index'

    post '/users/create' => 'users#create'

    get '/users/:id' => 'users#show'

    post '/events/create'

end
