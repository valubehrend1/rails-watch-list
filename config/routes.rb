Rails.application.routes.draw do
  resources :lists, except: [:update, :edit, :destroy] do
    resources :bookmarks, only: [ :new, :create, :destroy ]
  end
end
