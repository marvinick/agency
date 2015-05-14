Rails.application.routes.draw do
  root to: "candidates#index"
  resources :candidates
  resources :skills
end
