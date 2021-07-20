Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [ :create ]
  end
  resources :bookmarks, only: [ :destroy ]
end
