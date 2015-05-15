Rails.application.routes.draw do
  root to: "candidates#index"
  resources :candidates
  resources :skills

  namespace :api do
    namespace :v1 do
      resources :candidates, only: [:index, :show, :create]
    end
  end
end
