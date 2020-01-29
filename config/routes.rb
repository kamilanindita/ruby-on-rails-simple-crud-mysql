Rails.application.routes.draw do
  get 'buku/index'
  get 'buku/new'
  post 'buku/create'
  get 'buku/edit'
  patch 'buku/update'
  get 'buku/delete'
  root to: "buku#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
