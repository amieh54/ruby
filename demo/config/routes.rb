Rails.application.routes.draw do
  get 'hello/index'

  # post 'hello' => 'hello#create'

  get 'routes/hello'
  get 'routes/say/hello'
  get 'routes/say/hello/michael'
  get 'routes/say/hello/joe'
  get 'routes/times'
  get 'routes/times/restart'
  get 'routes/say/index'


  root 'routes#say'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resource :products

# get "products" => "products#index"
# get "products/new" => "products#new"
# post "products" => "products#create"
# get "products/:id" => "products#show"
# get "products/:id/edit" => "products#edit"
# patch "products/:id" => "products#update"
# delete "products/:id" => "products#destroy"
end
