Rails.application.routes.draw do
  root 'welcome#index'
  resources :decathlon, only: [:index]
  resources :hepsiburada, only: [:index]
end
