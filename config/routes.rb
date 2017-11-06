Rails.application.routes.draw do
  resources :team_members
  resources :hackathons
  devise_for :users, controllers: { registrations: 'registrations'}, :path_names => {
    :sign_up => 'signup'
  }
  resources :sessions, :only => [:new, :create, :destroy]
  resources :teams
  resources :messages

  get "profiles/new"
  resources :profiles
  resources :teams do
    member do
      get 'join'
      get 'leave'
    end
  end
  root to: "hackathons#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
