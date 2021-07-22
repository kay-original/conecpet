Rails.application.routes.draw do
  root 'home#index'
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
  resources :users, only: [:show, :edit, :update]
  resources :pets do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
