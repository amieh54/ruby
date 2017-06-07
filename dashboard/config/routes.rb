Rails.application.routes.draw do


  root 'dojos#index'
  get 'dojos/new' => 'dojos#new'
  post 'dojos/create' => 'dojos#create'
  get 'dojos/:id' => 'dojos#show'
  get 'dojos/:id/edit' =>'dojos#edit'
  patch 'dojos/:id' => 'dojos#update'
  delete 'dojos/:id' =>'dojos#delete'

end
