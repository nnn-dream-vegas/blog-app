Rails.application.routes.draw do
  root 'blogs#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
  resources :users,only:[:show]

end
