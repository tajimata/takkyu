Rails.application.routes.draw do
  get 'home' => 'home#index'
  get 'edit' => 'edit#edit'
  get   'home/new'  =>  'home#new'
  post  'home'      =>  'home#create'
end
