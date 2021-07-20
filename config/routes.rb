Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:index, :new, :create, :show, :destroy] do
    resources :bookmarks, only: [ :create ]
  end
  resources :bookmarks, only: [ :destroy ]
end
