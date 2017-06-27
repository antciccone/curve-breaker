Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :dashboard, only: [:index]
    resources :student, only: [:show, :new]
    resources :teachers, only: [:index]
    resources :users, only: [:new, :create, :show]
    resources :pairing, only: [:index, :new, :create, :update, :destroy, :show]
  end

  get '/admin/current-pairings', to: 'admin/pairing#current_pairings'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :lessons, only: [:new, :create, :edit, :update]

end
