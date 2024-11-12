Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  get "dashboard", to: "dashboard#index"

  resources :boards do
    resources :lists
  end

  namespace :api do
    resources :boards do
      resources :lists, only: :index, controller: "lists"
    end
  end
end
