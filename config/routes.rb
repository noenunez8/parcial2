Rails.application.routes.draw do
  resources :guards
  resources :appointments
  resources :workers
  resources :worker_types
  resources :medical_center_officials
  resources :medical_center_types
  resources :medical_centers
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "appointments#index"
end
