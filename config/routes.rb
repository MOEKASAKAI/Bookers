Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'books#top'
  get 'books' => 'books#index', as: 'index_book'
  get 'books/:id' => 'books#show', as: 'book'
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books
end
