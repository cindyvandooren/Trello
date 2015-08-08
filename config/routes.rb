Rails.application.routes.draw do
  root to: "static_pages#root"
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: {format: :json} do
    resources :boards, only: [:index, :show, :create]  do
      # resources :lists, only: [:create], defaults: { format: :json }
    end
    resources :lists, only: [:create, :show]
  end
end

# post "api/boards/:board_id/lists"
