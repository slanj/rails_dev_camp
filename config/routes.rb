Rails.application.routes.draw do
  
  devise_for :users
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'rails-items', to: 'portfolios#rails', as: 'rails_show'

  resources :articles
  resources :portfolios, except: [:show]
  
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
