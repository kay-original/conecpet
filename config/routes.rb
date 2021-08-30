Rails.application.routes.draw do
  root 'home#index'
  post '/home/guest_sign_in', to: 'home#guest_sign_in'
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions'
  }
  devise_scope :user do
    get '/user/sign_up' => 'users/registration#new'
    get '/user/sign_in' => 'users/sessions#new'
    get '/users/sign_out' => 'users/sessions#destroy'
  end
  resources :users, only: [:show, :edit, :update] do
    get 'favorites'
    resource :relationships, only:[:create, :destroy]
    get 'follows' => 'relationships#followed'
    get 'followers' => 'relationships#follower'
  end
  resources :pets do
    collection do
      get 'search'
    end
    resource :comments, only: [:create]
    resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
