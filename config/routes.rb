Rails.application.routes.draw do
  resources :heros,only: [:index, :show]
  resources:powers,only: [:index]
end
