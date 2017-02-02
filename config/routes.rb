Rails.application.routes.draw do
  get 'books/index'

  root 'pages#home'
  get 'page1' => 'pages#page1'

  get 'books' => 'books#index'
  post 'books' => 'books#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
