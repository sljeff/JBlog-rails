Rails.application.routes.draw do
  root to: 'articles#index'

  resources :articles, path: 'a', except: :index, param: :slug

  resources :categories, path: 'c', only: [:show, :create, :destroy, :update],param: :slug

  resources :tags, only: [:show, :create, :destroy], param: :slug

  get 't/:from-:to', to: 'times#show', as: 'time'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
