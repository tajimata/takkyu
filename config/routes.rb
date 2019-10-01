Rails.application.routes.draw do
  get 'home' => 'home#index'
  get 'edit' => 'edit#edit'
end
