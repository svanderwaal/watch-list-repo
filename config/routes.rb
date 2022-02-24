Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  get '/lists', to: 'lists#index', as: :lists
  get '/lists/new', to: 'lists#new', as: :new_list
  get '/lists/:id', to: 'lists#show', as: :list
  delete '/lists/:id', to: 'lists#destroy'
  post '/lists', to: 'lists#create'
  get '/lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: :new_bookmark
  post '/lists/:list_id/bookmarks', to: 'bookmarks#create'
  delete '/bookmarks/:id', to: 'bookmarks#destroy'
end
