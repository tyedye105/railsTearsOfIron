Rails.application.routes.draw do
  devise_for :players
  resources :rooms
  root "characters#index"
  resources :characters
  resources :tiles
  resources :characters do
    resources :items
    end
    resources :search, controller: 'rooms', :only=>'show'
    resources :door, except: [:index, :destroy, :new, :create]
    resources :sentries
end
