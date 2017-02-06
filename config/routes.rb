Rails.application.routes.draw do
  root 'pages#home'
  get 'page1' => 'pages#page1'

  resources :books, only: [:index, :create, :delete_all,
    :show, :update, :destroy]

  # La ligne ci-dessus remplace les lignes ci-dessous
  # get 'books' => 'books#index'
  # post 'books' => 'books#create'
  delete 'books' => 'books#delete_all'
  #
  # get 'books/:id' => 'books#show'
  # patch 'books/:id' => 'books#update'
  # delete 'books/:id' => 'books#destroy'

end
