Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end

  resources :items do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end


  root 'items#index'
  resources :items do
    member do
      get :done
    end
  end

  resources :users do
    member do
      get :pay
    end
  end
  
  # resources :cards , only: [:new, :index, :create, :show, :destroy]

  resources :cards, only: [:new, :show, :create, :destroy] do
    collection do
      # post 'show', to: 'cards#show'
      # post 'pay', to: 'cards#pay'
      # post 'delete', to: 'cards#delete'
    end
  end


  resources :users, only: [:show, :edit]
end