Rails.application.routes.draw do
  devise_for :players
  resources :rooms
  root "rooms#index"
end
