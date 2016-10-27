Rails.application.routes.draw do
  root 'tournaments#index'

  resources :tournaments, only: [:index, :show] do
    resources :decks, only: [:index, :show]
  end

  resources :decks, only: [:index, :show] do
    resources :cards, only: [:index, :show]
  end

  resources :search, only: [:index]
end
