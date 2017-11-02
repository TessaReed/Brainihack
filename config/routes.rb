Rails.application.routes.draw do
  devise_for :users
  resources :profiles
  resources :roles
  resources :messages
  resources :hackathons
  root to: "hackathons#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
