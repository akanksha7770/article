Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'articles#index'
  resources :articles
  resources :blogs
	  resources :articles do
	  resources :comments
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
