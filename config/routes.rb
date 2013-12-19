Capicture::Application.routes.draw do
  resources :games do
    resources :boards, shallow: true
    resources :clues, shallow: true
  end

  resources :clues do
    resources :answers
  end
  
  resources :users
  resources :sessions

  root :to => 'games#index'

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
end
