Rails.application.routes.draw do
  root to: "static_pages#root"
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  namespace :api do
    resources :boards, only: [:index, :show, :create], defaults: {format: :json} do
      resources :lists, only: [:create], defaults: { format: :json }
    end
      resources :lists, only: [:show]
  end
end
