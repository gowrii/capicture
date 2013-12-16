Capicture::Application.routes.draw do
  resources :games do
    resources :boards
  end

  resources :boards do
    resources :clues
  end

  resources :clues do
    resources :answers
  end

  resources :users
  resources :sessions

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
end
