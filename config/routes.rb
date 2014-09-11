Rails.application.routes.draw do
  get 'home/landing_page'

  resources :categories

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users
  resources :ads
  root to: "home#landing_page"
end
