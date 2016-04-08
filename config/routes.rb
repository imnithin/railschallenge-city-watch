Rails.application.routes.draw do
  namespace :api do
    resources :emergencies, only: [:create, :show, :new]
  end
end
