Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  resources :articles
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :articles
  end 
end
