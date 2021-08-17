Rails.application.routes.draw do
  resources :records, only: [:index, :create]
  root "records#index"
end
