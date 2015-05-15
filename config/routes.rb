Rails.application.routes.draw do

  resources :candidates
  resources :skills
  root to: "candidates#index"
  namespace :api do
    namespace :v1 do
      resources :candidates, only: [:index, :show, :create]
    end
  end
end
