Rails.application.routes.draw do
  get 'home/landing_page'

  resources :categories

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users do
	resources :ads
  end
  devise_for :users
  devise_scope :user do
	root to: "devise/sessions#new"
  end
end
