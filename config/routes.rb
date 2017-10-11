Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  # resources :items
  resources :items do
  	resources :acquiretimes
  end
  # resources :acquiretimes
  resources :itemdetails, only: :show
  # get '/items/:id' => 'itemdetails#show'
end
 