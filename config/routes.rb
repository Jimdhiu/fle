Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :documents, only: [:index, :new, :create, :show, :edit, :update, :destroy ]

  resources :procedure_requests, only: [:index, :update, :show, :destroy]

  namespace :pro do
    resources :procedure_requests
  end

  get "/download/:id", to: "documents#download", as: "download"

end
