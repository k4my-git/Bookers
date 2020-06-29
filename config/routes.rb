Rails.application.routes.draw do
  root to: 'books#top'
  get 'books/index', to: 'books#index', as: 'books_index'
  get 'books/show/:id', to: 'books#show', as: 'books_show'
  get 'books/:id/edit', to: 'books#edit', as: 'books_edit'
  post 'books/create', to: 'books#create', as: 'books_create'
  patch 'books/update/:id', to: 'books#update', as: 'books_update'
  put 'books/update/:id', to: 'books#update'
  delete 'books/destroy/:id', to: 'books#destroy', as: 'books_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
