Rails.application.routes.draw do
  devise_for :users
  root  'home#index' 
  get 'home' => 'home#index'
  get 'edit' => 'edit#edit'
  get   'home/new'  =>  'home#new'
  post  'home'      =>  'home#create'
  delete  'home/:id'  => 'home#destroy'
  get   'home/:id/edit'  => 'home#edit'
  patch   'home/:id'  => 'home#update'
  get   'users/:id'   =>  'users#show'  #Mypageへのルーティング
  get 'tweets/:id' => 'tweets#show'  
end
