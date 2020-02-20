Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get 'pages/home'

  devise_scope :admin do
    get "admin", to: "admin/pages#dashboard", as: :admin_root
    get "/admin/searches", to: "admin/searches#search", as: :admin_search     
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  namespace :admin do
    resources :posts
    resources :categories
  end
  get 'about' => "pages#about" , as: 'about'

  get 'login' => "users#login"

  get 'index' => "numbers#index"

  resources :articles 
  
  resources :posts do
  	resources :comments
  end
end
