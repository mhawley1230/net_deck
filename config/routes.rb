Rails.application.routes.draw do
  root 'tournaments#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :tournaments, only: [:index, :show] do
    resources :decks, only: [:index, :show]
  end

  resources :decks, only: [:index, :show] do
    resources :cards, only: [:index, :show]
  end

  resources :tournaments, only: [:index, :show] do
    resources :comments, only: [:create, :destroy]
  end

  resources :cards, only: [:show]

  resources :search, only: [:index]
end
