Rails.application.routes.draw do
  root to: 'articles#index'

  resources :articles, path: 'a', except: :index

  resources :categories, path: 'c', only: [:show, :create, :destroy, :update]

  resources :tags, only: [:show, :create, :destroy]

  get 't/:from-:to', to: 'times#show', as: 'time'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
