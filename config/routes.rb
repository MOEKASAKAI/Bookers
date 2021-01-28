Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'books#top'
  get 'index' => 'books#index'
  get 'show' => 'books#show'
  get 'top' => 'books#top'
  get 'books/:id' => 'books#show', as: 'book'
  post 'books' => 'books#create'
  resources :books
end
