Rails.application.routes.draw do
  root 'static_pages#show'
  get 'weather' => 'static_pages#show'
  get 'home' => 'static_pages#home'

  devise_for :users, :path => 'accounts' 

  resources :users do
  	resources :favorites
  end
end
