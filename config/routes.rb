Rails.application.routes.draw do
  resources :geographic_areas
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "geographic_areas#index"
end
