Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users, only: [:new, :create, :show]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  namespace 'admin' do
    resources :gifs, only: [:new, :create]
    resources :categories, only: :index
  end

  resources :gifs, only: [:index]

  resources :favorites, only: [:create, :destroy]
end
