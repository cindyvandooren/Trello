Rails.application.routes.draw do
  root to: "sessions#new"
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  namespace :api do
    resources :boards, only: [:index, :show, :create], defaults: {format: :json}
  end
end
