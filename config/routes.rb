Rails.application.routes.draw do
  root to: 'books#top'
  get 'books', to: 'books#index', as: 'books'
  get 'books/:id', to: 'books#show', as: 'book'
  get 'books/:id/edit', to: 'books#edit', as: 'edit_book'
  post 'books/create', to: 'books#create', as: 'create'
  patch 'books/:id/update', to: 'books#update', as: 'update'
  put 'books/:id/update', to: 'books#update'
  delete 'books/:id', to: 'books#destroy', as: 'destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
