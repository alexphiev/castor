Rails.application.routes.draw do
  get 'books/index'

  root 'pages#home'
  get 'page1' => 'pages#page1'

  get 'books' => 'books#index'
  post 'books' => 'books#create'
  delete 'books' => 'books#delete_all'

  get 'books/:id' => 'books#show'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'

end
