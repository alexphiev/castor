Rails.application.routes.draw do
  root 'pages#home'
  get 'page1' => 'pages#page1'
  #get 'home' => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
