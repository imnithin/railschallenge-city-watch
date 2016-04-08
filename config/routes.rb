Rails.application.routes.draw do
  resources :emergencies, only: [:create, :new, :edit, :destroy]
end
