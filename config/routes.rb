Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :emergencies, only: [:create, :show]
    end
  end
end
