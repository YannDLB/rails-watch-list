Rails.application.routes.draw do
  get '/', to: 'lists#index'
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create delete]
  end
  resources :movies, only: %i[new create]
end
