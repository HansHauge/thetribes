Rails.application.routes.draw do
  resources :creature_types
  resources :human_tribes
  resources :geographic_areas
  devise_for :users

  root to: "geographic_areas#index"
end
