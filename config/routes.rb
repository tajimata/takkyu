Rails.application.routes.draw do
  devise_for :users
  root  'home#index' 

  resources :home                     #home_controllerに対してのresourcesメソッド
  resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
end
