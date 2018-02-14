Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users, only: [:new, :create, :show]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  namespace 'admin' do
    resources :gifs, only: [:new, :create]
    resources :categories, only: [:index, :destroy]
  end

  resources :gifs, only: [:index, :update]

  resources :favorites, only: [:create, :destroy]
end
