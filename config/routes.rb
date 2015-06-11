Rails.application.routes.draw do

  get 'all_users', to: 'users_interface#index'

  get '/profile/:id', to: 'users_interface#show', as: 'profile'

  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'

  devise_for :users
end
