Rails.application.routes.draw do
  devise_for :members
root to: 'discussions#index'
resources :discussions
resources :menbers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end