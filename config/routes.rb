Rails.application.routes.draw do
  # Custom routing
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # end of custom route

  get 'about-me', to: 'pages#about' # custom route
  get 'contact', to: 'pages#contact' # custom route

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
