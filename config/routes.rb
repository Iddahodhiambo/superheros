Rails.application.routes.draw do
  resources :heros,only: [:index, :show]
end
