Rails.application.routes.draw do
  resources :hackathons
  resources :team_members
  devise_for :users, controllers: { registrations: 'registrations'}, :path_names => {
    :sign_up => 'signup'
  }
  resources :sessions, :only => [:new, :create, :destroy]
  resources :teams
  resources :profiles
  resources :messages
  root to: "hackathons#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
