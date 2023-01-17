Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :services
      resources :reservations
    end
  end

end
