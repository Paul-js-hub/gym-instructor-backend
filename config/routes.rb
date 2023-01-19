Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :services
      resources :reservations
      post "auth/login", to: "users#login"
    end
  end
end
