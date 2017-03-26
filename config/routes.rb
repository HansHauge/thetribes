Rails.application.routes.draw do
  resources :human_tribes
  resources :geographic_areas
  devise_for :users

  root to: "geographic_areas#index"
end
