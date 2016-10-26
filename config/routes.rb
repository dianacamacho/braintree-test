Rails.application.routes.draw do
  devise_for :users
  root 'jerseys#index'
  resources :jerseys
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
