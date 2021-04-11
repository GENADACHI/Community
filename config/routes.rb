Rails.application.routes.draw do
  get 'members/show'
  get 'members/new'
  get 'members/edit'
  devise_for :members
root to: 'discussion#index'
resources :discussions
resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end