Rails.application.routes.draw do

  devise_for :users
  get 'users/account'
  get 'users/profile'
  get 'users/profile_edit'
  resources :users, only: [:edit, :update]

  root to: 'rooms#index'

  resources :rooms, only: [:index, :new, :show, :create] do
    collection do
      get 'search'
      get 'own'
    end
  end

  resources :reservations, only: [:index, :create] do
    collection do
      post :confirm
    end
  end

end
