Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :users, only: [:new, :create, :show]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  namespace 'admin' do
    resources :gifs, only: [:new, :create]
  end

  resources :gifs, only: :index
end
