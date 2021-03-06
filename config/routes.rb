Rails.application.routes.draw do

  root 'plants#index'
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  resources :sessions, only:[:new, :create, :destroy]

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  get 'typeahead/:query' => 'models#typeahead'
  

  resources :users
  resources :locations
  resources :plants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
