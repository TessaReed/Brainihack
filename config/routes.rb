Rails.application.routes.draw do
  root to: "hackathons#index"
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
  resources :profiles
  resources :charges

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
