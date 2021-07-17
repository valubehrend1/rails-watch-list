Rails.application.routes.draw do
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [ :new, :create, :destroy ]
  end
end
