Rails.application.routes.draw do
  resources :team_members
  resources :hackathons do
    resources :teams do
      resources :team_members
    end
  end

  resources :profiles
  devise_for :users, controllers: { registrations: 'registrations'}, :path_names => {
    :sign_up => 'signup'
  }
  resources :sessions, :only => [:new, :create, :destroy]
  resources :charges

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]
  end
  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'
  root to: "hackathons#index"
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
