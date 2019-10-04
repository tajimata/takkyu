Rails.application.routes.draw do
  devise_for :users
  root  'home#index' 
  get 'home' => 'home#index'
  get 'edit' => 'edit#edit'
  get   'home/new'  =>  'home#new'
  post  'home'      =>  'home#create'
end
