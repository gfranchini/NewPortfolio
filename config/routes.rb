Rails.application.routes.draw do
  resources :portfolios

  get 'about-me', to: 'pages#about' # custom route
  get 'contact', to: 'pages#contact' # custom route

  resources :blogs

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
