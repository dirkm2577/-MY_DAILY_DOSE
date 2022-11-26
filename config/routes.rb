Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :supplements do
    resources :reviews, only: [:new, :create, :edit, :update]
  end
  resources :reviews, only: [:destroy]
end
