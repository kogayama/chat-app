Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
<<<<<<< HEAD
  resources :users, only: [:index, :edit, :update]
=======
  resources :users, only: [:edit, :update, :index]
>>>>>>> master
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
    namespace :api do
      resources :messages, only: :index, defaults: { format: 'json' }
    end
  end
end

