Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update]
      resources :items, only: :index
      resources :categories, only: :index
      resources :orders, only: [:create, :user_order]

      post "/login", to: "authentication#login"
      get "/login", to: "authentication#user"
    end
  end
end
