Rails.application.routes.draw do
  root to: "movies#home"
  resources :lists, except: [:update, :edit, :destroy] do
    resources :bookmarks, only: [ :new, :create, :destroy ]
  end
end
