Rails.application.routes.draw do

    # get "users/new"
    #
    # post "users" => "users#create"
    #
    # get 'users/:id' => 'users#show'
    #
    # get 'users/edit'
    #
    # get 'users/update'
    #
    # get 'users/destroy'

  get 'routes' => 'routes#say'


  get 'routes/say/hello' => 'routes#sayhello'

  get 'routes/say/hello/joe' => 'routes#sayhellojoe'

  get 'routes/say/hello/michael' => 'routes#sayhellomichael'

  get 'routes/say'

  get 'times' => 'routes#times'

  get 'times/restart' => 'routes#restart'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
