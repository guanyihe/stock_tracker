Rails.application.routes.draw do
  #resources :user_stocks #it gives your all the route of user_stocks
  resources :user_stocks, only: [:create]

  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
end
