Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'documents#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :documents, only: [:new, :create, :show, :edit, :update, :destroy ]

  resources :procedure_requests, only: [:index, :show, :destroy]

  namespace :pro do
    resources :procedure_requests
  end

  get "/download/:id", to: "documents#download", as: "download"

end
