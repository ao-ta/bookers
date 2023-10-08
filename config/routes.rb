Rails.application.routes.draw do
  get 'books/new' => 'books#new'
  get 'books/index' => 'books#index'
  get 'books/show' => 'books#show'
  get 'books/edit' => 'books#edit'
  post 'books' => 'books#create'
  get '/' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
