Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :new, :create]
      patch '/users/:id/follow', to: 'users#follow'
      
      resources :locations, only: [:index, :show]
      resources :events, only: [:index, :show]
      patch '/events/:id/like', to: 'events#like'
      post "/sign-in", to: "users#sign_in"
      get "/validate", to: "users#validate"
    end
  end
end
