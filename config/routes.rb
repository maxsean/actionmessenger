Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'

  namespace :api do
    namespace :v1 do
      resources :messages, only: [:create]
      resources :users, only: [:index]
    end
  end

  resources :users, only: [:index, :destroy]

  devise_for :users

  devise_scope :user do
    get "users/sign_out" => "devise/sessions#destroy"
  end

end
