Rails.application.routes.draw do
  resources :team_members


resources :hackathons do
  resources :teams do
    resources :team_members
  end
end

  devise_for :users, controllers: { registrations: 'registrations'}, :path_names => {
    :sign_up => 'signup'
  }
  resources :sessions, :only => [:new, :create, :destroy]
  resources :messages
  resources :profiles
  resources :charges

  root to: "hackathons#index"

  resources :conversations, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
