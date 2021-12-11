Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  resources :books
  get 'books' => 'books#index'
  # get 'books/:id' => 'books#show', as: book
  # get 'books/:id/edit' => 'books#edit', as: edit_book

end
