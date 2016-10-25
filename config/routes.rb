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
end
