Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create]
  resources :lists do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]

end
